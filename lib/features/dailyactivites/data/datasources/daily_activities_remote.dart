import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activity_answer_result_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_option.dart';

abstract class DailyActivitiesRemote {
  Future<List<DailyQuestionEntity>> getTodayQuestions();

  Future<DailyActivityAnswerResultEntity> submitAnswer({
    required String questionId,
    required String optionId,
  });
}

@LazySingleton(as: DailyActivitiesRemote)
class DailyActivitiesRemoteImpl implements DailyActivitiesRemote {
  DailyActivitiesRemoteImpl(this._dio);
  final Dio _dio;

  static const _pathQuestions = '/daily-activities/questions';
  static const _pathAnswers = '/daily-activities/answers';

  @override
  Future<List<DailyQuestionEntity>> getTodayQuestions() async {
    await Future<void>.delayed(const Duration(milliseconds: 300));

    // TODO: Gerçek çağrı — dokümantasyon: doğrudan dizi dönüyor
    // final res = await _dio.get(_pathQuestions);
    // final list = res.data as List<dynamic>;
    // return list.map((e) => DailyQuestionEntity.fromJson(e as Map<String, dynamic>)).toList();

    return _mockTodayQuestions;
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
}
