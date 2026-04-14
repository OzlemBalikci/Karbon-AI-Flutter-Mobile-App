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
      return _mockDayDetail;
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
      return _mockCalendar;
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
      return _mockMonthly;
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

  static const _mockCalendar = DailyCalendarEntity(
    totalScore: 120.5,
    items: [
      DailyCalendarItemEntity(date: '2026-03-10', score: 4.5, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-09', score: 2.0, hasDetails: true),
      DailyCalendarItemEntity(date: '2026-03-08', score: 7.0, hasDetails: true),
    ],
  );

  static const _mockMonthly = DailyMonthlyActivitiesEntity(
    totalMonthlyScore: 670,
    totalPeriodScore: 335,
    dailyScores: [
      DailyMonthlyDayScoreEntity(
        date: '2026-03-01T00:00:00Z',
        totalScore: 13,
      ),
      DailyMonthlyDayScoreEntity(
        date: '2026-03-04T00:00:00Z',
        totalScore: 83,
      ),
    ],
  );
  static const _mockDayDetail = DailyDayDetailEntity(
    date: '2026-03-10T00:00:00Z',
    totalScore: 15,
    activities: [
      DailyDayActivityEntity(
        questionText: 'Örnek soru',
        selectedOptionText: 'Toplu Ulaşım',
        score: 25,
        activityDate: '2026-03-10T08:30:00Z',
      ),
    ],
  );
}
