import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';

typedef DailyActivitiesQuestionRowData = (
  String text,
  DailyQuestionEntity entity
);

class DailyActivitiesSelector<T>
    extends BlocSelector<DailyActivitiesBloc, DailyActivitiesState, T> {
  DailyActivitiesSelector({
    super.key,
    required super.selector,
    required Widget Function(BuildContext context, T value) builder,
  }) : super(builder: builder);
}

/// `questionId` null → listedeki ilk soru; dolu → id ile eşleşen soru.
class DailyActivitiesQuestionRowSelector
    extends DailyActivitiesSelector<DailyActivitiesQuestionRowData?> {
  DailyActivitiesQuestionRowSelector({
    super.key,
    String? questionId,
    required Widget Function(
      BuildContext context,
      DailyActivitiesQuestionRowData data,
    ) builder,
  }) : super(
          selector: (state) => selectQuestionRow(state, questionId),
          builder: (context, data) {
            if (data == null) {
              return const SizedBox.shrink();
            }
            return builder(context, data);
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

// Tüm soruları List olarak döndürür; sadece liste değişince rebuild eder
class DailyActivitiesQuestionsSelector
    extends DailyActivitiesSelector<List<DailyQuestionEntity>> {
  DailyActivitiesQuestionsSelector({
    super.key,
    required Widget Function(
            BuildContext context, List<DailyQuestionEntity> questions)
        builder,
  }) : super(
          selector: (state) => state.questions,
          builder: builder,
        );
}
