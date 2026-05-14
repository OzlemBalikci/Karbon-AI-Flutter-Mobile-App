import 'package:flutter/material.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/bottom_navigation_bar.dart' as app_nav;
import 'package:auto_route/auto_route.dart';
import 'package:karbon/router/navigation.dart';

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
    return AutoTabsRouter(
      routes: const [
        HomeTabShellRoute(),
        DailyActivitiesShellRoute(),
        CalendarShellRoute(),
        ProfileTabShellRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        final tabStack = tabsRouter.stackRouterOfIndex(tabsRouter.activeIndex);
        final topRouteName = tabStack?.topRoute.name;
        final showBottomNav = !_fullScreenRoutes.contains(topRouteName);

        return Scaffold(
          body: child,
          bottomNavigationBar: showBottomNav
              ? Padding(
                  padding: const EdgeInsets.only(bottom: AppThemeSpacing.s4),
                  child: SafeArea(
                    child: app_nav.AppBottomNavigationBar(
                      selectedIndex: tabsRouter.activeIndex,
                      onTap: tabsRouter.setActiveIndex,
                    ),
                  ),
                )
              : null,
        );
      },
    );
  }
}
