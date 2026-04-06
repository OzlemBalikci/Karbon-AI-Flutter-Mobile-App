import 'package:karbon/features/dailyactivites/data/models/daily_activities_dtos.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: DailyActivitiesRemote)
class DailyActivitiesRemoteImpl implements DailyActivitiesRemote {
  DailyActivitiesRemoteImpl(this._dio);

  final Dio _dio;

  static const _v1 = '/api/v1/daily-activities';

  bool get _useMocks => ApiConfig.baseUrl.isEmpty;

  @override
  Future<List<DailyQuestionEntity>> getTodayQuestions() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      return _mockTodayQuestions.map((q) => q).toList();
    }
    final res = await _dio.get<dynamic>('$_v1/questions');
    final raw = unwrapDataList(res.data);
    return raw
        .map((e) =>
            DailyQuestionDto.fromJson(e as Map<String, dynamic>).toEntity())
        .toList();
  }

  @override
  Future<DailyPendingEntity> getPendingStatus() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockPending;
    }
    final res = await _dio.get<dynamic>(
      _v1,
      queryParameters: <String, dynamic>{'status': 'pending'},
    );
    final data = unwrapDataMap(res.data);
    return DailyPendingDto.fromJson(data).toEntity();
  }

  @override
  Future<List<DailyPreviousAnswersByDateEntity>> getPreviousAnswers() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockPreviousAnswers;
    }
    final res = await _dio.get<dynamic>('$_v1/previous-answers');
    final raw = unwrapDataList(res.data);
    return raw
        .map((e) => DailyPreviousAnswersByDateDto.fromJson(
              e as Map<String, dynamic>,
            ).toEntity())
        .toList();
  }

  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  }) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockCalendar;
    }
    final res = await _dio.get<dynamic>(
      '$_v1/calendar',
      queryParameters: <String, dynamic>{
        'year': year,
        if (month != null) 'month': month,
        if (period != null) 'period': period,
      },
    );
    final data = unwrapDataMap(res.data);
    return DailyCalendarResponseDto.fromJson(data).toEntity();
  }

  @override
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  }) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockMonthly;
    }
    final res = await _dio.get<dynamic>(
      '$_v1/monthly',
      queryParameters: <String, dynamic>{
        'year': year,
        'month': month,
        'period': period,
      },
    );
    final data = unwrapDataMap(res.data);
    return DailyMonthlyActivitiesDto.fromJson(data).toEntity();
  }

  @override
  Future<DailyAnswerResultEntity> postAnswer({
    required String questionId,
    required String selectedOptionId,
    required String userId,
  }) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      return _mockPostAnswer(
        questionId: questionId,
        selectedOptionId: selectedOptionId,
      );
    }
    final res = await _dio.post<dynamic>(
      '$_v1/answers',
      data: <String, dynamic>{
        'questionId': questionId,
        'selectedOptionId': selectedOptionId,
        'userId': userId,
      },
    );
    final data = unwrapDataMap(res.data);
    return DailyPostAnswerResponseDto.fromJson(data).toEntity();
  }

  @override
  Future<DailyDayDetailEntity> getDetails({required String date}) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockDayDetail;
    }
    final res = await _dio.get<dynamic>(
      _v1,
      queryParameters: <String, dynamic>{'date': date},
    );
    final data = unwrapDataMap(res.data);
    return DailyDayDetailDto.fromJson(data).toEntity();
  }

  static DailyAnswerResultEntity _mockPostAnswer({
    required String questionId,
    required String selectedOptionId,
  }) {
    final byId = allMockQuestionsById;
    final question = byId[questionId];
    if (question == null) {
      return const DailyAnswerResultEntity(
        totalCarbonScore: 0,
        isFlowCompleted: true,
        nextQuestion: null,
      );
    }
    DailyQuestionOptionEntity? selected;
    for (final o in question.options) {
      if (o.id == selectedOptionId) {
        selected = o;
        break;
      }
    }
    if (selected == null) {
      return const DailyAnswerResultEntity(
        totalCarbonScore: 0,
        isFlowCompleted: true,
        nextQuestion: null,
      );
    }
    final nextId = selected.nextQuestionId;
    final next = (nextId != null && nextId.isNotEmpty) ? byId[nextId] : null;
    return DailyAnswerResultEntity(
      totalCarbonScore: selected.carbonValue,
      isFlowCompleted: next == null,
      nextQuestion: next,
    );
  }

  static const _mockPending = DailyPendingEntity(
    hasPending: true,
    pendingCount: 1,
  );

  static const _mockCalendar = DailyCalendarEntity(
    totalScore: 120.5,
    items: [
      DailyCalendarItemEntity(date: '2026-03-10', score: 4.5, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-09', score: 2.0, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-08', score: 7.0, hasDetails: true),
    ],
  );

  static const _mockPreviousAnswers = <DailyPreviousAnswersByDateEntity>[
    DailyPreviousAnswersByDateEntity(
      date: '2026-03-10T00:00:00Z',
      answers: [
        DailyPreviousAnswerItemEntity(
          questionText: 'Örnek soru',
          answerText: 'Toplu Ulaşım',
          score: 25,
          date: '2026-03-10T08:30:00Z',
        ),
      ],
    ),
  ];

  static const _mockMonthly = DailyMonthlyActivitiesEntity(
    totalMonthlyScore: 670,
    totalPeriodScore: 335,
    dailyScores: [
      DailyMonthlyDayScoreEntity(
        date: '2026-03-01T00:00:00Z',
        totalScore: 13,
      ),
      DailyMonthlyDayScoreEntity(
        date: '2026-03-04T00:00:00Z',
        totalScore: 83,
      ),
    ],
  );

  static const _mockDayDetail = DailyDayDetailEntity(
    date: '2026-03-10T00:00:00Z',
    totalScore: 15,
    activities: [
      DailyDayActivityEntity(
        questionText: 'Örnek soru',
        selectedOptionText: 'Toplu Ulaşım',
        score: 25,
        activityDate: '2026-03-10T08:30:00Z',
      ),
    ],
  );

  static final List<DailyQuestionEntity> _mockTodayQuestions = [
    DailyQuestionEntity(
      id: 'q1-mock',
      text: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
      displayOrder: 1,
      options: [
        DailyQuestionOptionEntity(
          id: 'q1-o1',
          text: 'Araba',
          carbonValue: 4.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2',
          text: 'Toplu taşıma',
          carbonValue: 2.0,
          nextQuestionId: 'q1-option2-mock',
        ),
      ],
      remainingSeconds: 57600,
    ),
    DailyQuestionEntity(
      id: 'q1-option2-mock',
      text: 'Kullandığınız ulaşım aracını seçiniz.',
      displayOrder: 2,
      options: [
        DailyQuestionOptionEntity(
          id: 'q1-o2-o1',
          text: 'Otobüs',
          carbonValue: 1.5,
          nextQuestionId: 'q1-option2-option1-mock',
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2-o2',
          text: 'Metro',
          carbonValue: 3.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2-o3',
          text: 'Bisiklet',
          carbonValue: 4.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2-o4',
          text: 'Vapur',
          carbonValue: 2.5,
          nextQuestionId: null,
        ),
      ],
      remainingSeconds: 57580,
    ),
    DailyQuestionEntity(
      id: 'q1-option2-option1-mock',
      text: 'Sefer Sayısı',
      displayOrder: 2,
      options: [
        DailyQuestionOptionEntity(
          id: 'q1-o2-o1-o1',
          text: '1 Sefer',
          carbonValue: 4.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2-o1-o2',
          text: '2 Sefer',
          carbonValue: 3.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'q1-o2-o1-o3',
          text: '3 Sefer',
          carbonValue: 2.5,
          nextQuestionId: null,
        ),
      ],
      remainingSeconds: 57000,
    ),
    DailyQuestionEntity(
      id: 'q2-mock',
      text: 'Günlük kahve tüketiminiz ne kadar?',
      displayOrder: 2,
      options: [
        DailyQuestionOptionEntity(
          id: 'o3',
          text: '0',
          carbonValue: 0,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'o4',
          text: '1–2',
          carbonValue: 3.0,
          nextQuestionId: null,
        ),
      ],
      remainingSeconds: 50000,
    ),
  ];

  static Map<String, DailyQuestionEntity> get allMockQuestionsById =>
      {for (final q in _mockTodayQuestions) q.id: q};
}
