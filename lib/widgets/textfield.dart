import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixPressed,
    this.focusNode,
    this.textInputAction,
    this.onSubmitted,
    this.onChanged,
  });

  final String hintText;

  /// Dışarıdan verilmezse widget kendi controller'ını oluşturup dispose eder.
  final TextEditingController? controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixPressed;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final void Function(String)? onSubmitted;
  final void Function(String)? onChanged;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController? _ownedController;

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
    final textStyle = context.typographiesSp.bodySmall
        .copyWith(color: context.colors.textOnPrimary);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
      borderSide:
          BorderSide(color: Colors.white70.withValues(alpha: 0.8), width: 1),
    );

    return TextField(
      controller: _effectiveController,
      focusNode: widget.focusNode,
      textInputAction: widget.textInputAction,
      onSubmitted: widget.onSubmitted,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      style: textStyle,
      decoration: InputDecoration(
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        hintText: widget.hintText,
        hintStyle: textStyle,
        isDense: true,
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppThemeSpacing.s12.w,
          vertical: AppThemeSpacing.s14.h,
        ),
        suffixIcon: widget.suffixIcon != null
            ? ExcludeFocus(
                child: IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(
                    minWidth: 24.w,
                    minHeight: 24.h,
                    maxWidth: 24.w,
                    maxHeight: 24.h,
                  ),
                  icon: widget.suffixIcon!,
                  onPressed: widget.onSuffixPressed ?? () {},
                ),
              )
            : null,
      ),
    );
  }
}
