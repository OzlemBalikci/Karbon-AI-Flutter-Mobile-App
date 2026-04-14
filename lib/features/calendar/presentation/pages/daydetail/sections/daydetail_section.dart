import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/presentation/pages/daydetail/widgets/day_detail_list.dart';

class DayDetailSection extends StatelessWidget {
  const DayDetailSection({
    super.key,
    this.detail,
  });

  final DailyDayDetailEntity? detail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (detail != null)
            DayDetailHistorySection(activities: detail!.activities),
        ],
      ),
    );
  }
}
