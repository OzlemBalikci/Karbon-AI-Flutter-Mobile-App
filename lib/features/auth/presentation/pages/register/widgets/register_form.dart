part of '../register.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({
    super.key,
    required this.formController,
  });

  final RegisterFormController formController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_email_textfield_text,
                controller: formController.email,
                focusNode: formController.emailFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) =>
                    formController.identityNumberFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_tcno_textfield_text,
                controller: formController.identityNumber,
                focusNode: formController.identityNumberFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) =>
                    formController.firstNameFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_name_textfield_text,
                controller: formController.firstName,
                focusNode: formController.firstNameFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => formController.lastNameFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_surname_textfield_text,
                controller: formController.lastName,
                focusNode: formController.lastNameFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) =>
                    formController.birthDateFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              BirthDatePicker(
                labelText: context.text.register_birth_date_textfield_text,
                controller: formController.birthDate,
                focusNode: formController.birthDateFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) => formController.passwordFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                hintText: context.text.register_password_textfield_text,
                controller: formController.password,
                focusNode: formController.passwordFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) =>
                    formController.confirmPasswordFocus.requestFocus(),
              ),
              PasswordValidationText(focusNode: formController.passwordFocus),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_confirm_password_textfield_text,
                controller: formController.confirmPassword,
                focusNode: formController.confirmPasswordFocus,
                textInputAction: TextInputAction.next,
                onSubmitted: (_) =>
                    formController.phoneNumberFocus.requestFocus(),
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_phone_textfield_text,
                controller: formController.phoneNumber,
                focusNode: formController.phoneNumberFocus,
                textInputAction: TextInputAction.done,
                onSubmitted: (_) =>
                    FocusManager.instance.primaryFocus?.unfocus(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
