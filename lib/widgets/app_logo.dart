import 'package:flutter/material.dart';

import 'package:karbon/core/constants/assets.gen.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: Assets.images.appLogoFront.provider(),
      fit: BoxFit.contain,
    );
  }
}
