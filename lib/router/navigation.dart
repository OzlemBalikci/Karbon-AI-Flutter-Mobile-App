import 'package:auto_route/auto_route.dart';
import 'package:karbon/features/auth/presentation/pages/splash/splash.dart';
import 'package:karbon/features/auth/presentation/pages/login/login.dart';
import 'package:karbon/features/auth/presentation/pages/forgotpassword/forgot_password.dart';
import 'package:karbon/features/auth/presentation/pages/register/register.dart';
import 'package:karbon/features/auth/presentation/pages/resetpassword/reset_password.dart';
import 'package:karbon/features/home/presentation/pages/home.dart';
import 'package:karbon/features/carboncalculate/presentation/pages/carbon_calculate.dart';
import 'package:karbon/features/usefulinfos/presentation/pages/usefulinfos.dart';
import 'package:karbon/features/leaderofmont/presentation/pages/leaderofmonth.dart';

part 'navigation.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page, initial: true),
        AutoRoute(path: '/login', page: LoginRoute.page),
        AutoRoute(path: '/forgot-password', page: ForgotPasswordRoute.page),
        AutoRoute(path: '/register', page: RegisterRoute.page),
        AutoRoute(path: '/reset-password', page: ResetPasswordRoute.page),
        AutoRoute(path: '/home', page: HomeRoute.page),
        AutoRoute(path: '/carbon-calculate', page: CarbonCalculateRoute.page),
        AutoRoute(path: '/useful-info', page: UsefulinfoRoute.page),
        AutoRoute(path: '/leaderofmonth', page: LeaderofmonthRoute.page),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.material();
}
