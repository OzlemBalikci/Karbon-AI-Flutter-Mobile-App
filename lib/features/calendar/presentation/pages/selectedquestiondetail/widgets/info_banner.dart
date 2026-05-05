part of '../selectedquestiondetail.dart';

class InfoBanner extends StatelessWidget {
  const InfoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppThemeSpacing.s16.w,
        vertical: AppThemeSpacing.s14.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F3EF),
        borderRadius: BorderRadius.circular(AppThemeSpacing.r12.r),
      ),
      child: Text(
        context.text.selected_question_info_banner_text,
        textAlign: TextAlign.center,
        style: context.typographiesSp.bodySmall.withColor(
          context.colors.primary,
        ),
      ),
    );
  }
}
