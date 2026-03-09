import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/primary_button.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/textfield.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/widgets/app_logo.dart';
import 'package:karbon/widgets/screen_titles.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/core/translations.dart';
import 'package:auto_route/auto_route.dart';

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
  @override
  Widget build(BuildContext context) {
    final keyboardInset = MediaQuery.viewInsetsOf(context).bottom;
    final keyboardOpen = keyboardInset > 0;

    return Scaffold(
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
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25.w,
            child: BackIconButton(),
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
                        ForgotPasswordFeatureSection(),
                        ForgotPasswordBottomSendCodeSection(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
