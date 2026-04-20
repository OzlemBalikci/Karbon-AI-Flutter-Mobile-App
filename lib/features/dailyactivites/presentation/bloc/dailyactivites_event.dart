import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

part 'dailyactivites_event.freezed.dart';

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
