import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/domain/entities/monthly_poll_entity.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_answer_item_entity.dart';
import 'package:karbon/features/carboncalculate/domain/entities/submit_poll_answer_response_entity.dart';

abstract class CarbonCalculateRemote {
  Future<MonthlyPollEntity> getMonthlyPoll();

  Future<SubmitPollAnswerResponseEntity> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });
}

@LazySingleton(as: CarbonCalculateRemote)
class CarbonCalculateRemoteImpl implements CarbonCalculateRemote {
  CarbonCalculateRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<MonthlyPollEntity> getMonthlyPoll() async {
    // TODO: await _dio.get('/api/v1/polls/daily')
    throw UnimplementedError('Backend hazır olunca implement edilecek');
  }

  @override
  Future<SubmitPollAnswerResponseEntity> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    // TODO: await _dio.post('/api/v1/polls/submit', ...)
    throw UnimplementedError('Backend hazır olunca implement edilecek');
  }
}
