import 'package:flutter/material.dart';
import 'package:karbon/widgets/bottom_navigation_bar.dart' as app_nav;
import 'package:auto_route/auto_route.dart';
import 'package:karbon/router/navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/home/presentation/bloc/home_event.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_event.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_bloc.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_event.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart';
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_event.dart';

// Sabit set: tam ekran açılan, alt barı gizlemesi gereken rotalar
const _fullScreenRoutes = <String>{
  SelectedQuestionRoute.name,
  SeeAllRoute.name,
  DayDetailRoute.name,
  CalendarSelectedQuestionDetailRoute.name,
  UsefulinfoRoute.name,
  CarbonCalculateRoute.name,
  LeaderofmonthRoute.name,
};

@RoutePage()
class HomeShellPage extends StatelessWidget {
  const HomeShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) =>
              getIt<HomeBloc>()..add(const HomeEvent.fetchRequested()),
        ),
        BlocProvider(
          create: (context) => CarbonCalculateBloc(
            getIt.get<CarbonCalculateRepository>(),
          )..add(const CarbonCalculateEvent.loadRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<LeaderofmonthBloc>()
            ..add(const LeaderofmonthEvent.fetchRequested()),
        ),
        BlocProvider<UsefulinfoBloc>(
          create: (_) =>
              getIt<UsefulinfoBloc>()..add(const UsefulinfoEvent.fetchInfos()),
        ),
        BlocProvider<DailyActivitiesBloc>(
          create: (_) => getIt<DailyActivitiesBloc>()
            ..add(const DailyActivitiesLoadRequested()),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) =>
              getIt<ProfileBloc>()..add(const ProfileEvent.fetchProfile()),
        ),
      ],
      child: AutoTabsRouter(
        routes: const [
          HomeTabShellRoute(),
          DailyActivitiesShellRoute(),
          CalendarShellRoute(),
          ProfileRoute(),
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          final tabStack =
              tabsRouter.stackRouterOfIndex(tabsRouter.activeIndex);
          final topRouteName = tabStack?.topRoute.name;
          final showBottomNav = !_fullScreenRoutes.contains(topRouteName);

          return Scaffold(
            body: child,
            bottomNavigationBar: showBottomNav
                ? SafeArea(
                    child: app_nav.AppBottomNavigationBar(
                      selectedIndex: tabsRouter.activeIndex,
                      onTap: tabsRouter.setActiveIndex,
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }
}
