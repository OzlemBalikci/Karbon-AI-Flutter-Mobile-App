import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixPressed,
  });

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixPressed; // ikon tıklama callback'i

  @override
  Widget build(BuildContext context) {
    final textStyle = context.typographiesSp.bodySmall
        .copyWith(color: context.colors.textOnPrimary);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
      borderSide:
          BorderSide(color: Colors.white70.withValues(alpha: 0.8), width: 1),
    );

    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: textStyle,
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: hintText,
        hintStyle: textStyle,
        isDense: true,
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppThemeSpacing.s12.w,
          vertical: AppThemeSpacing.s14.h,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(
                  minWidth: 24.w,
                  minHeight: 24.h,
                  maxWidth: 24.w,
                  maxHeight: 24.h,
                ),
                icon: suffixIcon!,
                onPressed: onSuffixPressed ?? () {},
              )
            : null,
      ),
    );
  }
}
