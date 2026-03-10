import 'package:dartz/dartz.dart';
import 'package:karbon/features/carboncalculate/domain/entities/monthly_poll_entity.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_answer_item_entity.dart';
import 'package:karbon/features/carboncalculate/domain/entities/submit_poll_answer_response_entity.dart';

abstract class CarbonCalculateRepository {
  /// GET /api/v1/polls/monthly -> Kullanıcının o ay içinde cevaplaması gereken anketi getirir.
  Future<Either<Exception, MonthlyPollEntity>> getMonthlyPoll();

  /// POST /api/v1/polls/submit -> Kullanıcının anket cevaplarını gönderir ve toplam karbon skoru, hesaplanan ağaç sayısı ve toplam ağaç sayısını döner.
  /// Aynı aya ikinci kez cevap gönderilirse 400 döner.
  Future<Either<Exception, SubmitPollAnswerResponseEntity>> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  });
}
