import 'package:intl/intl.dart';

/// Türkçe tarih / ay etiketleri için `intl` locale kodu.
const String kAppDateLocale = 'tr';

/// Puan, ağaç sayısı vb. için Türkçe binlik ayırıcı (`1.234`).
String formatTurkishDecimal(num value) =>
    NumberFormat.decimalPattern('tr_TR').format(value);

/// Örn. `29 Nisan 2026` — kartlar ve listeler.
String formatFullDate(DateTime date) =>
    DateFormat.yMMMMd(kAppDateLocale).format(date);

/// Haftanın günü tam adı (örn. `Çarşamba`).
String formatWeekday(DateTime date) =>
    DateFormat.EEEE(kAppDateLocale).format(date);

/// Örn. `Nisan 2026`.
String formatMonthYear(DateTime date) =>
    DateFormat('MMMM yyyy', kAppDateLocale).format(date);

/// Yalnızca ay adı (örn. `Nisan`).
String formatMonthName(DateTime date) =>
    DateFormat.MMMM(kAppDateLocale).format(date);

/// Doğum tarihi — `dd.MM.yyyy`, yerel saat dilimi.
String formatBirthDate(DateTime date) =>
    DateFormat('dd.MM.yyyy', kAppDateLocale).format(date.toLocal());
