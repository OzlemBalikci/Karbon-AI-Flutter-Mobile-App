part of '../login.dart';

class LoginInfoWidget extends StatelessWidget {
  const LoginInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
          child: Infocard(
            text: context.text.login_info_text,
            bgcolor: context.colors.backgroundDescription,
            style: context.typographiesSp.bodyExtraSmall
                .copyWith(color: context.colors.textOnPrimary),
          ),
        ),
        SizedBox(height: AppThemeSpacing.s25.h),
        ScreenTitlesWidget(text: context.text.login_title),
      ],
    );
  }
}
