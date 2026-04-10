import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Earth loading animation from [assetPath].
class AppLoadingLottie extends StatelessWidget {
  const AppLoadingLottie({
    super.key,
    this.width = 140,
    this.height = 140,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
  });

  final double width;
  final double height;
  final BoxFit fit;
  final AlignmentGeometry alignment;

  static const assetPath = 'assets/animations/Greenify the Earth.json';

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      assetPath,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      repeat: true,
    );
  }
}
