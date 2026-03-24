import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activity_answer_result_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_option.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_pending_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_item_entity.dart';

abstract class DailyActivitiesRemote {
  Future<List<DailyQuestionEntity>> getTodayQuestions();

  Future<DailyActivityAnswerResultEntity> submitAnswer({
    required String questionId,
    required String optionId,
  });

  Future<DailyPendingEntity> getPendingStatus();
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  });
}

@LazySingleton(as: DailyActivitiesRemote)
class DailyActivitiesRemoteImpl implements DailyActivitiesRemote {
  DailyActivitiesRemoteImpl(this._dio);
  final Dio _dio;

  static const _pathQuestions = '/daily-activities/questions';
  static const _pathAnswers = '/daily-activities/answers';
  static const _pathPending = '/daily-activities/pending';
  static const _pathCalendar = '/daily-activities/calendar';
  @override
  Future<List<DailyQuestionEntity>> getTodayQuestions() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));
    // TODO: final res = await _dio.get(_pathQuestions);
    // final list = res.data as List<dynamic>;
    // return list
    //     .map((e) => DailyQuestionEntity.fromJson(e as Map<String, dynamic>))
    //     .toList();
    return _mockTodayQuestions;
  }

  @override
  Future<DailyPendingEntity> getPendingStatus() async {
    await Future<void>.delayed(const Duration(milliseconds: 150));
    // TODO: final res = await _dio.get(_pathPending);
    // return DailyPendingEntity.fromJson(res.data as Map<String, dynamic>);
    return _mockPending;
  }

  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 150));
    // TODO: final res = await _dio.get(_pathCalendar, queryParameters: {
    //   'year': year,
    //   if (month != null) 'month': month,
    //   if (period != null) 'period': period,
    // });
    // return DailyCalendarEntity.fromJson(res.data as Map<String, dynamic>);
    return _mockCalendar;
  }

  @override
  Future<DailyActivityAnswerResultEntity> submitAnswer({
    required String questionId,
    required String optionId,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));

    // TODO:
    // final res = await _dio.post(_pathAnswers, data: {
    //   'questionId': questionId,
    //   'optionId': optionId,
    // });
    // final data = res.data['data'] as Map<String, dynamic>;
    // return DailyActivityAnswerResultEntity.fromJson(data);

    return const DailyActivityAnswerResultEntity(
      score: 4.5,
      nextQuestion: null,
    );
  }

  /// API şekline uygun mock (birden fazla kök soru; UI’da take(2) kullanabilirsin).
  static final List<DailyQuestionEntity> _mockTodayQuestions = [
    DailyQuestionEntity(
      id: 'q1-mock',
      text: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
      displayOrder: 1,
      options: [
        DailyQuestionOptionEntity(
          id: 'o1',
          text: 'Araba',
          carbonValue: 4.5,
          nextQuestionId: null,
        ),
        DailyQuestionOptionEntity(
          id: 'o2',
          text: 'Toplu taşıma',
          carbonValue: 2.0,
          nextQuestionId: null,
        ),
      ],
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
    ),
  ];

  // getPendingStatus mock
  static final _mockPending = DailyPendingEntity(
    hasPending: true,
    pendingCount: 1,
  );

  // getCalendar mock
  static final _mockCalendar = DailyCalendarEntity(
    totalScore: 120.5,
    items: [
      DailyCalendarItemEntity(date: '2026-03-10', score: 4.5, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-09', score: 2.0, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-08', score: 7.0, hasDetails: true),
    ],
  );
}
