import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/calendar/presentation/pages/monthdetail/sections/monthdetail_section.dart';
import 'package:karbon/widgets/back_icon_button.dart';

@RoutePage()
class SeeAllPage extends StatelessWidget {
  const SeeAllPage({
    super.key,
    required this.year,
    required this.month,
    required this.period,
  });

  final int year;
  final int month;
  final int period;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: SeeAllSection(
                year: year,
                month: month,
                period: period,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + AppThemeSpacing.s6.h,
            left: AppThemeSpacing.s25.w,
            child: const BackIconButton(),
          ),
        ],
      ),
    );
  }
}
