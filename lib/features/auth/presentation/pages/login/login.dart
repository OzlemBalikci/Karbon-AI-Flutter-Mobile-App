import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_state.dart';
import 'package:karbon/features/auth/presentation/pages/error_popup_widget.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/login/login_selector.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/controllers/login_form_controller.dart';

part 'widgets/login_forgot_password.dart';

part 'widgets/login_form.dart';
part 'widgets/login_info.dart';
part 'sections/login_bottom.dart';
part 'sections/login_feature.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formController = LoginFormController();

  @override
  void dispose() {
    _formController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;
    final keyboardOpen = keyboardInset > 0;
    return BlocProvider(
        create: (context) => getIt<LoginCubit>(),
        child: BlocListener<LoginCubit, LoginState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == LoginPageStatus.success) {
              context.router.replaceAll([const HomeShellRoute()]);
            }
            if (state.hasError) {
              showAppErrorDialog(
                context,
                message: state.error!,
                onDismissed: () => context.read<LoginCubit>().resetError(),
              );
            }
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: context.colors.primary,
            body: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      Assets.images.loginMask.path,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                SafeArea(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        physics: keyboardOpen
                            ? const ClampingScrollPhysics()
                            : const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.only(bottom: keyboardInset),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(minHeight: constraints.maxHeight),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              LoginFeatureSection(
                                formController: _formController,
                              ),
                              LoginBottomRegisterSection(),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
