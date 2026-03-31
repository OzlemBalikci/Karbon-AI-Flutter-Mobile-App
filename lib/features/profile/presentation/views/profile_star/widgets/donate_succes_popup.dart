part of '../../../profile.dart';

class DonateSuccessPopup extends StatelessWidget {
  const DonateSuccessPopup({
    super.key,
    required this.title,
    required this.text,
  });

  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    final bodySmall = context.typographiesSp.bodySmall;
    final onQuestion = context.colors.textOnQuestion;

    return AppPopupCard(
      padding: EdgeInsets.symmetric(
        horizontal: AppThemeSpacing.s25.w,
        vertical: AppThemeSpacing.s30.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Assets.images.donateSucces.image(fit: BoxFit.contain),
          SizedBox(height: AppThemeSpacing.s20.h),
          Text(
            title,
            style: context.typographiesSp.bodyLarge
                .copyWith(color: context.colors.primary),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          Html(
            data: text,
            style: {
              'body': Style(
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
                textAlign: TextAlign.center,
                fontSize: FontSize(bodySmall.fontSize ?? 12),
                fontFamily: bodySmall.fontFamily,
                color: onQuestion,
              ),
              'br': Style(
                height: Height(8),
              ),
            },
          ),
        ],
      ),
    );
  }
}
