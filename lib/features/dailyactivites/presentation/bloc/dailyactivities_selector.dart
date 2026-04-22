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

typedef DailyActivitiesBranchUi = ({
  List<BranchStep> steps,
  String? activeSelectedOptionId,
  bool canSubmit,
});

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
  final list = state.questions;
  if (list.isEmpty) return null;

  DailyQuestionEntity? q;
  if (questionId != null) {
    for (final e in list) {
      if (e.id == questionId) {
        q = e;
        break;
      }
    }
  } else {
    q = list.first;
  }
  if (q == null) return null;
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

class DailyActivitiesPreviousAnswersSelector
    extends DailyActivitiesSelector<List<DailyPreviousAnswersByDateEntity>> {
  DailyActivitiesPreviousAnswersSelector({
    super.key,
    required Widget Function(List<DailyPreviousAnswersByDateEntity> data)
        builder,
  }) : super(
          selector: (state) => state.previousAnswers,
          builder: builder,
        );
}
