import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

part 'dailyactivities_event.freezed.dart';

@freezed
sealed class DailyActivitiesEvent with _$DailyActivitiesEvent {
  const factory DailyActivitiesEvent.loadRequested() =
      DailyActivitiesLoadRequested;

  const factory DailyActivitiesEvent.questionSelected(
    DailyQuestionEntity question,
  ) = DailyActivitiesQuestionSelected;

  const factory DailyActivitiesEvent.optionSelected(
    DailyQuestionOptionEntity option,
  ) = DailyActivitiesOptionSelected;

  const factory DailyActivitiesEvent.branchStepReopened(int stepIndex) =
      DailyActivitiesBranchStepReopened;

  const factory DailyActivitiesEvent.postAnswerRequested() =
      DailyActivitiesPostAnswerRequested;

  const factory DailyActivitiesEvent.successDismissed() =
      DailyActivitiesSuccessDismissed;

  const factory DailyActivitiesEvent.detailClosed() =
      DailyActivitiesDetailClosed;
}
