import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_state.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

typedef CarbonProgressData = ({int? current, int? max});
typedef CarbonQuestionViewData = ({
  String questionId,
  String questionText,
  List<PollOptionEntity> options,
  String? selectedOptionId,
  int questionIndex
});

class CarbonCalculateSelector<T>
    extends BlocSelector<CarbonCalculateBloc, CarbonCalculateState, T> {
  CarbonCalculateSelector({
    super.key,
    required super.selector,
    required Widget Function(T) builder,
  }) : super(builder: (_, value) => builder(value));
}

class CarbonCalculateStatusSelector
    extends CarbonCalculateSelector<CarbonCalculateStatus> {
  CarbonCalculateStatusSelector(Widget Function(CarbonCalculateStatus) builder,
      {super.key})
      : super(
          selector: (state) => state.status,
          builder: builder,
        );
}

class CarbonPhaseSelector
    extends CarbonCalculateSelector<CarbonCalculatePhase> {
  CarbonPhaseSelector({
    super.key,
    required Widget Function(CarbonCalculatePhase phase) builder,
  }) : super(
          selector: (state) => state.phase,
          builder: builder,
        );
}

class CarbonProgressSelector
    extends CarbonCalculateSelector<CarbonProgressData> {
  CarbonProgressSelector({
    super.key,
    required Widget Function(CarbonProgressData) builder,
  }) : super(
          selector: (state) => (
            current: state.questions.isNotEmpty ? state.answers.length : null,
            max: state.questions.isNotEmpty ? state.questions.length : null,
          ),
          builder: builder,
        );
}

class CarbonInfoTextSelector extends CarbonCalculateSelector<String> {
  CarbonInfoTextSelector({
    super.key,
    required Widget Function(String infoText) builder,
  }) : super(
          selector: (state) => state.pollDescription,
          builder: builder,
        );
}

class CarbonQuestionContentSelector
    extends CarbonCalculateSelector<CarbonQuestionViewData?> {
  CarbonQuestionContentSelector({
    super.key,
    required Widget Function(CarbonQuestionViewData?) builder,
  }) : super(
          selector: (state) {
            final phase = state.phase;
            if (phase is! CarbonQuestionPhase || state.questions.isEmpty)
              return null;
            final questionIndex = phase.questionIndex;
            if (questionIndex < 0 || questionIndex >= state.questions.length)
              return null;
            final q = state.questions[questionIndex];
            return (
              questionId: q.id,
              questionText: q.text,
              options: q.options,
              selectedOptionId: state.answers[q.id],
              questionIndex: questionIndex,
            );
          },
          builder: builder,
        );
}

class CarbonCalculateIsLastQuestionStepSelector
    extends CarbonCalculateSelector<bool> {
  CarbonCalculateIsLastQuestionStepSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.isLastQuestionStep);
}

class CarbonCalculateIsResultStepSelector
    extends CarbonCalculateSelector<bool> {
  CarbonCalculateIsResultStepSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.isResultStep);
}

class CarbonCalculateIsCurrentQuestionAnsweredSelector
    extends CarbonCalculateSelector<bool> {
  CarbonCalculateIsCurrentQuestionAnsweredSelector({
    super.key,
    required super.builder,
  }) : super(selector: (state) => state.isCurrentQuestionAnswered);
}
