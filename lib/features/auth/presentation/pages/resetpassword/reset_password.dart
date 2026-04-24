import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/auth/presentation/pages/error_popup_widget.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_cubit.dart';
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_state.dart';
import 'package:karbon/features/auth/presentation/controllers/reset_password_form_controller.dart';
import 'package:pinput/pinput.dart';

part 'widgets/pin_progress_field.dart';
part 'widgets/reset_password_form.dart';
part 'widgets/reset_password_info.dart';
part 'sections/reset_password_feature.dart';
part 'sections/reset_password_bottom.dart';

@RoutePage()
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({
    super.key,
    required this.phoneNumber,
  });

  final String phoneNumber;

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late final _formController = ResetPasswordFormController();
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
      create: (_) => getIt<ResetPasswordCubit>(),
      child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
        listenWhen: (p, c) => p.status != c.status,
        listener: (context, state) {
          if (state.status == ResetPasswordPageStatus.success) {
            context.router.replaceAll([const LoginRoute()]);
          }
          if (state.hasError) {
            showAppErrorDialog(
              context,
              message: state.error!,
              onDismissed: () =>
                  context.read<ResetPasswordCubit>().resetError(),
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
                            ResetPasswordFeatureSection(
                              formController: _formController,
                            ),
                            ResetPasswordBottomSection(
                              phoneNumber: widget.phoneNumber,
                              formController: _formController,
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
                child: const BackIconButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
