import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
  });

  final String text;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          disabledBackgroundColor: backgroundColor,
          disabledForegroundColor: foregroundColor,
          side: BorderSide(color: borderColor, width: 2),
        ),
        child: Text(
          text,
          style: context.typographiesSp.bodyMedium.copyWith(
            color: foregroundColor,
          ),
        ),
      ),
    );
  }
}
