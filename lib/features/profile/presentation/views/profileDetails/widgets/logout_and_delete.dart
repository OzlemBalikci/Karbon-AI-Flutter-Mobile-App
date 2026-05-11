part of '../../../profile.dart';

class LogoutAndDelete extends StatelessWidget {
  const LogoutAndDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _LogoutButton(
          onPressed: () => showProfilePopup(context, ProfilePopupKind.logout),
        ),
        SizedBox(height: AppThemeSpacing.s10.h),
        TextButton(
          onPressed: () =>
              showProfilePopup(context, ProfilePopupKind.deleteAccount),
          child: Text(
            context.text.profile_delete_account_text,
            style: context.typographiesSp.bodyMediumSmall.copyWith(
              color: context.colors.error,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton({required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colors.secondary,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
            border: Border.all(color: context.colors.error, width: 1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppThemeSpacing.s24.w,
                vertical: AppThemeSpacing.s15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.text.profile_logout_text,
                  style: context.typographiesSp.bodyMediumSmall
                      .copyWith(color: context.colors.error),
                ),
                Assets.icons.logout.svg(
                  width: 18.w,
                  height: 18.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
