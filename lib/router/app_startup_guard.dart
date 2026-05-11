import 'package:auto_route/auto_route.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/router/navigation.dart';

class AppStartupGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authBloc = getIt<AuthBloc>();
    final state = authBloc.state;

    if (state.isSessionChecking) {
      resolver.next();
      return;
    }

    if (state.isAuthenticated) {
      resolver.redirectUntil(const HomeShellRoute(), replace: true);
      return;
    }

    final done = await getIt<AuthLaunchLocal>().isCustomFirstOpenCompleted();
    resolver.redirectUntil(
      done ? const LoginRoute() : const CustomFirstOpenRoute(),
      replace: true,
    );
  }
}
