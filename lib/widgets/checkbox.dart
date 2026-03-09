import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _isChecked,
      onChanged: (value) {
        setState(() {
          _isChecked = value ?? false;
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
      side: BorderSide(color: Colors.white70, width: 2.w),
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
