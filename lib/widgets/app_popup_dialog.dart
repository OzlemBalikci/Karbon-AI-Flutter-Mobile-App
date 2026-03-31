import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/spacing.dart';

/// Şeffaf [Dialog] sarmalayıcısı — yatay inset ve kart dışında ortak stil.
Future<T?> showAppPopup<T>(
  BuildContext context, {
  required Widget child,
  bool barrierDismissible = true,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s24.w),
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: child,
      );
    },
  );
}

/// Beyaz, yuvarlatılmış popup kartı (yükseklik ve iç padding özelleştirilebilir).
class AppPopupCard extends StatelessWidget {
  const AppPopupCard({
    super.key,
    required this.child,
    this.padding,
    this.height,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final content =
        padding != null ? Padding(padding: padding!, child: child) : child;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          content,
        ],
      ),
    );
  }
}
