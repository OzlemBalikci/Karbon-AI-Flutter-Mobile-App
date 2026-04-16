import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/router/navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_state.dart';

part 'sections/forgot_password_bottom.dart';
part 'sections/forgot_password_feature.dart';
part 'widgets/forgot_password_form.dart';
part 'widgets/forgot_password_info.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;
    final keyboardOpen = keyboardInset > 0;

    return BlocProvider(
      create: (_) => getIt<ForgotPasswordCubit>(),
      child: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
        listenWhen: (p, c) =>
            p.status != c.status &&
            c.status == ForgotPasswordPageStatus.success,
        listener: (context, state) {
          context.router.push(
            ResetPasswordRoute(phoneNumber: _phoneController.text.trim()),
          );
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
                            ForgotPasswordFeatureSection(
                              phoneController: _phoneController,
                            ),
                            ForgotPasswordBottomSendCodeSection(
                              phoneController: _phoneController,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top,
                left: 25.w,
                child: BackIconButton(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
