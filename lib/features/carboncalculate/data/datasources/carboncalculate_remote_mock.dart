import 'package:injectable/injectable.dart';
import 'package:karbon/features/carboncalculate/data/mocks/active_poll_set_mock.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote.dart';

/// Geliştirme: [ActivePollSetMock] ile örnek anket döner.
/// Canlı API için [CarbonCalculateRemoteImpl] kullanılacaksa bu kayıt değiştirilebilir.
@LazySingleton(as: CarbonCalculateRemote)
class CarbonCalculateRemoteMock implements CarbonCalculateRemote {
  @override
  Future<ActivePollSetEntity> getActivePoll() async {
    await Future<void>.delayed(const Duration(milliseconds: 120));
    return ActivePollSetMock.entity;
  }

  @override
  Future<PollSubmissionResultEntity> savePollDraft({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 80));
    return PollSubmissionResultEntity(
      totalCarbonScore: _mockTotalScore(answers),
      calculatedTrees: _mockTrees(answers),
    );
  }

  @override
  Future<PollSubmissionResultEntity> submitPollAnswers({
    required String pollSetId,
    required List<PollAnswerItemEntity> answers,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 120));
    return PollSubmissionResultEntity(
      totalCarbonScore: _mockTotalScore(answers),
      calculatedTrees: _mockTrees(answers),
    );
  }

  double _mockTotalScore(List<PollAnswerItemEntity> answers) {
    if (answers.isEmpty) return 0;
    return answers.length * 8.5;
  }

  int _mockTrees(List<PollAnswerItemEntity> answers) {
    if (answers.isEmpty) return 0;
    return answers.length * 2;
  }
}
