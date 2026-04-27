part of '../register.dart';

class RegisterBottomSection extends StatelessWidget {
  const RegisterBottomSection({
    super.key,
    required this.formController,
  });

  final RegisterFormController formController;

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
                onPressed: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  context.read<RegisterCubit>().register(
                        email: formController.email.text.trim(),
                        identityNumber:
                            formController.identityNumber.text.trim(),
                        firstName: formController.firstName.text.trim(),
                        lastName: formController.lastName.text.trim(),
                        birthDate: formController.birthDate.text.trim(),
                        phoneNumber: formController.phoneNumber.text.trim(),
                        password: formController.password.text,
                        confirmPassword: formController.confirmPassword.text,
                        isKvkkApproved:
                            context.read<RegisterCubit>().state.kvkkApproved,
                      );
                },
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.textOnPrimary,
                borderColor: Colors.white70,
              ),
            ),
            SizedBox(
              height:
                  AppThemeSpacing.s24.h + MediaQuery.paddingOf(context).bottom,
            ),
          ],
        ),
      ],
    );
  }
}
