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
    @Default({}) Map<String, DateTime> questionSolvedAt,
    double? totalScore,
    @Default([]) List<BranchStep> branchPath,
    @Default(DailyActivitiesPostAnswerStatus.idle)
    DailyActivitiesPostAnswerStatus postAnswerStatus,
    String? postAnswerError,
    DailyAnswerResultEntity? lastPostAnswerResult,
    @Default({}) Map<String, double> questionScore,

    /// Başarı modalı (Tebrikler X puan)
    @Default(false) bool showSuccessDialog,

    /// Oturumda bu ekranda cevaplanan soruların stub'ları (geçici).
    @Default([]) List<DailyQuestionEntity> answeredQuestionStubs,

    /// GET `/api/v1/daily-activities/previous-answers` — en son cevaplanmış gün.
    @Default([]) List<DailyPreviousAnswersByDateEntity> previousAnswers,
  }) = _DailyActivitiesState;

  factory DailyActivitiesState.initial() => const DailyActivitiesState();
}
