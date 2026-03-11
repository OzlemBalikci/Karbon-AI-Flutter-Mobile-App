import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/home/data/datasources/home_remote.dart';
import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';
import 'package:karbon/features/home/domain/repositories/home_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._remote, this._prefs);
  final HomeRemote _remote;
  final SharedPreferences _prefs;

  static const _surveyDateKey = 'lastSurveyDate';

  @override
  Future<DateTime?> getLastSurveyDate() async {
    final lastDateStr = _prefs.getString(_surveyDateKey);
    return lastDateStr != null ? DateTime.parse(lastDateStr) : null;
  }

  @override
  Future<void> saveLastSurveyDate(DateTime date) async {
    await _prefs.setString(_surveyDateKey, date.toIso8601String());
  }

  @override
  Future<Either<Exception, HomeDashboardEntity>> getMonthlyLeaderboard({
    required int month,
    required int year,
  }) async {
    try {
      final dashboard =
          await _remote.getMonthlyLeaderboard(month: month, year: year);
      return Right(dashboard);
    } on Exception catch (e) {
      return Left(e);
    }
  }
}
