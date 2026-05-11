import 'package:intl/intl.dart';

const String kAppDateLocale = 'tr';

String formatTurkishDecimal(num value) =>
    NumberFormat.decimalPattern('tr_TR').format(value);

String formatFullDate(DateTime date) =>
    DateFormat.yMMMMd(kAppDateLocale).format(date);

String formatWeekday(DateTime date) =>
    DateFormat.EEEE(kAppDateLocale).format(date);

String formatMonthYear(DateTime date) =>
    DateFormat('MMMM yyyy', kAppDateLocale).format(date);

String formatMonthName(DateTime date) =>
    DateFormat.MMMM(kAppDateLocale).format(date);

String formatBirthDate(DateTime date) =>
    DateFormat('dd.MM.yyyy', kAppDateLocale).format(date.toLocal());
