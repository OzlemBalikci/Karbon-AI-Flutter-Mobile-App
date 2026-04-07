import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/features/calendar/presentation/seeAll/sections/seeall_section.dart';

@RoutePage()
class SeeAllPage extends StatelessWidget {
  const SeeAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: const SeeAllSection(),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: AppThemeSpacing.s25.w,
            child: BackIconButton(),
          ),
        ],
      ),
    );
  }
}
