import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote.dart';
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote_mocks.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_request_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_answer_result_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_pending_dto.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_previous_answer_dto.dart';
import 'package:karbon/features/dailyactivites/data/daily_question_roots_flatten.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/data/mapper/dto_mapper.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/core/networks/response_ext.dart';

@LazySingleton(as: DailyActivitiesRemote)
class DailyActivitiesRemoteImpl implements DailyActivitiesRemote {
  DailyActivitiesRemoteImpl(this._dio);

  final Dio _dio;

  bool get _useMocks => ApiConfig.baseUrl.isEmpty;

  @override
  Future<List<DailyQuestionEntity>> getTodayQuestions() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      return DailyActivitiesRemoteMocks.todayQuestions;
    }
    final res = await _dio.get<dynamic>('/api/v1/daily-activities/questions');
    final raw = res.dataList();
    final roots = raw.map(DailyQuestionDto.fromJson).toList();
    return flattenDailyQuestionRootsToEntities(roots);
  }

  @override
  Future<DailyPendingEntity> getPendingStatus() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return DailyActivitiesRemoteMocks.pending;
    }
    final res = await _dio.get<dynamic>(
      '/api/v1/daily-activities',
      queryParameters: <String, dynamic>{'status': 'pending'},
    );
    final data = res.dataMap();
    return DailyActivityMapper.toPendingEntity(DailyPendingDto.fromJson(data));
  }

  @override
  Future<List<DailyPreviousAnswersByDateEntity>> getPreviousAnswers() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return DailyActivitiesRemoteMocks.previousAnswers;
    }
    try {
      final res =
          await _dio.get<dynamic>('/api/v1/daily-activities/previous-answers');
      final raw = res.dataList();
      return raw
          .map(
            (e) => DailyActivityMapper.toPreviousAnswersByDateEntity(
              DailyPreviousAnswersByDateDto.fromJson(e),
            ),
          )
          .toList();
    } on DioException catch (e) {
      /// [daily-activities.md]: hiç cevap yoksa `404 PreviousAnswersNotFound`.
      if (e.response?.statusCode == 404) {
        return <DailyPreviousAnswersByDateEntity>[];
      }
      rethrow;
    }
  }

  @override
  Future<DailyAnswerResultEntity> postAnswers(
    List<DailySelectedAnswerEntity> answers,
  ) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      return DailyActivitiesRemoteMocks.postAnswers(answers);
    }
    final batch = DailyAnswersBatchRequestDto(
      answers: answers.map(DailyActivityMapper.toAnswerItemRequestDto).toList(),
    );
    final res = await _dio.post<dynamic>(
      '/api/v1/daily-activities/answers',
      data: batch.toJson(),
    );
    final root = res.dataMap();
    final inner = root['data'];
    final payload = inner is Map<String, dynamic> ? inner : root;
    return DailyActivityMapper.toAnswerResultEntity(
      DailyAnswerResultDto.fromJson(payload),
    );
  }
}
