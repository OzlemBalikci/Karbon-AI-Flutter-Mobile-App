import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/calendar/presentation/calendar_first_open/widgets/button.dart';
import 'package:karbon/features/calendar/presentation/calendar_first_open/widgets/score_card.dart';
import 'package:karbon/features/calendar/presentation/seeAll/widgets/daily_report_card.dart';
import 'package:karbon/widgets/app_header_title.dart';

class SeeAllSection extends StatelessWidget {
  const SeeAllSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        children: [
          AppHeaderTitle(
            title: 'Aralık 2023 Sonuçları',
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          ScoreCard(
            bgColor: context.colors.secondary,
            bgImage: Assets.images.calendarMask2.provider(),
            title: 'Aralık 2024',
            score: '670',
            text: 'Karbon Ayak İzi Skorunuz',
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          DayButton(),
          SizedBox(height: AppThemeSpacing.s20.h),
          DailyReportCard(),
        ],
      ),
    );
  }
}
