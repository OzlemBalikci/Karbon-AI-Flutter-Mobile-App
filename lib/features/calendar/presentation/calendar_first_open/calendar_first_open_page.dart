import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/calendar/presentation/calendar_first_open/sections/calendar_section.dart';

@RoutePage()
class CalendarFirstOpenPage extends StatefulWidget {
  const CalendarFirstOpenPage({super.key});

  @override
  State<CalendarFirstOpenPage> createState() => _CalendarFirstOpenPageState();
}

class _CalendarFirstOpenPageState extends State<CalendarFirstOpenPage> {
  late DateTime _focusedDay;
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _focusedDay = DateTime(now.year, now.month, now.day);
    _selectedDay = _focusedDay;
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
            onDaySelected: (selected, focused) {
              setState(() {
                _selectedDay =
                    DateTime(selected.year, selected.month, selected.day);
                _focusedDay = focused;
              });
            },
            onPageChanged: (focused) {
              setState(() => _focusedDay = focused);
            },
            onPreviousMonth: () {
              final target =
                  DateTime(_focusedDay.year, _focusedDay.month - 1, 1);
              if (target.isBefore(DateTime(2018, 1, 1))) return;
              setState(() {
                _focusedDay = target;
                _selectedDay = target;
              });
            },
            onNextMonth: () {
              final target =
                  DateTime(_focusedDay.year, _focusedDay.month + 1, 1);
              if (target.isAfter(DateTime(2040, 12, 1))) return;
              setState(() {
                _focusedDay = target;
                _selectedDay = target;
              });
            },
            onShowAll: () {},
          ),
        ],
      ),
    );
  }
}
