import 'package:flutter/material.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/widgets/app_popup_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/constants/extensions.dart';

class ErrorPopupWidget extends StatelessWidget {
  const ErrorPopupWidget({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Center(
        child: AppPopupCard(
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s25.w,
            vertical: AppThemeSpacing.s30.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.icons.error.svg(width: 100.w, height: 100.h),
              SizedBox(height: AppThemeSpacing.s24.h),
              Text(
                error,
                style: context.typographiesSp.bodyLarge
                    .copyWith(color: context.colors.textBlack),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Root navigator + bir frame sonra; kapanınca [onDismissed] (ör. [resetError]).
void showAppErrorDialog(
  BuildContext context, {
  required String message,
  VoidCallback? onDismissed,
}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    if (!context.mounted) return;
    showDialog<void>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: true,
      builder: (dialogContext) => ErrorPopupWidget(error: message),
    ).then((_) {
      if (context.mounted) onDismissed?.call();
    });
  });
}
