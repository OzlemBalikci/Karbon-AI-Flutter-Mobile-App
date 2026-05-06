import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

part 'dailyactivities_state.freezed.dart';

enum DailyActivitiesStatus {
  initial,
  loading,
  success,
  failure,
}

enum DailyActivitiesPostStatus {
  idle,
  submitting,
  success,
  error,
}

@freezed
abstract class DailyActivitiesState with _$DailyActivitiesState {
  const DailyActivitiesState._();

  const factory DailyActivitiesState({
    @Default(DailyActivitiesStatus.initial) DailyActivitiesStatus status,
    @Default([]) List<DailyQuestionEntity> allQuestions,
    @Default([]) List<DailyQuestionEntity> questions,
    DailyPendingEntity? pending,
    @Default([]) List<DailyCalendarItemEntity> historyItems,
    @Default([]) List<DailyPreviousAnswersByDateEntity> previousAnswers,
    String? screenError,
    DailyQuestionEntity? selectedQuestion,
    @Default([]) List<DailyQuestionEntity> visibleSteps,
    @Default({}) Map<String, DailyQuestionOptionEntity> selectedOptions,
    @Default(DailyActivitiesPostStatus.idle)
    DailyActivitiesPostStatus postStatus,
    DailyAnswerResultEntity? lastResult,
    @Default(false) bool showSuccessDialog,
    String? postError,
  }) = _DailyActivitiesState;

  factory DailyActivitiesState.initial() => const DailyActivitiesState();

  bool get canSubmit {
    if (visibleSteps.isEmpty) return false;
    final lastStep = visibleSteps.last;
    final selected = selectedOptions[lastStep.id];
    if (selected == null) return false;
    return selected.nextQuestionId == null || selected.nextQuestionId!.isEmpty;
  }
}
