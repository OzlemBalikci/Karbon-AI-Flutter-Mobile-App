import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

part 'dailyactivities_event.freezed.dart';

@freezed
sealed class DailyActivitiesEvent with _$DailyActivitiesEvent {
  /// Bugünün sorularını (ve varsa geçmişi) yükle
  const factory DailyActivitiesEvent.loadRequested() =
      DailyActivitiesLoadRequested;

  /// Karttan / listeden soru detayına (Seçili Soru ekranı)
  const factory DailyActivitiesEvent.questionSelected(
    DailyQuestionEntity question,
  ) = DailyActivitiesQuestionSelected;

  /// Dropdown / seçenek listesinden tek seçim (API tek optionId bekliyor)
  const factory DailyActivitiesEvent.optionSelected(String optionId) =
      DailyActivitiesOptionSelected;

  /// Cevaplanmış bir adıma dönüp cevabı değiştir (bu ve sonraki adımlar silinir)
  const factory DailyActivitiesEvent.branchStepReopened(int stepIndex) =
      DailyActivitiesBranchStepReopened;

  /// "Puanı Al" — seçenek seçiliyse cevabı gönder
  const factory DailyActivitiesEvent.postAnswerRequested() =
      DailyActivitiesPostAnswerRequested;

  /// Başarı modalı kapandı → detayı kapat, listeyi yenile
  const factory DailyActivitiesEvent.successDismissed() =
      DailyActivitiesSuccessDismissed;

  /// Geri ile detaydan çık (seçimleri sıfırla)
  const factory DailyActivitiesEvent.detailClosed() =
      DailyActivitiesDetailClosed;
}
