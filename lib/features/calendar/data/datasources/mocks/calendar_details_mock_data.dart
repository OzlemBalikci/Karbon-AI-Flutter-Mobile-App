import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Mock verisi: GET /api/v1/daily-activities?date=...
class CalendarDetailsMockData {
  CalendarDetailsMockData._();

  static const List<DailyDayDetailEntity> items = [
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
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
          selectedOptionText: 'Özel araç (yoğun trafik)',
          score: -8.0,
          activityDate: '2026-04-05T08:15:00.000Z',
        ),
        DailyDayActivityEntity(
          activityQuestionId: 'question-nutrition',
          questionText: 'Beslenme',
          selectedOptionText: 'Bitkisel ağırlıklı',
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
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
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
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
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
          questionText: 'Bu sabah işe hangi ulaşım aracıyla gideceksiniz?',
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

  static String _ymd(String iso) => iso.length >= 10 ? iso.substring(0, 10) : iso;

  static DailyDayDetailEntity forDate(DateTime date) {
    final key = _ymd(date.toIso8601String());
    for (final d in items) {
      if (_ymd(d.date) == key) return d;
    }
    return DailyDayDetailEntity(
      date: '${key}T00:00:00.000Z',
      totalScore: 0,
      activities: const [],
    );
  }
}
