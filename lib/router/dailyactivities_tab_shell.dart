import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';

@RoutePage()
class DailyActivitiesShellPage extends StatelessWidget {
  const DailyActivitiesShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DailyActivitiesBloc>(
      create: (_) => getIt<DailyActivitiesBloc>()
        ..add(const DailyActivitiesLoadRequested()),
      child: const AutoRouter(),
    );
  }
}
