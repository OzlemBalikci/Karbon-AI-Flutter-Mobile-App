import 'package:karbon/features/dailyactivites/data/dtos/daily_question_dto.dart';

/// API şekil farkları: `nextQuestionId` yok ama `nextQuestion` gömülü geldiğinde
/// seçenekteki `nextQuestionId` alanını doldurur (iç içe sorular için özyinelemeli).
DailyQuestionDto adaptDailyQuestionDtoForClient(DailyQuestionDto q) {
  return DailyQuestionDto(
    id: q.id,
    text: q.text,
    displayOrder: q.displayOrder,
    remainingSeconds: q.remainingSeconds,
    options: q.options.map(adaptDailyQuestionOptionDtoForClient).toList(),
  );
}

DailyQuestionOptionDto adaptDailyQuestionOptionDtoForClient(
  DailyQuestionOptionDto o,
) {
  final nested = o.nextQuestion != null
      ? adaptDailyQuestionDtoForClient(o.nextQuestion!)
      : null;
  final resolvedNextId = o.nextQuestionId ??
      (nested != null && nested.id.isNotEmpty ? nested.id : null);
  return DailyQuestionOptionDto(
    id: o.id,
    text: o.text,
    carbonValue: o.carbonValue,
    nextQuestionId: resolvedNextId,
    nextQuestion: nested,
  );
}
