import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/usecases/get_calendar_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/get_previous_answers_usecase.dart';
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart';
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart';

@injectable
class DailyActivitiesBloc
    extends Bloc<DailyActivitiesEvent, DailyActivitiesState> {
  DailyActivitiesBloc(
    this._getTodayQuestionsUsecase,
    this._getPendingStatusUsecase,
    this._getCalendarUsecase,
    this._postAnswerUsecase,
    this._checkSessionUseCase,
    this._getPreviousAnswersUsecase,
  ) : super(DailyActivitiesState.initial()) {
    on<DailyActivitiesLoadRequested>(_onLoadRequested);
    on<DailyActivitiesQuestionSelected>(_onQuestionSelected);
    on<DailyActivitiesOptionSelected>(_onOptionSelected);
    on<DailyActivitiesPostAnswerRequested>(_onPostAnswerRequested);
    on<DailyActivitiesSuccessDismissed>(_onSuccessDismissed);
    on<DailyActivitiesDetailClosed>(_onDetailClosed);
  }

  final GetTodayQuestionsUsecase _getTodayQuestionsUsecase;
  final GetPendingStatusUsecase _getPendingStatusUsecase;
  final GetCalendarUsecase _getCalendarUsecase;
  final PostAnswerUsecase _postAnswerUsecase;
  final CheckSessionUseCase _checkSessionUseCase;
  final GetPreviousAnswersUsecase _getPreviousAnswersUsecase;

  Future<void> _onLoadRequested(
    DailyActivitiesLoadRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.loading,
        screenError: null,
      ),
    );

    final pendingResult = await _getPendingStatusUsecase();
    final pending = pendingResult.fold<DailyPendingEntity?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.failure,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (p) => p,
    );
    if (pending == null) return;

    final questionsResult = await _getTodayQuestionsUsecase();
    final questions = questionsResult.fold<List<DailyQuestionEntity>?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.failure,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (q) => q,
    );
    if (questions == null) return;

    final now = DateTime.now();
    final calendarResult = await _getCalendarUsecase(
      year: now.year,
      month: now.month,
    );
    final calendar = calendarResult.fold<DailyCalendarEntity?>(
      (e) {
        emit(
          state.copyWith(
            screenStatus: DailyActivitiesScreenStatus.failure,
            screenError: e.toString(),
          ),
        );
        return null;
      },
      (c) => c,
    );
    if (calendar == null) return;

    final prevResult = await _getPreviousAnswersUsecase();
    final prevAnswers = prevResult.fold<List<DailyPreviousAnswersByDateEntity>>(
      (_) => const [],
      (a) => a,
    );

    emit(
      state.copyWith(
        screenStatus: DailyActivitiesScreenStatus.success,
        questions: questions,
        pending: pending,
        historyItems: calendar.items,
        totalScore: calendar.totalScore,
        previousAnswers: prevAnswers,
      ),
    );
  }

  // questionSelected → ilk adımı başlat
  void _onQuestionSelected(
    DailyActivitiesQuestionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(state.copyWith(
      branchPath: [BranchStep(question: event.question)],
      postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
      postAnswerError: null,
      lastPostAnswerResult: null,
      showSuccessDialog: false,
    ));
  }

  // optionSelected → aktif adıma seçimi yaz.
  // Eğer seçilen option'ın nextQuestionId'si varsa, o soruyu questions
  // listesinden bulup anında branchPath'e ekle (API beklemeden).
  void _onOptionSelected(
    DailyActivitiesOptionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    final path = [...state.branchPath];
    if (path.isEmpty) return;

    final last = path.last;
    final option = last.question.options.firstWhere(
      (o) => o.id == event.optionId,
      orElse: () => throw StateError('option not found'),
    );

    // Aktif adımı seçimle güncelle
    path[path.length - 1] = last.copyWithOption(option);

    // nextQuestionId varsa → soruyu questions listesinden bul ve yeni adım ekle
    final nextId = option.nextQuestionId;
    if (nextId != null && nextId.isNotEmpty) {
      try {
        final nextQuestion = state.questions.firstWhere((q) => q.id == nextId);
        // Eğer bu soru zaten path'te yoksa ekle (tekrar seçim durumunu önle)
        final alreadyInPath = path.any((s) => s.question.id == nextId);
        if (!alreadyInPath) {
          path.add(BranchStep(question: nextQuestion));
        }
      } catch (_) {
        // nextQuestion questions listesinde bulunamazsa sessizce geç
      }
    }

    emit(state.copyWith(branchPath: path, postAnswerError: null));
  }

  // postAnswerRequested → branchPath'teki tüm cevaplanmış adımları sırayla POST et.
  Future<void> _onPostAnswerRequested(
    DailyActivitiesPostAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    // Cevaplanmış adımları al (selectedOption != null olanlar)
    final answeredSteps = state.branchPath.where((s) => s.isAnswered).toList();

    if (answeredSteps.isEmpty) {
      emit(state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
        postAnswerError: 'Lütfen bir seçim yapınız.',
      ));
      return;
    }

    // Son adımda seçim yapılmamışsa (aktif dropdown boş)
    final lastStep = state.branchPath.last;
    if (!lastStep.isAnswered) {
      emit(state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
        postAnswerError: 'Lütfen tüm soruları cevaplayınız.',
      ));
      return;
    }

    final sessionResult = await _checkSessionUseCase();
    final userId = sessionResult.fold<String?>(
      (_) => null,
      (u) => u?.id,
    );
    if (userId == null || userId.isEmpty) {
      emit(state.copyWith(
        postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
        postAnswerError: 'Oturum bulunamadı.',
      ));
      return;
    }

    final solvedAt = Map<String, DateTime>.from(state.questionSolvedAt);

    emit(state.copyWith(
      postAnswerStatus: DailyActivitiesPostAnswerStatus.submitting,
      postAnswerError: null,
    ));

    DailyAnswerResultEntity? lastAnswer;

    // Tüm cevaplanmış adımları sırayla POST et
    for (final step in answeredSteps) {
      solvedAt[step.question.id] = DateTime.now();

      final result = await _postAnswerUsecase(
        questionId: step.question.id,
        selectedOptionId: step.selectedOption!.id,
        userId: userId,
      );

      bool failed = false;
      result.fold(
        (e) {
          emit(state.copyWith(
            postAnswerStatus: DailyActivitiesPostAnswerStatus.error,
            postAnswerError: e.toString(),
            questionSolvedAt: solvedAt,
          ));
          failed = true;
        },
        (answer) {
          lastAnswer = answer;
        },
      );

      if (failed) return;
    }

    final answer = lastAnswer!;
    final rootQuestion = answeredSteps.first.question;

    emit(state.copyWith(
      postAnswerStatus: DailyActivitiesPostAnswerStatus.success,
      showSuccessDialog: true,
      lastPostAnswerResult: answer,
      questionSolvedAt: solvedAt,
      answeredQuestionStubs: [...state.answeredQuestionStubs, rootQuestion],
    ));
  }

  Future<void> _onSuccessDismissed(
    DailyActivitiesSuccessDismissed event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        branchPath: [],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        lastPostAnswerResult: null,
        showSuccessDialog: false,
        postAnswerError: null,
      ),
    );
    add(const DailyActivitiesEvent.loadRequested());
  }

  void _onDetailClosed(
    DailyActivitiesDetailClosed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    if (state.postAnswerStatus == DailyActivitiesPostAnswerStatus.submitting) {
      return;
    }
    emit(
      state.copyWith(
        branchPath: [],
        postAnswerStatus: DailyActivitiesPostAnswerStatus.idle,
        postAnswerError: null,
      ),
    );
  }
}
