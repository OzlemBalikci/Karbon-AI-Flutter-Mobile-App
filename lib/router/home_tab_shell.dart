import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_event.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';

/// Ana sekmede [HomeRoute], [UsefulinfoRoute], [CarbonCalculateRoute],
/// [LeaderofmonthRoute] yığını; ilgili bloc'lar bu sekme ağacında oluşturulur.
@RoutePage()
class HomeTabShellPage extends StatelessWidget {
  const HomeTabShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => getIt<HomeBloc>()..add(const HomeFetchRequested()),
        ),
        BlocProvider(
          create: (_) => CarbonCalculateBloc(
            getIt.get<CarbonCalculateRepository>(),
          ),
        ),
        BlocProvider<LeaderofmonthBloc>(
          create: (_) => getIt<LeaderofmonthBloc>(),
        ),
        BlocProvider<UsefulinfoBloc>(
          create: (_) => getIt<UsefulinfoBloc>(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
