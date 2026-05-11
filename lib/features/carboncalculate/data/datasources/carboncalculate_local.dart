abstract class CarbonCalculateLocal {
  Future<void> saveActivePollJson(String json);

  Future<String?> getActivePollJson();

  Future<void> clearActivePollCache();
}
