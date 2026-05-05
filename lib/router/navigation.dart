import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karbon/features/auth/presentation/pages/customfirstopen/customfirstopen.dart';
import 'package:karbon/features/auth/presentation/pages/login/login.dart';
import 'package:karbon/features/auth/presentation/pages/forgotpassword/forgot_password.dart';
import 'package:karbon/features/auth/presentation/pages/register/register.dart';
import 'package:karbon/features/auth/presentation/pages/resetpassword/reset_password.dart';
import 'package:karbon/features/home/presentation/pages/home.dart';
import 'package:karbon/features/carboncalculate/presentation/pages/carbon_calculate.dart';
import 'package:karbon/features/usefulinfos/presentation/pages/usefulinfos.dart';
import 'package:karbon/features/leaderofmont/presentation/pages/leaderofmonth.dart';
import 'package:karbon/features/dailyactivites/presentation/pages/screens/dailyactivities.dart';
import 'package:karbon/features/dailyactivites/presentation/pages/screens/selectedquestion.dart';
import 'package:karbon/features/profile/presentation/profile.dart';
import 'package:karbon/router/home_shell.dart';
import 'package:karbon/router/home_tab_shell.dart';
import 'package:karbon/router/dailyactivities_tab_shell.dart';
import 'package:karbon/features/auth/presentation/pages/splash/splash.dart';
import 'package:karbon/router/calendar_tab_shell.dart';
import 'package:karbon/router/profile_tab_shell.dart';
import 'package:karbon/features/calendar/presentation/pages/calendarfirstopen/calendar_first_open_page.dart';
import 'package:karbon/features/calendar/presentation/pages/daydetail/daydetail.dart';
import 'package:karbon/features/calendar/presentation/pages/seeAll/see_all_page.dart';
import 'package:karbon/features/calendar/presentation/pages/selectedquestiondetail/selectedquestiondetail.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),
        AutoRoute(
          path: '/custom-first-open',
          page: CustomFirstOpenRoute.page,
        ),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/forgot-password', page: ForgotPasswordRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/reset-password', page: ResetPasswordRoute.page),
        AutoRoute(
          path: '/main',
          page: HomeShellRoute.page,
          children: [
            AutoRoute(
              path: 'home',
              page: HomeTabShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: HomeRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'useful-info',
                  page: UsefulinfoRoute.page,
                ),
                AutoRoute(
                  path: 'carbon-calculate',
                  page: CarbonCalculateRoute.page,
                ),
                AutoRoute(
                  path: 'leaderofmonth',
                  page: LeaderofmonthRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'daily-activities',
              page: DailyActivitiesShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: DailyActivitiesRoute.page,
                  initial: true,
                ),
                AutoRoute(
                  path: 'selected-question',
                  page: SelectedQuestionRoute.page,
                ),
              ],
            ),
            AutoRoute(
                path: 'calendar',
                page: CalendarShellRoute.page,
                children: [
                  AutoRoute(
                    path: '',
                    page: CalendarFirstOpenRoute.page,
                    initial: true,
                  ),
                  AutoRoute(
                    path: 'see-all',
                    page: SeeAllRoute.page,
                  ),
                  AutoRoute(
                    path: 'day-detail',
                    page: DayDetailRoute.page,
                  ),
                  AutoRoute(
                    path: 'selected-question-detail',
                    page: CalendarSelectedQuestionDetailRoute.page,
                  ),
                ]),
            AutoRoute(
              path: 'profile',
              page: ProfileTabShellRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: ProfileRoute.page,
                  initial: true,
                ),
              ],
            ),
          ],
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.cupertino();
}
