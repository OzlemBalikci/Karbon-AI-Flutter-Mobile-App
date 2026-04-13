import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_local.dart';
import 'package:karbon/features/carboncalculate/data/dtos/active_pollset_dto.dart';
import 'package:karbon/features/carboncalculate/data/dtos/poll_result_dto.dart';
import 'package:karbon/features/carboncalculate/data/dtos/poll_submit_dto.dart';
import 'package:karbon/features/carboncalculate/data/mapper/dto_mapper.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote.dart';

/// Canlı API. DI’da [CarbonCalculateRemote] için [CarbonCalculateRemoteMock]
/// yerine bu sınıfı `@LazySingleton(as: CarbonCalculateRemote)` ile kaydedin.
@Injectable()
class CarbonCalculateRemoteImpl implements CarbonCalculateRemote {
  CarbonCalculateRemoteImpl(this._dio, this._local);

  final Dio _dio;
  final CarbonCalculateLocal _local;

  @override
  Future<ActivePollSetEntity> getActivePoll() async {
    final res = await _dio.get<dynamic>('/api/v1/polls/active');
    final data = unwrapDataMap(res.data);
    await _local.saveActivePollJson(jsonEncode(data));
    return PollMapper.toActivePollEntity(ActivePollSetDto.fromJson(data));
  }

  @override
  Future<PollSubmissionResultEntity> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    final res = await _dio.post<dynamic>(
      '/api/v1/polls/draft',
      data: PollMapper.toDraftRequest(
        pollSetId: pollSetId,
        answers: answers,
      ).toJson(),
    );
    final data = unwrapDataMap(res.data);
    return PollMapper.toScoreEntity(PollSubmissionResultDto.fromJson(data));
  }

  @override
  Future<PollSubmissionResultEntity> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    final res = await _dio.post<dynamic>(
      '/api/v1/polls/answers',
      data: PollMapper.toSubmitRequest(
        pollSetId: pollSetId,
        answers: answers,
      ).toJson(),
    );
    final data = unwrapDataMap(res.data);
    return PollMapper.toScoreEntity(PollSubmissionResultDto.fromJson(data));
  }

  @override
  Future<PollResultEntity> getPollResults({
    required String pollSetId,
    required int month,
    required int year,
  }) async {
    final res = await _dio.get<dynamic>(
      '/api/v1/polls/$pollSetId/results',
      queryParameters: <String, dynamic>{
        'month': month,
        'year': year,
      },
    );
    final data = unwrapDataMap(res.data);
    return PollMapper.toResultEntity(PollResultDto.fromJson(data));
  }
}
