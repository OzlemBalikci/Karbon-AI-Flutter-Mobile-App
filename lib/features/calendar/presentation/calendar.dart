import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

part 'widgets/button.dart';
part 'widgets/calendar_box.dart';
part 'sections/calendar_section.dart';
part 'widgets/score_card.dart';

@RoutePage()
class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
      ),
    );
  }
}
