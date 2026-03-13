part of '../forgot_password.dart';

class ForgotPasswordInfoWidget extends StatelessWidget {
  const ForgotPasswordInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Infocard(
              text: context.text.forgot_password_info_text,
              bgcolor: context.colors.backgroundDescription,
              style: context.typographiesSp.bodyExtraSmall
                  .copyWith(color: context.colors.textOnPrimary)),
        ),
        SizedBox(height: AppThemeSpacing.s30.h),
        ScreenTitlesWidget(text: context.text.forgot_password_title),
      ],
    );
  }
}
