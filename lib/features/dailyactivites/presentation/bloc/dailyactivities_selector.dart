import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/dailyactivites/domain/daily_root_questions.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';

typedef DailyActivitiesQuestionRowData = (
  String text,
  DailyQuestionEntity entity
);

typedef DailyActivitiesSubmitButtonUi = ({
  bool hasSelection,
  bool canSubmit,
});

typedef DailyActivitiesActiveQuestionFormVm = ({
  DailyQuestionEntity? question,
  String? selectedOptionId,
});

typedef DailyActivitiesHistoryData = ({
  List<DailyQuestionEntity> solvedQuestions,
  Map<String, DateTime> questionSolvedAt,
});

typedef DailyActivitiesBranchUi = ({
  List<BranchStep> steps, // tüm adımlar
  String? activeSelectedOptionId, // son adımın seçili option id'si (null → henüz yok)
  bool canSubmit,
});

DailyActivitiesSubmitButtonUi selectSubmitButtonUi(DailyActivitiesState s) => (
      hasSelection: s.branchPath.isNotEmpty,
      canSubmit: s.branchPath.isNotEmpty &&
          s.postAnswerStatus != DailyActivitiesPostAnswerStatus.submitting,
    );

DailyActivitiesActiveQuestionFormVm selectActiveQuestionForm(
        DailyActivitiesState s) =>
    (
      question: s.branchPath.isEmpty ? null : s.branchPath.last.question,
      selectedOptionId:
          s.branchPath.isEmpty ? null : s.branchPath.last.selectedOption?.id,
    );

DailyActivitiesHistoryData selectHistoryData(DailyActivitiesState state) {
  return (
    solvedQuestions: state.answeredQuestionStubs,
    questionSolvedAt: state.questionSolvedAt
  );
}

DailyActivitiesBranchUi selectBranchUi(DailyActivitiesState s) {
  final steps = s.branchPath;
  final lastOption = steps.isEmpty ? null : steps.last.selectedOption;
  return (
    steps: steps,
    activeSelectedOptionId: lastOption?.id,
    canSubmit: lastOption != null &&
        s.postAnswerStatus != DailyActivitiesPostAnswerStatus.submitting,
  );
}

class DailyActivitiesSelector<T>
    extends BlocSelector<DailyActivitiesBloc, DailyActivitiesState, T> {
  DailyActivitiesSelector({
    super.key,
    required super.selector,
    required Widget Function(T value) builder,
  }) : super(builder: (context, value) => builder(value));
}

/// `questionId` null → listedeki ilk soru; dolu → id ile eşleşen soru.
class DailyActivitiesQuestionRowSelector
    extends DailyActivitiesSelector<DailyActivitiesQuestionRowData?> {
  DailyActivitiesQuestionRowSelector({
    super.key,
    String? questionId,
    required Widget Function(DailyActivitiesQuestionRowData data) builder,
  }) : super(
          selector: (state) => selectQuestionRow(state, questionId),
          builder: (data) {
            if (data == null) {
              return const SizedBox.shrink();
            }
            return builder(data);
          },
        );
}

DailyActivitiesQuestionRowData? selectQuestionRow(
  DailyActivitiesState state,
  String? questionId,
) {
  if (state.questions.isEmpty) return null;
  final DailyQuestionEntity q;
  if (questionId != null) {
    try {
      q = state.questions.firstWhere((e) => e.id == questionId);
    } on StateError {
      return null;
    }
  } else {
    q = state.questions.first;
  }
  return (q.text, q);
}

class DailyActivitiesQuestionsSelector
    extends DailyActivitiesSelector<List<DailyQuestionEntity>> {
  DailyActivitiesQuestionsSelector({
    super.key,
    required Widget Function(List<DailyQuestionEntity> questions) builder,
  }) : super(
          selector: (state) => rootQuestions(state.questions),
          builder: builder,
        );
}

class DailyActivitiesHistorySelector
    extends DailyActivitiesSelector<DailyActivitiesHistoryData> {
  DailyActivitiesHistorySelector({
    super.key,
    required Widget Function(DailyActivitiesHistoryData data) builder,
  }) : super(
          selector: selectHistoryData,
          builder: builder,
        );
}

class DailyActivitiesActiveQuestionFormSelector
    extends DailyActivitiesSelector<DailyActivitiesActiveQuestionFormVm> {
  DailyActivitiesActiveQuestionFormSelector({
    super.key,
    required Widget Function(DailyActivitiesActiveQuestionFormVm vm) builder,
  }) : super(
          selector: selectActiveQuestionForm,
          builder: builder,
        );
}

class DailyActivitiesSubmitButtonSelector
    extends DailyActivitiesSelector<DailyActivitiesSubmitButtonUi> {
  DailyActivitiesSubmitButtonSelector({
    super.key,
    required Widget Function(DailyActivitiesSubmitButtonUi ui) builder,
  }) : super(
          selector: selectSubmitButtonUi,
          builder: builder,
        );
}

class DailyActivitiesBranchSelector
    extends DailyActivitiesSelector<DailyActivitiesBranchUi> {
  DailyActivitiesBranchSelector({
    super.key,
    required Widget Function(DailyActivitiesBranchUi ui) builder,
  }) : super(
          selector: selectBranchUi,
          builder: builder,
        );
}
