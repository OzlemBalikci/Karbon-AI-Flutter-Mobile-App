import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

List<DailyQuestionEntity> rootQuestions(List<DailyQuestionEntity> all) {
  if (all.isEmpty) return all;
  final referencedIds = <String>{};
  for (final q in all) {
    for (final o in q.options) {
      final next = o.nextQuestionId;
      if (next != null && next.isNotEmpty) referencedIds.add(next);
    }
  }
  return all.where((q) => !referencedIds.contains(q.id)).toList()
    ..sort((a, b) => a.displayOrder.compareTo(b.displayOrder));
}
