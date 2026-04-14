import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/data/dtos/daily_calendar_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_day_detail_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_monthly_day_score_dto.dart';
import 'package:karbon/features/calendar/data/mapper/calendar_mapper.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

@LazySingleton(as: CalendarRemote)
class CalendarRemoteImpl implements CalendarRemote {
  CalendarRemoteImpl(this._dio);

  final Dio _dio;

  static const _v1 = '/api/v1/daily-activities';

  bool get _useMocks => ApiConfig.baseUrl.isEmpty;

  @override
  Future<DailyDayDetailEntity> getDetails({required String date}) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockDetailForRequestedDate(date);
    }
    final res = await _dio.get<dynamic>(
      _v1,
      queryParameters: <String, dynamic>{'date': date},
    );
    final data = unwrapDataMap(res.data);
    return CalendarMapper.toDayDetailEntity(DailyDayDetailDto.fromJson(data));
  }

  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    int? month,
    int? period,
  }) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockCalendarEntity;
    }
    final res = await _dio.get<dynamic>(
      '$_v1/calendar',
      queryParameters: <String, dynamic>{
        'year': year,
        if (month != null) 'month': month,
        if (period != null) 'period': period,
      },
    );
    final data = unwrapDataMap(res.data);
    return CalendarMapper.toCalendarEntity(
        DailyCalendarResponseDto.fromJson(data));
  }

  @override
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
    required int period,
  }) async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return _mockMonthlyEntity;
    }
    final res = await _dio.get<dynamic>(
      '$_v1/monthly',
      queryParameters: <String, dynamic>{
        'year': year,
        'month': month,
        'period': period,
      },
    );
    final data = unwrapDataMap(res.data);
    return CalendarMapper.toMonthlyActivitiesEntity(
        DailyMonthlyActivitiesDto.fromJson(data));
  }

  // --- Tek mock kaynağı: günlük detaylar; takvim + aylık + getDetails buradan türetilir. ---

  /// Nisan 2026 örnek akışı (negatif gün skorları dahil). Cihaz ayı farklıysa grid’de görünmeyebilir.
  static const List<DailyDayDetailEntity> _mockDayDetails = [
    DailyDayDetailEntity(
      date: '2026-04-03T00:00:00.000Z',
      totalScore: 5.5,
      activities: [
        DailyDayActivityEntity(
          questionText: 'Atık ayrıştırma',
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
          questionText: 'Ulaşım tercihi',
          selectedOptionText: 'Özel araç (yoğun trafik)',
          score: -8.0,
          activityDate: '2026-04-05T08:15:00.000Z',
        ),
        DailyDayActivityEntity(
          questionText: 'Beslenme',
          selectedOptionText: 'Kırmızı et',
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
          questionText: 'Enerji',
          selectedOptionText: 'Yeşil tarife',
          score: 10.0,
          activityDate: '2026-04-08T09:00:00.000Z',
        ),
        DailyDayActivityEntity(
          questionText: 'Ulaşım',
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
          questionText: 'Isınma',
          selectedOptionText: 'Yüksek sıcaklık',
          score: -2.0,
          activityDate: '2026-04-12T07:30:00.000Z',
        ),
        DailyDayActivityEntity(
          questionText: 'Alışveriş',
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
          questionText: 'Enerji kullanımı',
          selectedOptionText: 'Gün içi tasarruf',
          score: 10.5,
          activityDate: '2026-04-14T09:00:00.000Z',
        ),
        DailyDayActivityEntity(
          questionText: 'Ulaşım',
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
          questionText: 'Su',
          selectedOptionText: 'Düşük tüketim',
          score: 4.0,
          activityDate: '2026-04-18T08:00:00.000Z',
        ),
        DailyDayActivityEntity(
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
          questionText: 'Uçuş',
          selectedOptionText: 'Kısa mesafe uçuş',
          score: -3.0,
          activityDate: '2026-04-22T06:00:00.000Z',
        ),
        DailyDayActivityEntity(
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
          questionText: 'Yerel üretim',
          selectedOptionText: 'Pazar alışverişi',
          score: 7.0,
          activityDate: '2026-04-28T11:00:00.000Z',
        ),
        DailyDayActivityEntity(
          questionText: 'Atık',
          selectedOptionText: 'Kompost',
          score: 7.0,
          activityDate: '2026-04-28T16:00:00.000Z',
        ),
      ],
    ),
  ];

  static final DailyCalendarEntity _mockCalendarEntity = () {
    final items = _mockDayDetails
        .map(
          (d) => DailyCalendarItemEntity(
            date: _mockYmdFromDetailDate(d.date),
            score: d.totalScore,
            hasDetails: d.activities.isNotEmpty,
          ),
        )
        .toList();
    final total = _mockDayDetails.fold<double>(0, (s, d) => s + d.totalScore);
    return DailyCalendarEntity(totalScore: total, items: items);
  }();

  static final DailyMonthlyActivitiesEntity _mockMonthlyEntity = () {
    final dailyScores = _mockDayDetails
        .map(
          (d) => DailyMonthlyDayScoreEntity(
            date: d.date,
            totalScore: d.totalScore,
          ),
        )
        .toList();
    final totalMonthly =
        _mockDayDetails.fold<double>(0, (s, d) => s + d.totalScore);
    final period1Sum = _mockDayDetails.fold<double>(0, (s, d) {
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

  static String _mockYmdFromDetailDate(String iso) =>
      iso.length >= 10 ? iso.substring(0, 10) : iso;

  static DailyDayDetailEntity _mockDetailForRequestedDate(String raw) {
    final key = raw.length >= 10 ? raw.substring(0, 10) : raw;
    for (final d in _mockDayDetails) {
      if (_mockYmdFromDetailDate(d.date) == key) {
        return d;
      }
    }
    return DailyDayDetailEntity(
      date: '${key}T00:00:00.000Z',
      totalScore: 0,
      activities: const [],
    );
  }
}
