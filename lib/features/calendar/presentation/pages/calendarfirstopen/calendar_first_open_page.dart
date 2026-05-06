import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_selector.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/sections/calendar_section.dart';
import 'package:karbon/router/navigation.dart';

@RoutePage()
class CalendarFirstOpenPage extends StatefulWidget {
  const CalendarFirstOpenPage({super.key});

  @override
  State<CalendarFirstOpenPage> createState() => _CalendarFirstOpenPageState();
}

class _CalendarFirstOpenPageState extends State<CalendarFirstOpenPage> {
  void _openSeeAll(BuildContext context, CalendarState state) {
    final period = state.selectedDay.day <= 15 ? 1 : 2;
    context.router.push(SeeAllRoute(
      year: state.focusedDay.year,
      month: state.focusedDay.month,
      period: period,
    ));
  }

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    context.read<CalendarBloc>().add(CalendarEvent.started(initialDay: now));
    context.read<CalendarBloc>().add(
          CalendarEvent.calendarFirstOpenPageOpened(
            focusedDay: now,
            selectedDay: now,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocBuilder<CalendarBloc, CalendarState>(
        buildWhen: (prev, curr) =>
            prev.focusedDay != curr.focusedDay ||
            prev.selectedDay != curr.selectedDay ||
            prev.calendar != curr.calendar ||
            prev.monthly != curr.monthly ||
            prev.dayDetail != curr.dayDetail ||
            prev.calendarFirstOpenAsyncStatus !=
                curr.calendarFirstOpenAsyncStatus ||
            prev.monthlyAsyncStatus != curr.monthlyAsyncStatus ||
            prev.dayDetailAsyncStatus != curr.dayDetailAsyncStatus,
        builder: (context, state) {
          final scores = selectCalendarScoreLabels(state);
          return Stack(
            children: [
              CalendarSection(
                focusedDay: state.focusedDay,
                selectedDay: state.selectedDay,
                monthTotalScore: scores.monthTotal,
                selectedDayScore: scores.selectedDayScore,
                onDaySelected: (selected, focused) {
                  context.read<CalendarBloc>().add(
                        CalendarEvent.daySelected(
                          focusedDay: focused,
                          selectedDay: selected,
                        ),
                      );
                },
                onPageChanged: (focused) {
                  context.read<CalendarBloc>().add(
                        CalendarEvent.pageScrolled(
                          focusedDay: focused,
                        ),
                      );
                },
                onPreviousMonth: () {
                  final target = DateTime(
                      state.focusedDay.year, state.focusedDay.month - 1, 1);
                  if (target.isBefore(DateTime(2018, 1, 1))) return;
                  context.read<CalendarBloc>().add(
                        const CalendarEvent.previousMonthTapped(),
                      );
                },
                onNextMonth: () {
                  final target = DateTime(
                      state.focusedDay.year, state.focusedDay.month + 1, 1);
                  if (target.isAfter(DateTime(2040, 12, 1))) return;
                  context.read<CalendarBloc>().add(
                        const CalendarEvent.nextMonthTapped(),
                      );
                },
                onShowAll: () => _openSeeAll(context, state),
              ),
            ],
          );
        },
      ),
    );
  }
}
