part of '../calendar.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
    required this.bgColor,
    required this.title,
    required this.score,
    this.bgImage,
    required this.text,
  });

  final Color bgColor;

  final String title;
  final String score;
  final ImageProvider? bgImage;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: switch (bgImage) {
            final ImageProvider provider =>
              DecorationImage(image: provider, fit: BoxFit.cover),
            null => null,
          },
          color: bgColor,
          borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
          border: Border.all(color: context.colors.primary, width: 1.w),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppThemeSpacing.s15.w,
              vertical: AppThemeSpacing.s10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.typographiesSp.bodyMediumSmall
                        .copyWith(color: context.colors.carbonQuestion),
                  ),
                  SizedBox(height: AppThemeSpacing.s2.h),
                  Text(
                    text,
                    style: context.typographiesSp.bodyMediumSmall
                        .copyWith(color: context.colors.carbonQuestion),
                  ),
                ],
              ),
              Text(
                score,
                style: context.typographiesSp.headingLarge.copyWith(
                    color: context.colors.carbonQuestion,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}
