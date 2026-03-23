import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';

@singleton
class DailyActivitiesBloc
    extends Bloc<DailyActivitiesEvent, DailyActivitiesState> {
  DailyActivitiesBloc(this._repository)
      : super(DailyActivitiesState.initial()) {
    on<DailyActivitiesLoadRequested>(_onLoadRequested);
    on<DailyActivitiesLoadFailed>(_onLoadFailed);
    on<DailyActivitiesQuestionSelected>(_onQuestionSelected);
    on<DailyActivitiesOptionSelected>(_onOptionSelected);
    on<DailyActivitiesSubmitAnswerRequested>(_onSubmitAnswerRequested);
    on<DailyActivitiesSuccessDismissed>(_onSuccessDismissed);
    on<DailyActivitiesDetailClosed>(_onDetailClosed);
  }

  final DailyActivitiesRepository _repository;

  Future<void> _onLoadRequested(
    DailyActivitiesLoadRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        listStatus: DailyActivitiesListStatus.loading,
        listError: null,
      ),
    );
    final result = await _repository.getTodayQuestions();
    result.fold(
      (e) => emit(
        state.copyWith(
          listStatus: DailyActivitiesListStatus.error,
          listError: e.toString(),
        ),
      ),
      (questions) => emit(
        state.copyWith(
          listStatus: DailyActivitiesListStatus.success,
          questions: questions,
        ),
      ),
    );
  }

  void _onLoadFailed(
    DailyActivitiesLoadFailed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(
      state.copyWith(
        listStatus: DailyActivitiesListStatus.error,
        listError: event.error,
      ),
    );
  }

  void _onQuestionSelected(
    DailyActivitiesQuestionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(
      state.copyWith(
        activeQuestion: event.question,
        selectedOptionId: null,
        submitStatus: DailyActivitiesSubmitStatus.idle,
        submitError: null,
        lastSubmitResult: null,
        showSuccessDialog: false,
      ),
    );
  }

  void _onOptionSelected(
    DailyActivitiesOptionSelected event,
    Emitter<DailyActivitiesState> emit,
  ) {
    emit(state.copyWith(selectedOptionId: event.optionId, submitError: null));
  }

  Future<void> _onSubmitAnswerRequested(
    DailyActivitiesSubmitAnswerRequested event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    final q = state.activeQuestion;
    final optionId = state.selectedOptionId;
    if (q == null || optionId == null || optionId.isEmpty) {
      emit(
        state.copyWith(
          submitStatus: DailyActivitiesSubmitStatus.error,
          submitError: 'Lütfen bir seçim yapınız.',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        submitStatus: DailyActivitiesSubmitStatus.submitting,
        submitError: null,
      ),
    );

    final result = await _repository.submitAnswer(
      questionId: q.id,
      optionId: optionId,
    );

    result.fold(
      (e) => emit(
        state.copyWith(
          submitStatus: DailyActivitiesSubmitStatus.error,
          submitError: e.toString(),
        ),
      ),
      (answer) {
        emit(
          state.copyWith(
            submitStatus: DailyActivitiesSubmitStatus.success,
            lastSubmitResult: answer,
            showSuccessDialog: true,
          ),
        );
        // Backend bir sonraki soruyu döndürüyorsa:
        // answer.nextQuestion != null → questionSelected veya state’e göm
      },
    );
  }

  Future<void> _onSuccessDismissed(
    DailyActivitiesSuccessDismissed event,
    Emitter<DailyActivitiesState> emit,
  ) async {
    emit(
      state.copyWith(
        activeQuestion: null,
        selectedOptionId: null,
        submitStatus: DailyActivitiesSubmitStatus.idle,
        lastSubmitResult: null,
        showSuccessDialog: false,
        submitError: null,
      ),
    );
    add(const DailyActivitiesEvent.loadRequested());
  }

  void _onDetailClosed(
    DailyActivitiesDetailClosed event,
    Emitter<DailyActivitiesState> emit,
  ) {
    if (state.submitStatus == DailyActivitiesSubmitStatus.submitting) return;
    emit(
      state.copyWith(
        activeQuestion: null,
        selectedOptionId: null,
        submitStatus: DailyActivitiesSubmitStatus.idle,
        submitError: null,
      ),
    );
  }
}
