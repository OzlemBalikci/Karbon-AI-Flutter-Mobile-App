abstract class HomeRepository {
  Future<DateTime?> getLastSurveyDate();
  Future<void> saveLastSurveyDate(DateTime date);
}
