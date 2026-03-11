import 'package:dartz/dartz.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

abstract class HomeRepository {
  Future<DateTime?> getLastSurveyDate();
  Future<void> saveLastSurveyDate(DateTime date);

  // GET /api/v1/user-results/monthly-leaderboard
  // Aylık/yıllık hedef + ayın liderleri
  Future<Either<Exception, HomeDashboardEntity>> getMonthlyLeaderboard({
    required int month,
    required int year,
  });
}
