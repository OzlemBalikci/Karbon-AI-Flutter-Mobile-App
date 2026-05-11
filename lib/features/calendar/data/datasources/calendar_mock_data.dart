import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

class CalendarMockData {
  CalendarMockData._();

  static const List<DailyDayDetailEntity> mockDayDetails = [
    DailyDayDetailEntity(
      date: '2026-04-03T00:00:00.000Z',
      totalScore: 50.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Toplu Ulaşım',
          score: 25.0,
          activityDate: '2026-04-03T08:30:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-transport-vehicle',
          questionText: 'Kullandığınız ulaşım aracını seçiniz.',
          selectedOptionText: 'Otobüs',
          score: 15.0,
          activityDate: '2026-04-03T08:31:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-trip-count',
          questionText: 'Sefer Sayısı',
          selectedOptionText: '4 Sefer',
          score: 10.0,
          activityDate: '2026-04-03T08:32:00.000Z',
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
    DailyDayDetailEntity(
      date: '2026-05-02T00:00:00.000Z',
      totalScore: 20.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Bisiklet',
          score: 12.0,
          activityDate: '2026-05-02T08:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-recycle',
          questionText: 'Evde çöplerinizi ayrıştırıyor musunuz?',
          selectedOptionText: 'Evet, düzenli yapıyorum',
          score: 8.0,
          activityDate: '2026-05-02T19:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-05T00:00:00.000Z',
      totalScore: -5.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Özel Araç',
          score: -5.0,
          activityDate: '2026-05-05T08:30:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-07T00:00:00.000Z',
      totalScore: 50.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Toplu Ulaşım',
          score: 25.0,
          activityDate: '2026-05-07T08:30:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-transport-vehicle',
          questionText: 'Kullandığınız ulaşım aracını seçiniz.',
          selectedOptionText: 'Metro',
          score: 15.0,
          activityDate: '2026-05-07T08:31:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-trip-count',
          questionText: 'Sefer Sayısı',
          selectedOptionText: '2 Sefer',
          score: 10.0,
          activityDate: '2026-05-07T08:32:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-10T00:00:00.000Z',
      totalScore: 15.5,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-water',
          questionText: 'Su',
          selectedOptionText: 'Düşük tüketim',
          score: 6.0,
          activityDate: '2026-05-10T08:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-nutrition',
          questionText: 'Beslenme',
          selectedOptionText: 'Bitkisel ağırlıklı',
          score: 9.5,
          activityDate: '2026-05-10T13:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-14T00:00:00.000Z',
      totalScore: -8.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-flight',
          questionText: 'Uçuş',
          selectedOptionText: 'Kısa mesafe uçuş',
          score: -5.0,
          activityDate: '2026-05-14T06:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-consumption',
          questionText: 'Tüketim',
          selectedOptionText: 'Hızlı moda',
          score: -3.0,
          activityDate: '2026-05-14T20:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-19T00:00:00.000Z',
      totalScore: 18.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-recycle',
          questionText: 'Evde çöplerinizi ayrıştırıyor musunuz?',
          selectedOptionText: 'Evet, düzenli yapıyorum',
          score: 10.0,
          activityDate: '2026-05-19T09:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-local-production',
          questionText: 'Yerel üretim',
          selectedOptionText: 'Pazar alışverişi',
          score: 8.0,
          activityDate: '2026-05-19T12:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-23T00:00:00.000Z',
      totalScore: 12.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-waste',
          questionText: 'Atık',
          selectedOptionText: 'Kompost',
          score: 7.0,
          activityDate: '2026-05-23T10:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Yürüyüş',
          score: 5.0,
          activityDate: '2026-05-23T18:00:00.000Z',
        ),
      ],
    ),
    DailyDayDetailEntity(
      date: '2026-05-27T00:00:00.000Z',
      totalScore: 22.0,
      activities: [
        DailyDayActivityEntity(
          activityQuestionId: 'question-commute',
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Bisiklet',
          score: 12.0,
          activityDate: '2026-05-27T08:00:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-water',
          questionText: 'Su',
          selectedOptionText: 'Düşük tüketim',
          score: 10.0,
          activityDate: '2026-05-27T14:00:00.000Z',
        ),
      ],
    ),
  ];

  static DailyCalendarEntity calendarForMonth(int year, int month) {
    final days = mockDayDetails.where((d) {
      final dt = DateTime.tryParse(d.date);
      return dt != null && dt.year == year && dt.month == month;
    }).toList();
    final items = days
        .map((d) => DailyCalendarItemEntity(
              date: _ymdFromDetailDate(d.date),
              score: d.totalScore,
              hasDetails: d.activities.isNotEmpty,
            ))
        .toList();
    final total = days.fold<double>(0, (s, d) => s + d.totalScore);
    return DailyCalendarEntity(totalScore: total, items: items);
  }

  static DailyMonthlyActivitiesEntity monthlyActivitiesForMonth(
    int year,
    int month,
  ) {
    final days = mockDayDetails.where((d) {
      final dt = DateTime.tryParse(d.date);
      return dt != null && dt.year == year && dt.month == month;
    }).toList();
    final dailyScores = days
        .map((d) => DailyMonthlyDayScoreEntity(
              date: d.date,
              totalScore: d.totalScore,
            ))
        .toList();
    final totalMonthly = days.fold<double>(0, (s, d) => s + d.totalScore);
    final period1Sum = days.fold<double>(0, (s, d) {
      final dt = DateTime.tryParse(d.date);
      if (dt == null) return s;
      return dt.day <= 15 ? s + d.totalScore : s;
    });
    return DailyMonthlyActivitiesEntity(
      totalMonthlyScore: totalMonthly,
      totalPeriodScore: period1Sum,
      dailyScores: dailyScores,
    );
  }

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

  static const mockQuestionTripCount = ActivityQuestionDetailEntity(
    id: 'question-trip-count',
    text: 'Sefer Sayısı',
    displayOrder: 3,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-trip-1',
        text: '1 Sefer',
        carbonValue: 5,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-2',
        text: '2 Sefer',
        carbonValue: 8,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-4',
        text: '4 Sefer',
        carbonValue: 10,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-trip-more',
        text: '5+ Sefer',
        carbonValue: 12,
        nextQuestionId: null,
        nextQuestion: null,
      ),
    ],
  );

  static const mockQuestionTransportVehicle = ActivityQuestionDetailEntity(
    id: 'question-transport-vehicle',
    text: 'Kullandığınız ulaşım aracını seçiniz.',
    displayOrder: 2,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-otobus',
        text: 'Otobüs',
        carbonValue: 15,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-metro',
        text: 'Metro',
        carbonValue: 20,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-vehicle-tramvay',
        text: 'Tramvay',
        carbonValue: 18,
        nextQuestionId: 'question-trip-count',
        nextQuestion: mockQuestionTripCount,
      ),
    ],
  );

  static const mockQuestionCommute = ActivityQuestionDetailEntity(
    id: 'question-commute',
    text: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
    displayOrder: 1,
    startDate: '0001-01-01T00:00:00Z',
    endDate: '0001-01-01T00:00:00Z',
    scheduledTime: '08:00:00',
    options: [
      ActivityQuestionOptionEntity(
        id: 'opt-commute-toplu',
        text: 'Toplu Ulaşım',
        carbonValue: 25,
        nextQuestionId: 'question-transport-vehicle',
        nextQuestion: mockQuestionTransportVehicle,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-bisiklet',
        text: 'Bisiklet',
        carbonValue: 30,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-ozel',
        text: 'Özel Araç',
        carbonValue: -8,
        nextQuestionId: null,
        nextQuestion: null,
      ),
      ActivityQuestionOptionEntity(
        id: 'opt-commute-yuruyus',
        text: 'Yürüyüş',
        carbonValue: 35,
        nextQuestionId: null,
        nextQuestion: null,
      ),
    ],
  );

  static ActivityQuestionDetailEntity questionDetailForRequestedId(
    String id,
  ) {
    const detailsById = <String, ActivityQuestionDetailEntity>{
      'question-commute': mockQuestionCommute,
      'question-transport-vehicle': mockQuestionTransportVehicle,
      'question-trip-count': mockQuestionTripCount,
      'question-recycle': ActivityQuestionDetailEntity(
        id: 'question-recycle',
        text: 'Evde çöplerinizi ayrıştırıyor musunuz?',
        displayOrder: 4,
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
