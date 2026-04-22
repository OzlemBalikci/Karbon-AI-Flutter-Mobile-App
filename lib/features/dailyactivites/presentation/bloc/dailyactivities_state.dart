import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

part 'dailyactivities_state.freezed.dart';

/// Liste / ilk yükleme
enum DailyActivitiesScreenStatus {
  initial,
  loading,
  success,
  failure,
}

/// Cevap gönderme (Puanı Al)
enum DailyActivitiesPostAnswerStatus {
  idle,
  submitting,
  success,
  error,
}

@freezed
abstract class DailyActivitiesState with _$DailyActivitiesState {
  const factory DailyActivitiesState({
    @Default(DailyActivitiesScreenStatus.initial)
    DailyActivitiesScreenStatus screenStatus,
    @Default([]) List<DailyQuestionEntity> questions,
    String? screenError,
    DailyPendingEntity? pending,
    @Default([]) List<DailyCalendarItemEntity> historyItems,
    double? totalScore,
    @Default([]) List<BranchStep> branchPath,
    @Default(DailyActivitiesPostAnswerStatus.idle)
    DailyActivitiesPostAnswerStatus postAnswerStatus,
    String? postAnswerError,
    DailyAnswerResultEntity? lastPostAnswerResult,
    @Default(false) bool showSuccessDialog,
    @Default([]) List<DailyPreviousAnswersByDateEntity> previousAnswers,
  }) = _DailyActivitiesState;

  factory DailyActivitiesState.initial() => const DailyActivitiesState();
}
