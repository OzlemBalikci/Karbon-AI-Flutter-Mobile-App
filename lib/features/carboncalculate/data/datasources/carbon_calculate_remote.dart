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
    // throw UnimplementedError('Backend hazır olunca implement edilecek');
    return _mockMonthlyPoll();
  }

  static PollQuestionsEntity _mockQuestion(int index) {
    return PollQuestionsEntity(
      id: 'q$index',
      text: 'Mock soru #$index - Bu bir test sorusudur?',
      displayOrder: index,
      options: [
        PollQuestionsEntity(
            id: 'o${index}a',
            text: 'Seçenek A',
            displayOrder: 1,
            options: const [],
            carbonValue: 5),
        PollQuestionsEntity(
            id: 'o${index}b',
            text: 'Seçenek B',
            displayOrder: 2,
            options: const [],
            carbonValue: 15),
        PollQuestionsEntity(
            id: 'o${index}c',
            text: 'Seçenek C',
            displayOrder: 3,
            options: const [],
            carbonValue: 25),
      ],
    );
  }

  MonthlyPollEntity _mockMonthlyPoll() {
    return MonthlyPollEntity(
      pollSetId: 'mock-poll-001',
      name: 'Karbon Ayak İzi Anketi',
      description: 'Günlük alışkanlıklarınızı değerlendirin.',
      questions: List.generate(13, (i) => _mockQuestion(i + 1)),
    );
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
