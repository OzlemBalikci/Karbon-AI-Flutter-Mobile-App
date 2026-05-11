import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/features/auth/presentation/pages/splash/widgets/splash_loading_bar.dart';

class SplashBackground extends StatelessWidget {
  final bool showLoading;

  const SplashBackground({super.key, this.showLoading = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Assets.images.appReviewLogo.image(
              width: 300.w,
              fit: BoxFit.contain,
            ),
          ),
          if (showLoading)
            Positioned(
              bottom: 200.h,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Karbon AI',
                    style: context.typographiesSp.headingSmall,
                  ),
                  SizedBox(height: 20.h),
                  const SplashLoadingBar(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
