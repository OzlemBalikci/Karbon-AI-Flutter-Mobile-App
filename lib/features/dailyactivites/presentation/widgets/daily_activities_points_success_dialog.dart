import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart';
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_event.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/app_popup_dialog.dart';
import 'package:karbon/core/constants/assets.gen.dart';

class DailyActivitiesPointsSuccessPopup extends StatelessWidget {
  const DailyActivitiesPointsSuccessPopup({
    super.key,
    required this.totalCarbonScore,
    required this.bloc,
    required this.onNavigateToDailyList,
  });
  final double totalCarbonScore;
  final DailyActivitiesBloc bloc;
  final VoidCallback onNavigateToDailyList;

  static String _formatCarbonScore(double v) {
    if (v == v.roundToDouble()) return v.toInt().toString();
    return v.toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Center(
        child: AppPopupCard(
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s25.w,
            vertical: AppThemeSpacing.s30.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.donateSucces.image(
                width: 116.w,
                height: 116.h,
              ),
              SizedBox(height: AppThemeSpacing.s24.h),
              Text(
                context.text.daily_activities_success_total_carbon_label(
                  _formatCarbonScore(totalCarbonScore),
                ),
                textAlign: TextAlign.center,
                style: context.typographiesSp.bodyMedium
                    .withColor(context.colors.textOnQuestion),
              ),
              SizedBox(height: AppThemeSpacing.s12.h),
              Text(
                context.text.daily_activities_success_total_carbon_body,
                textAlign: TextAlign.center,
                style: context.typographiesSp.bodyExtraSmall
                    .withColor(context.colors.textOnQuestion),
              ),
              SizedBox(height: AppThemeSpacing.s24.h),
              AppButton(
                text: context.text.daily_activities_success_back_button,
                onPressed: () {
                  Navigator.of(context).pop();
                  onNavigateToDailyList();
                  bloc.add(const DailyActivitiesEvent.successDismissed());
                },
                backgroundColor: context.colors.primary,
                foregroundColor: context.colors.textOnPrimary,
                borderColor: context.colors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> showDailyActivitiesPointsSuccessDialog(
  BuildContext context, {
  required double totalCarbonScore,
  required DailyActivitiesBloc bloc,
  required VoidCallback onNavigateToDailyList,
}) {
  return showAppPopup<void>(
    context,
    barrierDismissible: false,
    child: DailyActivitiesPointsSuccessPopup(
      totalCarbonScore: totalCarbonScore,
      bloc: bloc,
      onNavigateToDailyList: onNavigateToDailyList,
    ),
  );
}
