import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_selector.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivites_event.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:karbon/core/constants/assets.gen.dart';

part '../widgets/dropdown_item.dart';
part '../widgets/bottom_button.dart';
part '../sections/selected_question_feature.dart';

@RoutePage()
class SelectedQuestionPage extends StatefulWidget {
  const SelectedQuestionPage({super.key});

  @override
  State<SelectedQuestionPage> createState() => _SelectedQuestionPageState();
}

class _SelectedQuestionPageState extends State<SelectedQuestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: AppThemeSpacing.s25.w,
            child: const BackIconButton(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom,
            left: 0,
            right: 0,
            child: BottomButton(),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                AppHeaderTitle(
                  title: context.text.selected_question_header_text,
                ),
                SizedBox(height: AppThemeSpacing.s30.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
                  child: QuestionFeature(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
