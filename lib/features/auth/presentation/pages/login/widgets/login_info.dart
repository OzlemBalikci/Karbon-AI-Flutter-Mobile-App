part of '../login.dart';

class LoginInfoWidget extends StatelessWidget {
  const LoginInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w24),
          child: Infocard(
            text: AppTranslations.get('login_info_text'),
            bgcolor: context.colors.backgroundDescription,
            style: context.typographiesSp.bodyExtraSmall
                .copyWith(color: context.colors.textOnPrimary),
          ),
        ),
        SizedBox(height: 25.h),
        ScreenTitlesWidget(text: 'login_title'),
      ],
    );
  }
}
