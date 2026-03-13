part of '../reset_password.dart';

class ResetPasswordInfoWidget extends StatelessWidget {
  const ResetPasswordInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
          child: Infocard(
            text: context.text.reset_password_info_text,
            bgcolor: context.colors.backgroundDescription,
            style: context.typographiesSp.bodyExtraSmall
                .copyWith(color: context.colors.textOnPrimary),
          ),
        ),
      ],
    );
  }
}
