import 'package:freezed_annotation/freezed_annotation.dart';

part 'carbon_calculate_event.freezed.dart';

@freezed
sealed class CarbonCalculateEvent with _$CarbonCalculateEvent {
  /// Aktif anketi getir — GET `/api/v1/polls/active`
  const factory CarbonCalculateEvent.loadRequested() =
      CarbonCalculateLoadRequested;

  /// Sonraki soruya / bilgi adımından sorulara geç.
  const factory CarbonCalculateEvent.nextPressed() = CarbonCalculateNextPressed;

  /// Önceki soruya dön.
  const factory CarbonCalculateEvent.backPressed() = CarbonCalculateBackPressed;

  /// Kullanıcı bir seçenek seçti.
  const factory CarbonCalculateEvent.answerSelected({
    required String questionId,
    required String optionId,
  }) = CarbonCalculateAnswerSelected;

  /// Mevcut cevapları taslak olarak kaydet — POST `/api/v1/polls/draft`
  const factory CarbonCalculateEvent.saveDraftRequested() =
      CarbonCalculateSaveDraftRequested;

  /// Tüm cevapları gönder ve anketi tamamla — POST `/api/v1/polls/answers`
  const factory CarbonCalculateEvent.submitAnswersRequested() =
      CarbonCalculateSubmitAnswersRequested;

  /// Anketi tekrar hesapla (cevapları sıfırla).
  const factory CarbonCalculateEvent.calculateAgainPressed() =
      CarbonCalculateCalculateAgainPressed;

  /// Ana sayfaya dön.
  const factory CarbonCalculateEvent.goToHomePressed() =
      CarbonCalculateGoToHomePressed;
}
