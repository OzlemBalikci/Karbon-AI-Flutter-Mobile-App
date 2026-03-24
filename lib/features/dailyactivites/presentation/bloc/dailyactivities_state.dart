import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activity_answer_result_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_question_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_pending_entity.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_calendar_item_entity.dart';

part 'dailyactivities_state.freezed.dart';

/// Liste / ilk yükleme
enum DailyActivitiesListStatus {
  initial,
  loading,
  success,
  error,
}

/// Cevap gönderme (Puanı Al)
enum DailyActivitiesSubmitStatus {
  idle,
  submitting,
  success,
  error,
}

@freezed
abstract class DailyActivitiesState with _$DailyActivitiesState {
  const factory DailyActivitiesState({
    @Default(DailyActivitiesListStatus.initial)
    DailyActivitiesListStatus listStatus,
    @Default([]) List<DailyQuestionEntity> questions,
    String? listError,
    DailyPendingEntity? pending,
    @Default([]) List<DailyCalendarItemEntity> historyItems,
    double? totalScore,

    /// null → ana ekran; dolu → "Seçili Soru" akışı
    DailyQuestionEntity? activeQuestion,
    String? selectedOptionId,
    @Default(DailyActivitiesSubmitStatus.idle)
    DailyActivitiesSubmitStatus submitStatus,
    String? submitError,
    DailyActivityAnswerResultEntity? lastSubmitResult,

    /// Başarı modalı (Tebrikler X puan)
    @Default(false) bool showSuccessDialog,

    /// API gelince: getHistory() ile doldurursun
    @Default([]) List<DailyQuestionEntity> answeredQuestionStubs,
  }) = _DailyActivitiesState;

  factory DailyActivitiesState.initial() => const DailyActivitiesState();
}
