import 'package:flutter/material.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/bottom_navigation_bar.dart' as app_nav;
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/router/navigation.dart';

@RoutePage()
class AppShellPage extends StatelessWidget {
  const AppShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), DailyActivitiesRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: SafeArea(
            child: app_nav.AppBottomNavigationBar(
              selectedIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
            ),
          ),
        );
      },
    );
  }
}
