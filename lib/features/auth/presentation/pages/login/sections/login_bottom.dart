part of '../login.dart';

class LoginBottomRegisterSection extends StatelessWidget {
  const LoginBottomRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPad =
        AppThemeSpacing.s24.h + MediaQuery.paddingOf(context).bottom;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.images.loginMask.path,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Positioned(
          left: AppThemeSpacing.s24.w,
          right: AppThemeSpacing.s24.w,
          bottom: bottomPad,
          child: AppButton(
            text: context.text.register_button_bizizmir,
            onPressed: () => context.router.push(const RegisterRoute()),
            backgroundColor: context.colors.primary,
            foregroundColor: context.colors.textOnPrimary,
            borderColor: Colors.white70,
          ),
        ),
      ],
    );
  }
}
