import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_option.dart';

class BranchStep {
  const BranchStep({
    required this.question,
    this.selectedOption,
  });

  final DailyQuestionEntity question;

  /// null → henüz cevaplanmadı (aktif adım)
  final DailyQuestionOptionEntity? selectedOption;

  bool get isAnswered => selectedOption != null;

  BranchStep copyWithOption(DailyQuestionOptionEntity option) =>
      BranchStep(question: question, selectedOption: option);

  @override
  bool operator ==(Object other) =>
      other is BranchStep &&
      other.question.id == question.id &&
      other.selectedOption?.id == selectedOption?.id;

  @override
  int get hashCode => Object.hash(question.id, selectedOption?.id);
}
