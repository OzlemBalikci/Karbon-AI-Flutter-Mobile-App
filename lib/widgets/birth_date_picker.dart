import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:karbon/core/constants/spacing.dart';

class BirthDatePicker extends StatefulWidget {
  const BirthDatePicker({
    super.key,
    required this.labelText,
    this.controller,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
  });

  final String labelText;

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;

  @override
  State<BirthDatePicker> createState() => _BirthDatePickerState();
}

class _BirthDatePickerState extends State<BirthDatePicker> {
  TextEditingController? _ownedController;

  final _maskFormatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  TextEditingController get _effectiveController =>
      widget.controller ?? _ownedController!;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _ownedController = TextEditingController();
    }
  }

  @override
  void dispose() {
    _ownedController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(maxHeight: AppThemeSpacing.s56.h),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        border: Border.all(color: Colors.white70, width: 1),
      ),
      child: TextField(
        controller: _effectiveController,
        focusNode: widget.focusNode,
        textInputAction: widget.textInputAction,
        onSubmitted: widget.onSubmitted,
        keyboardType: TextInputType.number,
        inputFormatters: [_maskFormatter],
        style: TextStyle(color: Colors.white, fontSize: 14.sp),
        decoration: InputDecoration(
          hintText: widget.labelText,
          hintStyle: context.typographiesSp.bodySmall
              .copyWith(color: context.colors.textOnPrimary),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: AppThemeSpacing.s12.w),
            child: Assets.icons.calendar.svg(),
          ),
          suffixIconConstraints:
              const BoxConstraints(minWidth: 24, minHeight: 24),
          isDense: true,
          filled: true,
          fillColor: Colors.transparent,
          contentPadding: EdgeInsets.symmetric(
              horizontal: AppThemeSpacing.s12.w,
              vertical: AppThemeSpacing.s14.h),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
