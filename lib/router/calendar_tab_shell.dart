import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';

@RoutePage()
class CalendarShellPage extends StatelessWidget {
  const CalendarShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalendarBloc>(
          create: (_) =>
              getIt<CalendarBloc>()..add(const CalendarEvent.started()),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
