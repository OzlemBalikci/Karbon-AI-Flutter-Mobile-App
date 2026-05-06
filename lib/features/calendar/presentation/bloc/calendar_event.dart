import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
sealed class CalendarEvent with _$CalendarEvent {
  /// Takvim sayfası ilk kez açıldığında.
  /// Grid + monthly + dayDetail paralel yüklenir.
  const factory CalendarEvent.started({
    DateTime? initialDay,
  }) = CalendarStarted;

  /// Sayfa zaten açıkken tekrar focus aldığında (örn. başka sayfadan geri dönüş).
  /// Seçili günün detayı tazelenır; grid değişmez.
  const factory CalendarEvent.refreshRequested() = CalendarRefreshRequested;

  /// ← / → ay butonlarına basıldığında.
  /// Grid + monthly yeniden yüklenir, seçili gün hedef ayın 1'i olur.
  const factory CalendarEvent.previousMonthTapped() =
      CalendarPreviousMonthTapped;

  const factory CalendarEvent.nextMonthTapped() = CalendarNextMonthTapped;

  /// TableCalendar swipe ile ay değiştirdiğinde (onPageChanged callback'i).
  /// Grid + monthly yeniden yüklenir.
  const factory CalendarEvent.pageScrolled({
    required DateTime focusedDay,
  }) = CalendarPageScrolled;

  /// Takvimde bir güne tıklandığında (onDaySelected callback'i).
  /// Aynı ay içindeyse sadece dayDetail yüklenir.
  /// Ay değiştiyse grid + monthly + dayDetail yüklenir.
  const factory CalendarEvent.daySelected({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarDaySelected;

  /// Hata durumunda kullanıcı "Tekrar Dene" butonuna bastığında.
  /// Grid hatası varsa grid, detay hatası varsa detay yeniden yüklenir.
  const factory CalendarEvent.retryTapped() = CalendarRetryTapped;
}
