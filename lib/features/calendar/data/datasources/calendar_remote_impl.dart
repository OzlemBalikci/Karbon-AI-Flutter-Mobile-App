import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/response_ext.dart';
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart';
import 'package:karbon/features/calendar/data/dtos/activity_question_detail_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_calendar_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_day_detail_dto.dart';
import 'package:karbon/features/calendar/data/dtos/daily_monthly_day_score_dto.dart';
import 'package:karbon/features/calendar/data/mapper/calendar_mapper.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';

/// Canlı API. Mock için [CalendarRemoteMock] kayıtlıyken bu sınıf `@Injectable()` kalır.
@Injectable()
class CalendarRemoteImpl implements CalendarRemote {
  CalendarRemoteImpl(this._dio);

  final Dio _dio;

  @override
  Future<DailyDayDetailEntity> getDetails({required DateTime date}) async {
    final res = await _dio.get<dynamic>(
      '/api/v1/daily-activities',
      queryParameters: <String, dynamic>{'date': date.toIso8601String()},
    );
    final data = res.dataMap();
    return CalendarMapper.toDayDetailEntity(DailyDayDetailDto.fromJson(data));
  }

  @override
  Future<DailyCalendarEntity> getCalendar({
    required int year,
    required int month,
  }) async {
    final res = await _dio.get<dynamic>(
      '/api/v1/daily-activities/calendar',
      queryParameters: <String, dynamic>{
        'year': year,
        'month': month,
      },
    );
    final data = res.dataMap();
    return CalendarMapper.toCalendarEntity(
        DailyCalendarResponseDto.fromJson(data));
  }

  @override
  Future<DailyMonthlyActivitiesEntity> getMonthlyActivities({
    required int year,
    required int month,
  }) async {
    try {
      final res = await _dio.get<dynamic>(
        '/api/v1/daily-activities/monthly',
        queryParameters: <String, dynamic>{
          'year': year,
          'month': month,
        },
      );
      final data = res.dataMap();
      return CalendarMapper.toMonthlyActivitiesEntity(
          DailyMonthlyActivitiesDto.fromJson(data));
    } on DioException catch (e) {
      /// [calendar.md] §7 — periyotta kayıt yoksa `404 NoActivityFoundForPeriod`.
      if (e.response?.statusCode == 404) {
        return const DailyMonthlyActivitiesEntity(
          totalMonthlyScore: 0,
          dailyScores: [],
        );
      }
      rethrow;
    }
  }

  @override
  Future<ActivityQuestionDetailEntity> getActivityQuestionDetail({
    required String id,
  }) async {
    final res = await _dio.get<dynamic>('/api/v1/activity-questions/$id');
    final root = res.dataMap();
    final data = root['data'] is Map<String, dynamic>
        ? root['data'] as Map<String, dynamic>
        : root;
    final dto = ActivityQuestionDetailDto.fromJson(data);
    return CalendarMapper.toActivityQuestionDetailEntity(dto);
  }
}
