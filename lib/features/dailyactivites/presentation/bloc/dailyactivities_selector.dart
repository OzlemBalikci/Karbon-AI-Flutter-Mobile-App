import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';

typedef DailyActivitiesQuestionRowData = (
  String text,
  DailyQuestionEntity entity
);

typedef DailyActivitiesBranchUi = ({
  List<DailyQuestionEntity> steps,
  Map<String, DailyQuestionOptionEntity> selectedOptions,
  bool canSubmit,
});

class DailyActivitiesSelector<T>
    extends BlocSelector<DailyActivitiesBloc, DailyActivitiesState, T> {
  DailyActivitiesSelector({
    super.key,
    required super.selector,
    required Widget Function(T value) builder,
  }) : super(builder: (context, value) => builder(value));
}

class DailyActivitiesScreenStatusSelector extends BlocSelector<
    DailyActivitiesBloc, DailyActivitiesState, DailyActivitiesStatus> {
  DailyActivitiesScreenStatusSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.status);
}

class DailyActivitiesQuestionsSelector
    extends DailyActivitiesSelector<List<DailyQuestionEntity>> {
  DailyActivitiesQuestionsSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.questions);
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

class DailyActivitiesQuestionRowSelector
    extends DailyActivitiesSelector<DailyActivitiesQuestionRowData?> {
  DailyActivitiesQuestionRowSelector({
    super.key,
    String? questionId,
    required Widget Function(DailyActivitiesQuestionRowData data) builder,
  }) : super(
          selector: (state) => selectQuestionRow(state, questionId),
          builder: (data) {
            if (data == null) return const SizedBox.shrink();
            return builder(data);
          },
        );
}

DailyActivitiesBranchUi selectBranchUi(DailyActivitiesState state) {
  return (
    steps: state.visibleSteps,
    selectedOptions: state.selectedOptions,
    canSubmit: state.canSubmit &&
        state.postStatus != DailyActivitiesPostStatus.submitting &&
        state.postStatus != DailyActivitiesPostStatus.success,
  );
}

class DailyActivitiesBranchSelector
    extends DailyActivitiesSelector<DailyActivitiesBranchUi> {
  DailyActivitiesBranchSelector({
    super.key,
    required super.builder,
  }) : super(selector: selectBranchUi);
}

class DailyActivitiesPreviousAnswersSelector
    extends DailyActivitiesSelector<List<DailyPreviousAnswersByDateEntity>> {
  DailyActivitiesPreviousAnswersSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.previousAnswers);
}
