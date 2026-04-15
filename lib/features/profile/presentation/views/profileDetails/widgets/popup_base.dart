part of '../../../profile.dart';

class ProfilePopupBase extends StatelessWidget {
  const ProfilePopupBase({
    super.key,
    required this.title,
    required this.text,
    required this.onConfirm,
  });

  final String title;
  final String text;
  final Future<void> Function(BuildContext context) onConfirm;

  @override
  Widget build(BuildContext context) {
    return AppPopupCard(
      padding: EdgeInsets.symmetric(
        horizontal: AppThemeSpacing.s25.w,
        vertical: AppThemeSpacing.s30.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          SizedBox(height: AppThemeSpacing.s20.h),
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
          SizedBox(height: AppThemeSpacing.s20.h),
          Column(
            children: [
              AppButton(
                text: context.text.logout_popup_accept_button_text,
                onPressed: () => onConfirm(context),
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

enum ProfilePopupKind {
  logout,
  deleteAccount,
}

Future<void> showProfilePopup(BuildContext context, ProfilePopupKind kind) {
  Future<void> confirmLogout(BuildContext ctx) async {
    final router = ctx.router;
    final authBloc = ctx.read<AuthBloc>();
    router.pop();
    authBloc.add(const AuthEvent.signOutRequested());
    router.replaceAll([const LoginRoute()]);
  }

  Future<void> confirmDeleteAccount(BuildContext ctx) async {
    final router = ctx.router;
    final authBloc = ctx.read<AuthBloc>();
    final result = await getIt<DeleteAccountUseCase>()();
    if (!ctx.mounted) return;
    result.fold((_) {}, (_) {
      router.pop();
      authBloc.add(const AuthEvent.sessionCheckRequested());
      router.replaceAll([const LoginRoute()]);
    });
  }

  final Widget child = switch (kind) {
    ProfilePopupKind.logout => ProfilePopupBase(
        title: context.text.logout_popup_header_title,
        text: context.text.logout_popup_text,
        onConfirm: confirmLogout,
      ),
    ProfilePopupKind.deleteAccount => ProfilePopupBase(
        title: context.text.delete_account_popup_header_title,
        text: context.text.delete_account_popup_text,
        onConfirm: confirmDeleteAccount,
      ),
  };

  return showAppPopup<void>(context, child: child);
}
