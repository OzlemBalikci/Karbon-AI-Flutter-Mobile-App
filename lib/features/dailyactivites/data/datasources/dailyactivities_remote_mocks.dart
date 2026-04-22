import 'package:karbon/features/dailyactivites/data/daily_question_roots_flatten.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
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

  /// API’deki gibi kök altında `nextQuestion` gömülü JSON — mock GET yolu gerçek DTO + düzleştirme kullanır.
  static final Map<String, dynamic> _mockNestedTransportRootJson =
      <String, dynamic>{
    'id': _mockRootTransportId,
    'text': 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
    'displayOrder': 1,
    'remainingSeconds': 62774,
    'options': <dynamic>[
      <String, dynamic>{
        'id': 'mock-o-toplu',
        'text': 'Toplu Ulaşım',
        'carbonValue': 5,
        'nextQuestionId': _mockQuestionAracId,
        'nextQuestion': <String, dynamic>{
          'id': _mockQuestionAracId,
          'text': 'Kullandığınız ulaşım aracını seçiniz.',
          'displayOrder': 2,
          'remainingSeconds': 62700,
          'options': <dynamic>[
            <String, dynamic>{
              'id': 'mock-o-otobus',
              'text': 'Otobüs',
              'carbonValue': 8,
              'nextQuestionId': _mockQuestionSeferId,
              'nextQuestion': <String, dynamic>{
                'id': _mockQuestionSeferId,
                'text': 'Sefer Sayısı',
                'displayOrder': 3,
                'remainingSeconds': 62600,
                'options': <dynamic>[
                  <String, dynamic>{
                    'id': 'mock-sefer-1',
                    'text': '1 Sefer',
                    'carbonValue': 5,
                    'nextQuestionId': null,
                    'nextQuestion': null,
                  },
                  <String, dynamic>{
                    'id': 'mock-sefer-2',
                    'text': '2 Sefer',
                    'carbonValue': 10,
                    'nextQuestionId': null,
                    'nextQuestion': null,
                  },
                  <String, dynamic>{
                    'id': 'mock-sefer-3',
                    'text': '3 Sefer',
                    'carbonValue': 15,
                    'nextQuestionId': null,
                    'nextQuestion': null,
                  },
                  <String, dynamic>{
                    'id': 'mock-sefer-4p',
                    'text': '4+ Sefer',
                    'carbonValue': 20,
                    'nextQuestionId': null,
                    'nextQuestion': null,
                  },
                ],
              },
            },
            <String, dynamic>{
              'id': 'mock-o-metro',
              'text': 'Metro',
              'carbonValue': 6,
              'nextQuestionId': _mockQuestionSeferId,
              'nextQuestion': null,
            },
            <String, dynamic>{
              'id': 'mock-o-minibus',
              'text': 'Minibüs',
              'carbonValue': 9,
              'nextQuestionId': _mockQuestionSeferId,
              'nextQuestion': null,
            },
          ],
        },
      },
      <String, dynamic>{
        'id': 'mock-o-yuruyus',
        'text': 'Yürüyüş / Bisiklet',
        'carbonValue': 0,
        'nextQuestionId': null,
        'nextQuestion': null,
      },
      <String, dynamic>{
        'id': 'mock-o-araba',
        'text': 'Araba',
        'carbonValue': 25,
        'nextQuestionId': null,
        'nextQuestion': null,
      },
    ],
  };

  static final Map<String, dynamic> _mockCoffeeRootJson = <String, dynamic>{
    'id': 'mock-kahve-root',
    'text': 'Günlük kahve tüketiminiz ne kadar?',
    'displayOrder': 4,
    'remainingSeconds': 50000,
    'options': <dynamic>[
      <String, dynamic>{
        'id': 'mock-kahve-0',
        'text': '0',
        'carbonValue': 0,
        'nextQuestionId': null,
        'nextQuestion': null,
      },
      <String, dynamic>{
        'id': 'mock-kahve-12',
        'text': '1–2',
        'carbonValue': 3,
        'nextQuestionId': null,
        'nextQuestion': null,
      },
    ],
  };

  static final List<DailyQuestionEntity> _todayQuestions =
      flattenDailyQuestionRootsToEntities([
    DailyQuestionDto.fromJson(_mockNestedTransportRootJson),
    DailyQuestionDto.fromJson(_mockCoffeeRootJson),
  ]);

  static List<DailyQuestionEntity> get todayQuestions =>
      _todayQuestions.map((q) => q).toList();

  static Map<String, DailyQuestionEntity> get _questionsById =>
      {for (final q in _todayQuestions) q.id: q};

  /// Üç kademeli ulaşım akışı — gerçek API’deki gibi kümülatif totalCarbonScore.
  static DailyAnswerResultEntity postAnswer({
    required String questionId,
    required String selectedOptionId,
  }) {
    final byId = _questionsById;
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

    if (questionId == _mockRootTransportId) {
      return DailyAnswerResultEntity(
        totalCarbonScore: next == null ? selected.carbonValue : 5,
        isFlowCompleted: next == null,
        nextQuestion: next,
      );
    }
    if (questionId == _mockQuestionAracId) {
      return DailyAnswerResultEntity(
        totalCarbonScore: 13,
        isFlowCompleted: false,
        nextQuestion: byId[_mockQuestionSeferId],
      );
    }
    if (questionId == _mockQuestionSeferId) {
      return DailyAnswerResultEntity(
        totalCarbonScore: 33,
        isFlowCompleted: true,
        nextQuestion: null,
      );
    }

    return DailyAnswerResultEntity(
      totalCarbonScore: selected.carbonValue,
      isFlowCompleted: next == null,
      nextQuestion: next,
    );
  }
}
