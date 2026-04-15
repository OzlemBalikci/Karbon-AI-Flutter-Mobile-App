import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/features/auth/presentation/pages/splash/splash_loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/di/di.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<AuthBloc>().add(const AuthEvent.appStarted());
    });
  }

  Future<void> _navigateForState(BuildContext context, AuthState state) async {
    await state.when(
      sessionChecking: () async {},
      authenticated: (_) async {
        if (!context.mounted) return;
        context.router.replaceAll([const HomeShellRoute()]);
      },
      unauthenticated: () async {
        final done =
            await getIt<AuthLaunchLocal>().isCustomFirstOpenCompleted();
        if (!context.mounted) return;
        if (done) {
          context.router.replaceAll([const LoginRoute()]);
        } else {
          context.router.replaceAll([const CustomFirstOpenRoute()]);
        }
      },
      authFailure: (reason, failureType, code) async {
        if (!context.mounted) return;
        context.router.replaceAll([const LoginRoute()]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.isSessionChecking && !current.isSessionChecking,
      listener: (context, state) {
        _navigateForState(context, state);
      },
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.splash.provider(),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x26000000),
                      offset: Offset(0, 4),
                      blurRadius: 25,
                      spreadRadius: 0,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 200.h,
              left: 0,
              right: 0,
              child: SplashLoading(),
            ),
          ],
        ),
      ),
    );
  }
}
