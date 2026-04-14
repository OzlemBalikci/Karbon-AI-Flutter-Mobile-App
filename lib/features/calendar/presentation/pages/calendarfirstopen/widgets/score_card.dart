import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

bool _scoreLabelIsNegative(String scoreLabel) {
  final t = scoreLabel.trim();
  if (t.isEmpty || t == '—' || t == '…') return false;
  final v = double.tryParse(t.replaceAll(',', '.'));
  return v != null && v < 0;
}

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
    final negative = _scoreLabelIsNegative(score);
    final error = context.colors.error;
    final borderColor = negative ? error : context.colors.primary;
    final textColor = negative ? error : context.colors.carbonQuestion;

    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: switch (bgImage) {
            final ImageProvider provider => DecorationImage(
                image: provider,
                fit: BoxFit.cover,
                colorFilter: negative
                    ? ColorFilter.mode(error, BlendMode.srcATop)
                    : null,
              ),
            null => null,
          },
          color: bgColor,
          borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
          border: Border.all(color: borderColor, width: 1.w),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppThemeSpacing.s15.w,
              vertical: AppThemeSpacing.s15.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title $text',
                      style: context.typographiesSp.bodyMediumSmall
                          .copyWith(color: textColor),
                      maxLines: 2,
                    ),
                    SizedBox(height: AppThemeSpacing.s2.h),
                  ],
                ),
              ),
              Text(
                score,
                style: context.typographiesSp.headingLarge
                    .copyWith(color: textColor, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ));
  }
}
