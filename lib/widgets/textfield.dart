import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixIconTap,
  });

  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconTap;

  static final _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
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
                padding: EdgeInsets.only(right: 12.w),
                child: suffixIcon,
              )
            : null,
        suffixIconConstraints: BoxConstraints(
          maxHeight: 40.h,
          maxWidth: 40.w,
        ),
        isDense: true,
        hintStyle: context.typographiesSp.bodySmall
            .copyWith(color: context.colors.textOnPrimary),
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
      ),
    );
  }
}
