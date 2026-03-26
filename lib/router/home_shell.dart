import 'package:flutter/material.dart';
import 'package:karbon/widgets/bottom_navigation_bar.dart' as app_nav;
import 'package:auto_route/auto_route.dart';
import 'package:karbon/router/navigation.dart';

@RoutePage()
class HomeShellPage extends StatelessWidget {
  const HomeShellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), DailyActivitiesRoute()],
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
    );
  }
}
