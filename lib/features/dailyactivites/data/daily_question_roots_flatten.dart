import 'package:karbon/features/dailyactivites/data/daily_question_dto_adapt.dart';
import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';
import 'package:karbon/features/dailyactivites/data/mapper/dto_mapper.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

/// Kök DTO’lar + `options[].nextQuestion` ağacını `id` ile tekilleştirip düz entity listesi.
List<DailyQuestionEntity> flattenDailyQuestionRootsToEntities(
  Iterable<DailyQuestionDto> roots,
) {
  final adapted = roots.map(adaptDailyQuestionDtoForClient).toList();
  final byId = <String, DailyQuestionDto>{};

  void visit(DailyQuestionDto q) {
    if (q.id.isEmpty) return;
    byId[q.id] = q;
    for (final o in q.options) {
      if (o.nextQuestion != null) visit(o.nextQuestion!);
    }
  }

  for (final r in adapted) {
    visit(r);
  }

  final sorted = byId.values.toList()
    ..sort((a, b) {
      final o = a.displayOrder.compareTo(b.displayOrder);
      if (o != 0) return o;
      return a.id.compareTo(b.id);
    });
  return sorted.map(DailyActivityMapper.toQuestionEntity).toList();
}
