import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_selector.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_state.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/widgets/score_badge.dart';
import 'package:karbon/core/utils/formatters.dart';

part '../widgets/section_header.dart';
part '../../../../../widgets/question_card.dart';
part '../sections/today_section.dart';
part '../sections/header_section.dart';
part '../sections/history_section.dart';

@RoutePage()
class DailyActivitiesPage extends StatefulWidget {
  const DailyActivitiesPage({super.key});

  @override
  State<DailyActivitiesPage> createState() => _DailyActivitiesPageState();
}

class _DailyActivitiesPageState extends State<DailyActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeaderSection(),
                SizedBox(height: AppThemeSpacing.s20.h),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const TodaySection(),
                        SizedBox(height: AppThemeSpacing.s24.h),
                        const HistorySection(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
