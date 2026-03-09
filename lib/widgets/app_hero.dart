import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/assets.gen.dart';

class AppHero extends StatelessWidget {
  const AppHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 210.h,
          width: 210.w,
          child: Assets.images.recycle.image(fit: BoxFit.contain),
        ),
      ],
    );
  }
}
