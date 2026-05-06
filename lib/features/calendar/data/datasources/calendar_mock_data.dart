import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Calendar feature'ındaki eski `_useMocks` verilerini ayrı bir dosyaya aldık.
/// Bu sınıf; gerekirse başka bir `CalendarRemote` implementasyonunda kullanılabilir.
class CalendarMockData {
  CalendarMockData._();

  /// Nisan 2026 örnek akışı (negatif gün skorları dahil).
  /// Cihaz ayı farklıysa grid’de görünmeyebilir.
  static const List<DailyDayDetailEntity> mockDayDetails = [
    DailyDayDetailEntity(
      date: '2026-04-03T00:00:00.000Z',
      totalScore: 5.5,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Evde ayrıştırma',
          score: 5.5,
          activityDate: '2026-04-03T10:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-05T00:00:00.000Z',
      totalScore: -13.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Özel araç (yoğun trafik)',
          score: -8.0,
          activityDate: '2026-04-05T08:15:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-nutrition',
          questionText: 'Beslenme',
          selectedOptionText:
              'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          score: -5.0,
          activityDate: '2026-04-05T12:30:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-08T00:00:00.000Z',
      totalScore: 22.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-recycle',
          questionText: 'Evde çöplerinizi ayrıştırıyor musunuz?',
          selectedOptionText: 'Yeşil tarife',
          score: 10.0,
          activityDate: '2026-04-08T09:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Bisiklet',
          score: 12.0,
          activityDate: '2026-04-08T18:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-12T00:00:00.000Z',
      totalScore: -4.25,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-recycle',
          questionText: 'Evde çöplerinizi ayrıştırıyor musunuz?',
          selectedOptionText: 'Yüksek sıcaklık',
          score: -2.0,
          activityDate: '2026-04-12T07:30:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Tek kullanımlık ambalaj',
          score: -2.25,
          activityDate: '2026-04-12T19:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-14T00:00:00.000Z',
      totalScore: 18.5,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-recycle',
          questionText: 'Evde çöplerinizi ayrıştırıyor musunuz?',
          selectedOptionText: 'Gün içi tasarruf',
          score: 10.5,
          activityDate: '2026-04-14T09:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe  hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Toplu taşıma',
          score: 8.0,
          activityDate: '2026-04-14T17:45:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-18T00:00:00.000Z',
      totalScore: 9.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-water',
          questionText: 'Su',
          selectedOptionText: 'Düşük tüketim',
          score: 4.0,
          activityDate: '2026-04-18T08:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-nutrition',
          questionText: 'Beslenme',
          selectedOptionText: 'Bitkisel ağırlıklı',
          score: 5.0,
          activityDate: '2026-04-18T13:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-22T00:00:00.000Z',
      totalScore: -6.5,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-flight',
          questionText: 'Uçuş',
          selectedOptionText: 'Kısa mesafe uçuş',
          score: -3.0,
          activityDate: '2026-04-22T06:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-consumption',
          questionText: 'Tüketim',
          selectedOptionText: 'Hızlı moda',
          score: -3.5,
          activityDate: '2026-04-22T20:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-04-28T00:00:00.000Z',
      totalScore: 14.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-local-production',
          questionText: 'Yerel üretim',
          selectedOptionText: 'Pazar alışverişi',
          score: 7.0,
          activityDate: '2026-04-28T11:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-waste',
          questionText: 'Atık',
          selectedOptionText: 'Kompost',
          score: 7.0,
          activityDate: '2026-04-28T16:00:00.000Z',
        ),
      ],
    ),
  ];

  static final DailyCalendarEntity mockCalendarEntity = () {
    final items = mockDayDetails
        .map(
          (d) => DailyCalendarItemEntity(
            date: _ymdFromDetailDate(d.date),
            score: d.totalScore,
            hasDetails: d.activities.isNotEmpty,
          ),
        )
        .toList();
    final total = mockDayDetails.fold<double>(0, (s, d) => s + d.totalScore);
    return DailyCalendarEntity(totalScore: total, items: items);
  }();

  static final DailyMonthlyActivitiesEntity mockMonthlyEntity = () {
    final dailyScores = mockDayDetails
        .map(
          (d) => DailyMonthlyDayScoreEntity(
            date: d.date,
            totalScore: d.totalScore,
          ),
        )
        .toList();
    final totalMonthly =
        mockDayDetails.fold<double>(0, (s, d) => s + d.totalScore);
    final period1Sum = mockDayDetails.fold<double>(0, (s, d) {
      final dt = DateTime.tryParse(d.date);
      if (dt == null) return s;
      return dt.day <= 15 ? s + d.totalScore : s;
    });
    return DailyMonthlyActivitiesEntity(
      totalMonthlyScore: totalMonthly,
      totalPeriodScore: period1Sum,
      dailyScores: dailyScores,
    );
  }();

  static String _ymdFromDetailDate(String iso) =>
      iso.length >= 10 ? iso.substring(0, 10) : iso;

  static DailyDayDetailEntity detailForRequestedDate(String raw) {
    final key = raw.length >= 10 ? raw.substring(0, 10) : raw;
    for (final d in mockDayDetails) {
      if (_ymdFromDetailDate(d.date) == key) {
        return d;
      }
    }
    return DailyDayDetailEntity(
      date: '${key}T00:00:00.000Z',
      totalScore: 0,
      activities: const [],
    );
  }

  static ActivityQuestionDetailEntity questionDetailForRequestedId(
    String id,
  ) {
    const detailsById = <String, ActivityQuestionDetailEntity>{
      'question-commute': ActivityQuestionDetailEntity(
        id: '019d761b-5c59-74c1-a7ec-09138dcfc8fd',
        text: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
        displayOrder: 1,
        startDate: '0001-01-01T00:00:00Z',
        endDate: '0001-01-01T00:00:00Z',
        scheduledTime: '00:00:00',
        options: [
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f2518',
            text: '300 adım',
            carbonValue: 1,
            nextQuestionId: null,
          ),
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f2519',
            text: 'Toplu taşıma',
            carbonValue: 8,
            nextQuestionId: null,
          ),
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f2520',
            text: 'Özel araç',
            carbonValue: -8,
            nextQuestionId: null,
          ),
        ],
      ),
      'question-recycle': ActivityQuestionDetailEntity(
        id: '019d761b-5c59-74c1-a7ec-09138dcfc8aa',
        text: 'Evde çöplerinizi ayrıştırıyor musunuz?',
        displayOrder: 2,
        startDate: '0001-01-01T00:00:00Z',
        endDate: '0001-01-01T00:00:00Z',
        scheduledTime: '00:00:00',
        options: [
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f25aa',
            text: 'Evet, düzenli yapıyorum',
            carbonValue: 10.5,
            nextQuestionId: null,
          ),
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f25ab',
            text: 'Bazen',
            carbonValue: 2,
            nextQuestionId: null,
          ),
          ActivityQuestionOptionEntity(
            id: '019d761b-5c5c-7290-ab61-8fbb4b8f25ac',
            text: 'Hayır',
            carbonValue: -2,
            nextQuestionId: null,
          ),
        ],
      ),
    };

    final byDictionary = detailsById[id];
    if (byDictionary != null) return byDictionary;

    for (final day in mockDayDetails) {
      for (final activity in day.activities) {
        if (activity.activityQuestionId == id) {
          return ActivityQuestionDetailEntity(
            id: id,
            text: activity.questionText,
            displayOrder: 1,
            startDate: '0001-01-01T00:00:00Z',
            endDate: '0001-01-01T00:00:00Z',
            scheduledTime: '00:00:00',
            options: const <ActivityQuestionOptionEntity>[
              ActivityQuestionOptionEntity(
                id: '019d761b-5c5c-7290-ab61-8fbb4b8f25ff',
                text: 'Varsayılan seçenek',
                carbonValue: 0,
                nextQuestionId: null,
              ),
            ],
          );
        }
      }
    }

    return ActivityQuestionDetailEntity(
      id: id,
      text: '',
      displayOrder: 0,
      startDate: '0001-01-01T00:00:00Z',
      endDate: '0001-01-01T00:00:00Z',
      scheduledTime: '00:00:00',
      options: const <ActivityQuestionOptionEntity>[],
    );
  }
}

