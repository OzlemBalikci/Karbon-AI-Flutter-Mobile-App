part of '../register.dart';

class RegisterKvkkWidget extends StatelessWidget {
  const RegisterKvkkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing().w25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CheckboxWidget(),
          SizedBox(width: 10.w),
          Text(
            AppTranslations.get('kvkk_info_text'),
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.textOnPrimary),
          ),
        ],
      ),
    );
  }
}
