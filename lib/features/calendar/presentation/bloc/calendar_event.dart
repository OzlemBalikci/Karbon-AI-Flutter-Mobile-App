import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
sealed class CalendarEvent with _$CalendarEvent {
  /// BLoC başlangıç state'ini kurar, veri yüklemez.
  const factory CalendarEvent.started({
    DateTime? initialDay,
  }) = CalendarStarted;

  /// Calendar First Open UI açıldığında çağrılır.
  const factory CalendarEvent.calendarFirstOpenPageOpened({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarFirstOpenPageOpened;

  /// Day Detail UI açıldığında sadece gün detayı yükler.
  const factory CalendarEvent.dayDetailPageOpened({
    required DateTime selectedDay,
  }) = CalendarDayDetailPageOpened;

  /// Selected Question Detail UI açıldığında soru detayını yükler.
  const factory CalendarEvent.questionDetailPageOpened({
    required String questionId,
  }) = CalendarQuestionDetailPageOpened;

  /// See All UI açıldığında aylık datayı yükler.
  const factory CalendarEvent.monthDetailPageOpened({
    required int year,
    required int month,
  }) = CalendarMonthDetailPageOpened;

  /// Takvimde bir güne tıklandı (onDaySelected).
  const factory CalendarEvent.daySelected({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarDaySelected;

  /// TableCalendar swipe ile ay değiştirdi (onPageChanged).
  const factory CalendarEvent.pageScrolled({
    required DateTime focusedDay,
  }) = CalendarPageScrolled;

  /// "← Kasım" butonuna basıldı — bir önceki aya geçer.
  const factory CalendarEvent.previousMonthTapped() =
      CalendarPreviousMonthTapped;

  /// "Ocak →" butonuna basıldı — bir sonraki aya geçer.
  const factory CalendarEvent.nextMonthTapped() = CalendarNextMonthTapped;

  /// Soru detay sayfasından çıkıldı — selectedQuestion temizlenir.
  const factory CalendarEvent.questionDetailDismissed() =
      CalendarQuestionDetailDismissed;

  /// "Tümünü Göster" butonuna basıldı — BLoC navigasyon argümanlarını hesaplar.
  const factory CalendarEvent.seeAllRequested() = CalendarSeeAllRequested;

  /// UI navigasyonu tamamladı — seeAllNav temizlenir.
  const factory CalendarEvent.seeAllHandled() = CalendarSeeAllHandled;
}
