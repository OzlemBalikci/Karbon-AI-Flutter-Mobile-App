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
                fontSize:
                    FontSize(context.typographiesSp.bodySmall.fontSize ?? 12),
                fontFamily: context.typographiesSp.bodySmall.fontFamily,
                color: context.colors.textOnQuestion,
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
