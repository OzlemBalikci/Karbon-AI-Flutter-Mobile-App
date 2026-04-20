import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_event.freezed.dart';

@freezed
sealed class CalendarEvent with _$CalendarEvent {
  /// Shell / ilk açılış — odak ve seçim günü, grid + aylık + gün detayı yüklenir.
  const factory CalendarEvent.started({DateTime? initialDay}) = CalendarStarted;

  /// Ay değişimi (sayfa kaydırma veya ay butonları) — grid + aylık yenilenir.
  const factory CalendarEvent.gridReloadRequested({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarGridReloadRequested;

  /// Takvimde gün seçimi — ay/yarı değişmediyse sadece gün detayı yenilenir.
  const factory CalendarEvent.daySelectionChanged({
    required DateTime focusedDay,
    required DateTime selectedDay,
  }) = CalendarDaySelectionChanged;
}
