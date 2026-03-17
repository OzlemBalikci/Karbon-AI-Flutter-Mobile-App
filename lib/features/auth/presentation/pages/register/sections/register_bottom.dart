part of '../register.dart';

class RegisterBottomSection extends StatelessWidget {
  const RegisterBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            Assets.images.loginMask.path,
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: AppThemeSpacing.s56.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
              child: AppButton(
                text: context.text.register_button_title,
                onPressed: () => context.router.replace(const HomeRoute()),
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.textOnPrimary,
                borderColor: Colors.white70,
              ),
            ),
            SizedBox(height: AppThemeSpacing.s20.h),
          ],
        ),
      ],
    );
  }
}
