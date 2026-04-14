import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/domain/usecases/get_calendar_usecase.dart';
import 'package:karbon/features/calendar/domain/usecases/get_details_usecase.dart';
import 'package:karbon/features/calendar/domain/usecases/get_monthly_activities_usecase.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/sections/calendar_section.dart';
import 'package:karbon/router/navigation.dart';

String _formatCalendarScore(double value) {
  if (value == value.roundToDouble()) {
    return value.round().toString();
  }
  return value.toStringAsFixed(1);
}

String _dateQueryParam(DateTime d) => '${d.year.toString().padLeft(4, '0')}-'
    '${d.month.toString().padLeft(2, '0')}-'
    '${d.day.toString().padLeft(2, '0')}';

bool _isSameCalendarDay(String dateStr, DateTime day) {
  final parsed = DateTime.tryParse(dateStr);
  if (parsed == null) return false;
  return parsed.year == day.year &&
      parsed.month == day.month &&
      parsed.day == day.day;
}

double? _scoreForDay(List<DailyCalendarItemEntity> items, DateTime day) {
  for (final item in items) {
    if (_isSameCalendarDay(item.date, day)) return item.score;
  }
  return null;
}

double? _monthlyDayTotalScore(
  List<DailyMonthlyDayScoreEntity> dailyScores,
  DateTime day,
) {
  for (final row in dailyScores) {
    if (_isSameCalendarDay(row.date, day)) return row.totalScore;
  }
  return null;
}

@RoutePage()
class CalendarFirstOpenPage extends StatefulWidget {
  const CalendarFirstOpenPage({super.key});

  @override
  State<CalendarFirstOpenPage> createState() => _CalendarFirstOpenPageState();
}

class _CalendarFirstOpenPageState extends State<CalendarFirstOpenPage> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  DailyCalendarEntity? _calendar;
  DailyMonthlyActivitiesEntity? _monthly;
  DailyDayDetailEntity? _dayDetail;

  bool _calendarLoading = true;
  bool _dayDetailLoading = false;

  final GetCalendarUsecase _getCalendar = getIt<GetCalendarUsecase>();
  final GetMonthlyActivitiesUsecase _getMonthlyActivities =
      getIt<GetMonthlyActivitiesUsecase>();
  final GetDetailsUsecase _getDetails = getIt<GetDetailsUsecase>();

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _focusedDay = DateTime(now.year, now.month, now.day);
    _selectedDay = _focusedDay;
    _loadCalendarData();
  }

  Future<void> _loadCalendarData() async {
    setState(() {
      _calendarLoading = true;
      _dayDetail = null;
    });
    final year = _focusedDay.year;
    final month = _focusedDay.month;
    final period = _selectedDay.day <= 15 ? 1 : 2;

    final calendarFuture = _getCalendar(year: year, month: month);
    final monthlyFuture =
        _getMonthlyActivities(year: year, month: month, period: period);
    final calendarResult = await calendarFuture;
    final monthlyResult = await monthlyFuture;

    if (!mounted) return;

    DailyCalendarEntity? cal;
    DailyMonthlyActivitiesEntity? mon;
    calendarResult.fold((_) {}, (c) => cal = c);
    monthlyResult.fold((_) {}, (m) => mon = m);

    setState(() {
      _calendar = cal;
      _monthly = mon;
      _calendarLoading = false;
    });

    await _loadDayDetail();
  }

  Future<void> _loadDayDetail() async {
    setState(() {
      _dayDetailLoading = true;
      _dayDetail = null;
    });
    final result = await _getDetails(date: _dateQueryParam(_selectedDay));
    if (!mounted) return;
    result.fold(
      (_) => setState(() {
        _dayDetail = null;
        _dayDetailLoading = false;
      }),
      (d) => setState(() {
        _dayDetail = d;
        _dayDetailLoading = false;
      }),
    );
  }

  String get _monthTotalScoreLabel {
    if (_calendarLoading) return '…';
    final monthly = _monthly;
    if (monthly != null) {
      return _formatCalendarScore(monthly.totalMonthlyScore);
    }
    final cal = _calendar;
    if (cal != null) {
      return _formatCalendarScore(cal.totalScore);
    }
    return '—';
  }

  String get _selectedDayScoreLabel {
    if (_calendarLoading || _dayDetailLoading) return '…';
    final detail = _dayDetail;
    if (detail != null) {
      return _formatCalendarScore(detail.totalScore);
    }
    final cal = _calendar;
    final mon = _monthly;

    final fromCalendar =
        cal != null ? _scoreForDay(cal.items, _selectedDay) : null;
    if (fromCalendar != null) return _formatCalendarScore(fromCalendar);

    final fromMonthly = mon != null
        ? _monthlyDayTotalScore(mon.dailyScores, _selectedDay)
        : null;
    if (fromMonthly != null) return _formatCalendarScore(fromMonthly);

    return '—';
  }

  void _openSeeAll() {
    final period = _selectedDay.day <= 15 ? 1 : 2;
    context.router.push(SeeAllRoute(
      year: _focusedDay.year,
      month: _focusedDay.month,
      period: period,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          CalendarSection(
            focusedDay: _focusedDay,
            selectedDay: _selectedDay,
            monthTotalScore: _monthTotalScoreLabel,
            selectedDayScore: _selectedDayScoreLabel,
            onDaySelected: (selected, focused) {
              final prevFocus = _focusedDay;
              final prevSelected = _selectedDay;
              setState(() {
                _selectedDay =
                    DateTime(selected.year, selected.month, selected.day);
                _focusedDay = focused;
              });
              final newSelected = DateTime(
                selected.year,
                selected.month,
                selected.day,
              );
              final monthChanged = prevFocus.year != focused.year ||
                  prevFocus.month != focused.month;
              final halfChanged =
                  (prevSelected.day <= 15) != (newSelected.day <= 15);
              if (monthChanged || halfChanged) {
                _loadCalendarData();
              } else {
                _loadDayDetail();
              }
            },
            onPageChanged: (focused) {
              setState(() => _focusedDay = focused);
              _loadCalendarData();
            },
            onPreviousMonth: () {
              final target =
                  DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
              if (target.isBefore(DateTime(2018, 1, 1))) return;
              setState(() {
                _focusedDay = target;
                _selectedDay = target;
              });
              _loadCalendarData();
            },
            onNextMonth: () {
              final target =
                  DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
              if (target.isAfter(DateTime(2040, 12, 1))) return;
              setState(() {
                _focusedDay = target;
                _selectedDay = target;
              });
              _loadCalendarData();
            },
            onShowAll: _openSeeAll,
          ),
        ],
      ),
    );
  }
}
