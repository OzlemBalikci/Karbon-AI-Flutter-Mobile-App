import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

/// `ApiConfig.baseUrl` boşken [DailyActivitiesRemoteImpl] tarafından kullanılan sabit veriler.
abstract final class DailyActivitiesRemoteMocks {
  DailyActivitiesRemoteMocks._();

  static const DailyPendingEntity pending = DailyPendingEntity(
    hasPending: true,
    pendingCount: 2,
  );

  static const List<DailyPreviousAnswersByDateEntity> previousAnswers =
      <DailyPreviousAnswersByDateEntity>[
    DailyPreviousAnswersByDateEntity(
      date: '2026-04-21T00:00:00Z',
      answers: [
        DailyPreviousAnswerItemEntity(
          questionText: 'Kullandığınız ulaşım aracını seçiniz.',
          answerText: 'Otobüs',
          score: 8,
          date: '2026-04-21T06:38:48.22605Z',
        ),
        DailyPreviousAnswerItemEntity(
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          answerText: 'Toplu Ulaşım',
          score: 5,
          date: '2026-04-21T06:36:49.18482Z',
        ),
      ],
    ),
  ];

  static const String _mockRootTransportId = 'mock-r1-ulasma';
  static const String _mockQuestionAracId = 'mock-q2-arac';
  static const String _mockQuestionSeferId = 'mock-q3-sefer';

  static final List<DailyQuestionEntity> _todayQuestions =
      <DailyQuestionEntity>[
    DailyQuestionEntity(
      id: _mockRootTransportId,
      text: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
      displayOrder: 1,
      remainingSeconds: 62774,
      options: const <DailyQuestionOptionEntity>[
        DailyQuestionOptionEntity(
          id: 'mock-o-toplu',
          text: 'Toplu Ulaşım',
          carbonValue: 5,
          nextQuestionId: _mockQuestionAracId,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-o-yuruyus',
          text: 'Yürüyüş / Bisiklet',
          carbonValue: 0,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-o-araba',
          text: 'Araba',
          carbonValue: 25,
        ),
      ],
    ),
    DailyQuestionEntity(
      id: _mockQuestionAracId,
      text: 'Kullandığınız ulaşım aracını seçiniz.',
      displayOrder: 2,
      remainingSeconds: 62700,
      options: const <DailyQuestionOptionEntity>[
        DailyQuestionOptionEntity(
          id: 'mock-o-otobus',
          text: 'Otobüs',
          carbonValue: 8,
          nextQuestionId: _mockQuestionSeferId,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-o-metro',
          text: 'Metro',
          carbonValue: 6,
          nextQuestionId: _mockQuestionSeferId,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-o-minibus',
          text: 'Minibüs',
          carbonValue: 9,
          nextQuestionId: _mockQuestionSeferId,
        ),
      ],
    ),
    DailyQuestionEntity(
      id: _mockQuestionSeferId,
      text: 'Sefer Sayısı',
      displayOrder: 3,
      remainingSeconds: 62600,
      options: const <DailyQuestionOptionEntity>[
        DailyQuestionOptionEntity(
          id: 'mock-sefer-1',
          text: '1 Sefer',
          carbonValue: 5,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-sefer-2',
          text: '2 Sefer',
          carbonValue: 10,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-sefer-3',
          text: '3 Sefer',
          carbonValue: 15,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-sefer-4p',
          text: '4+ Sefer',
          carbonValue: 20,
        ),
      ],
    ),
    DailyQuestionEntity(
      id: 'mock-kahve-root',
      text: 'Gunluk kahve tuketiminiz ne kadar?',
      displayOrder: 4,
      remainingSeconds: 50000,
      options: const <DailyQuestionOptionEntity>[
        DailyQuestionOptionEntity(
          id: 'mock-kahve-0',
          text: '0',
          carbonValue: 0,
        ),
        DailyQuestionOptionEntity(
          id: 'mock-kahve-12',
          text: '1-2',
          carbonValue: 3,
        ),
      ],
    ),
  ];

  static List<DailyQuestionEntity> get todayQuestions =>
      _todayQuestions.map((q) => q).toList();

  static Map<String, DailyQuestionEntity> get _questionsById =>
      {for (final q in _todayQuestions) q.id: q};

  static DailyAnswerResultEntity postAnswers(
    List<DailySelectedAnswerEntity> answers,
  ) {
    final byId = _questionsById;
    final lines = <DailySubmittedAnswerLineEntity>[];
    var total = 0.0;

    for (final a in answers) {
      final question = byId[a.questionId];
      if (question == null) continue;
      DailyQuestionOptionEntity? selected;
      for (final o in question.options) {
        if (o.id == a.selectedOptionId) {
          selected = o;
          break;
        }
      }
      if (selected == null) continue;

      total += selected.carbonValue;
      lines.add(
        DailySubmittedAnswerLineEntity(
          questionText: question.text,
          selectedOptionText: selected.text,
          carbonValue: selected.carbonValue,
        ),
      );
    }

    var flowDone = answers.isEmpty;
    if (answers.isNotEmpty) {
      final last = answers.last;
      final q = byId[last.questionId];
      DailyQuestionOptionEntity? selected;
      if (q != null) {
        for (final o in q.options) {
          if (o.id == last.selectedOptionId) {
            selected = o;
            break;
          }
        }
      }
      final nextId = selected?.nextQuestionId;
      flowDone = selected != null && (nextId == null || nextId.isEmpty);
    }

    return DailyAnswerResultEntity(
      totalCarbonScore: total,
      isFlowCompleted: flowDone,
      answers: lines,
    );
  }
}
