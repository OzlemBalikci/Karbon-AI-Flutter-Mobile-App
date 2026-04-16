import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({
    super.key,
    this.value,
    this.onChanged,
  });

  final bool? value;
  final ValueChanged<bool>? onChanged;

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _internalChecked = false;

  @override
  Widget build(BuildContext context) {
    final controlled = widget.onChanged != null;
    final effectiveValue =
        controlled ? (widget.value ?? false) : _internalChecked;

    return Checkbox(
      value: effectiveValue,
      onChanged: (value) {
        final next = value ?? false;
        if (controlled) {
          widget.onChanged!(next);
        } else {
          setState(() {
            _internalChecked = next;
          });
        }
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppThemeSpacing.r5.r)),
      side: BorderSide(color: Colors.white70, width: AppThemeSpacing.s2.w),
      checkColor: context.colors.primary,
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return Colors.white;
        }
        return Colors.transparent;
      }),
    );
  }
}
