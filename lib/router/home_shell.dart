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

@RoutePage()
class HomeShellPage extends StatelessWidget {
  const HomeShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => getIt.get<HomeBloc>()..add(HomeStarted()),
        ),
        BlocProvider<DailyActivitiesBloc>(
          create: (context) => getIt.get<DailyActivitiesBloc>()
            ..add(const DailyActivitiesLoadRequested()),
        ),
        BlocProvider<ProfileBloc>(
          create: (context) => getIt.get<ProfileBloc>(),
        ),
      ],
      child: AutoTabsRouter(
        routes: const [
          HomeRoute(),
          DailyActivitiesRoute(),
          CalendarRoute(),
          ProfileRoute()
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          final tabIndex = tabsRouter.activeIndex;
          final tabStack = tabsRouter.stackRouterOfIndex(tabIndex);
          final showBottomNav = tabStack == null || !tabStack.canPop();
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
