part of '../../../profile.dart';

class LogoutPopup extends StatelessWidget {
  const LogoutPopup({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppPopupCard(
      padding: EdgeInsets.symmetric(
        horizontal: AppThemeSpacing.s25.w,
        vertical: AppThemeSpacing.s30.h,
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 164.w),
                child: Text(
                  title,
                  style: context.typographiesSp.bodyLarge
                      .copyWith(color: context.colors.primary),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 260.w),
                child: Text(
                  text,
                  style: context.typographiesSp.bodySmall
                      .copyWith(color: context.colors.textOnQuestion),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
            ),
            Column(
              children: [
                AppButton(
                  text: context.text.logout_popup_accept_button_text,
                  onPressed: () {
                    final router = context.router;
                    final authBloc = context.read<AuthBloc>();
                    router.pop();
                    authBloc.add(const AuthEvent.signOutRequested());
                    router.replaceAll([const SplashRoute()]);
                  },
                  backgroundColor: context.colors.primary,
                  foregroundColor: context.colors.textOnPrimary,
                  borderColor: context.colors.secondary,
                ),
                SizedBox(height: AppThemeSpacing.s25.h),
                AppButton(
                  text: context.text.logout_popup_deny_button_text,
                  onPressed: () => context.router.pop(),
                  backgroundColor: context.colors.secondary,
                  foregroundColor: context.colors.textOnSecondary,
                  borderColor: context.colors.primary,
                ),
              ],
            ),
          ],
        ),
    );
  }
}
