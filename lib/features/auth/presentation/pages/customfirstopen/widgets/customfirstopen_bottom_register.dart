part of '../customfirstopen.dart';

class CustomFirstOpenBottomRegisterSection extends StatelessWidget {
  const CustomFirstOpenBottomRegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        AppButton(
          text: context.text.login_button_title_bizizmir,
          backgroundColor: context.colors.secondary,
          foregroundColor: context.colors.textOnSecondary,
          borderColor: Colors.white70,
          onPressed: () async {
            FocusManager.instance.primaryFocus?.unfocus();
            final cubit = context.read<CustomFirstOpenCubit>();
            await cubit.completeFirstOpen();
            if (!context.mounted) return;
            if (cubit.state.status == CustomFirstOpenStatus.success) {
              context.router.push(const LoginRoute());
            }
          },
        ),
        SizedBox(height: AppThemeSpacing.s30.h),
        AppButton(
          text: context.text.register_button_bizizmir,
          backgroundColor: Colors.transparent,
          foregroundColor: context.colors.textOnPrimary,
          borderColor: Colors.white70,
          onPressed: () async {
            FocusManager.instance.primaryFocus?.unfocus();
            final cubit = context.read<CustomFirstOpenCubit>();
            await cubit.completeFirstOpen();
            if (!context.mounted) return;
            if (cubit.state.status == CustomFirstOpenStatus.success) {
              context.router.push(const RegisterRoute());
            }
          },
        ),
      ],
    );
  }
}
