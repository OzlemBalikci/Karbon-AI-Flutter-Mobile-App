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
  });

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;

  static final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
    borderSide: const BorderSide(color: Colors.white70, width: 1),
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: context.typographiesSp.bodySmall
          .copyWith(color: context.colors.textOnPrimary),
      decoration: InputDecoration(
        border: _border,
        enabledBorder: _border,
        focusedBorder: _border,
        hintText: hintText,
        suffixIcon: suffixIcon != null
            ? Padding(
                padding: EdgeInsets.only(right: AppThemeSpacing.s12.w),
                child: suffixIcon!,
              )
            : null,
        suffixIconConstraints: suffixIcon != null
            ? BoxConstraints(maxWidth: 32.w, maxHeight: 32.h)
            : null,
        isDense: true,
        hintStyle: context.typographiesSp.bodySmall
            .copyWith(color: context.colors.textOnPrimary),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s12.w, vertical: AppThemeSpacing.s14.h),
      ),
    );
  }
}
