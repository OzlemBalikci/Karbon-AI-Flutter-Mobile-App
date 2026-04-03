import 'package:flutter/material.dart';
import 'package:karbon/core/constants/assets.gen.dart';

class AppHero extends StatelessWidget {
  const AppHero({
    super.key,
    this.widthFactor = 0.56,
    this.aspectRatio = 1,
  });

  final double widthFactor;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final heroWidth = screenWidth * widthFactor.clamp(0.0, 1.0);

    return Center(
      child: SizedBox(
        width: heroWidth,
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: Assets.images.recycle.image(
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
