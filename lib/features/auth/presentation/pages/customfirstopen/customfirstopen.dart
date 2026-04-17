import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_state.dart';
import 'package:karbon/features/auth/presentation/pages/error_popup_widget.dart';

part 'widgets/customfirstopen_bottom_register.dart';
part 'widgets/customfirstopen_logo.dart';
part 'widgets/customfirstopen_text.dart';

@RoutePage()
class CustomFirstOpenPage extends StatelessWidget {
  const CustomFirstOpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt.get<AuthBloc>()..add(const AuthEvent.appStarted()),
        ),
        BlocProvider(
          create: (context) => getIt<CustomFirstOpenCubit>(),
        ),
      ],
      child: BlocListener<CustomFirstOpenCubit, CustomFirstOpenState>(
        listenWhen: (p, c) => p.status != c.status,
        listener: (context, state) {
          if (state.hasError) {
            showDialog<void>(
              context: context,
              builder: (dialogContext) =>
                  ErrorPopupWidget(error: state.error!),
            );
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image(
                      image: AssetImage(Assets.images.splash.path),
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withValues(alpha: 0.4),
                    ),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppThemeSpacing.s25.w,
                    vertical: AppThemeSpacing.s25.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomFirstOpenLogoSection(),
                      CustomFirstOpenTextWidget(),
                      CustomFirstOpenBottomRegisterSection(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
