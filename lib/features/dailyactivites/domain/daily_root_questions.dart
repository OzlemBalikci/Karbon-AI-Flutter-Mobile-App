import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class QuestionChain {
  QuestionChain({required this.root, required List<DailyQuestionEntity> all})
      : _all = all,
        visibleQuestions = [root],
        selectedOptions = {};

  final DailyQuestionEntity root;
  final List<DailyQuestionEntity> _all;
  final List<DailyQuestionEntity> visibleQuestions;
  final Map<String, DailyQuestionOptionEntity?> selectedOptions;

  bool get isCompleted {
    final last = visibleQuestions.last;
    final selected = selectedOptions[last.id];
    if (selected == null) return false;
    return selected.nextQuestionId == null || selected.nextQuestionId!.isEmpty;
  }

  QuestionChain select({
    required DailyQuestionEntity question,
    required DailyQuestionOptionEntity option,
  }) {
    final idx = visibleQuestions.indexOf(question);
    final newVisible = visibleQuestions.sublist(0, idx + 1);
    final newSelected =
        Map<String, DailyQuestionOptionEntity>.from(selectedOptions)
          ..removeWhere((id, _) => !newVisible.map((q) => q.id).contains(id))
          ..[question.id] = option;

    if (option.nextQuestionId != null && option.nextQuestionId!.isNotEmpty) {
      final next = _all.firstWhere((q) => q.id == option.nextQuestionId);
      newVisible.add(next);
    }

    return QuestionChain(root: root, all: _all)
      ..visibleQuestions.clear()
      ..visibleQuestions.addAll(newVisible)
      ..selectedOptions.addAll(newSelected);
  }

  List<DailySelectedAnswerEntity> get answers => selectedOptions.entries
      .map((e) => DailySelectedAnswerEntity(
            questionId: e.key,
            selectedOptionId: e.value?.id ?? '',
          ))
      .toList();
}
