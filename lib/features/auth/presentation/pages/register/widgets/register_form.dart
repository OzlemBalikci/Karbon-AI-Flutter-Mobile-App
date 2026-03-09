part of '../register.dart';

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFieldWidget(
                  obscureText: false,
                  hintText:
                      AppTranslations.get('register_email_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              TextFieldWidget(
                  obscureText: false,
                  hintText: AppTranslations.get('register_tcno_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              TextFieldWidget(
                  obscureText: false,
                  hintText: AppTranslations.get('register_name_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              TextFieldWidget(
                  obscureText: false,
                  hintText:
                      AppTranslations.get('register_surname_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              BirthDatePicker(
                  labelText: AppTranslations.get(
                      'register_dogum_tarihi_textfield_text')),
              SizedBox(height: 20.h),
              TextFieldWidget(
                  obscureText: false,
                  suffixIcon: Assets.icons.eyeSlashOpened.svg(),
                  hintText:
                      AppTranslations.get('register_password_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              TextFieldWidget(
                  obscureText: false,
                  hintText: AppTranslations.get(
                      'register_confirm_password_textfield_text'),
                  controller: TextEditingController()),
              SizedBox(height: 20.h),
              TextFieldWidget(
                obscureText: false,
                hintText: AppTranslations.get('register_phone_textfield_text'),
                controller: TextEditingController(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
