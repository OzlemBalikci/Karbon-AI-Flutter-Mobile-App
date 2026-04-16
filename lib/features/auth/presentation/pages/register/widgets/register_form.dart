part of '../register.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

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
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_tcno_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_name_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_surname_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              BirthDatePicker(
                labelText: context.text.register_birth_date_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                hintText: context.text.register_password_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s10.h),
              const PasswordValidationText(),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_confirm_password_textfield_text,
                textInputAction: TextInputAction.next,
              ),
              SizedBox(height: AppThemeSpacing.s20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: context.text.register_phone_textfield_text,
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
