import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';

class SplashLoadingBar extends StatefulWidget {
  const SplashLoadingBar({super.key});

  @override
  State<SplashLoadingBar> createState() => _SplashLoadingBarState();
}

class _SplashLoadingBarState extends State<SplashLoadingBar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 160.w,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) => LinearProgressIndicator(
            value: _controller.value,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r5.r),
            backgroundColor: context.colors.primary.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
            minHeight: 6,
          ),
        ),
      ),
    );
  }
}
