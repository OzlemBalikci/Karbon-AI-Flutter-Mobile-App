import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:karbon/core/translations.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/widgets/primary_button.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/widgets/bottom_navigation_bar.dart' as app_nav;
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_hero.dart';
import 'package:karbon/widgets/app_header_title.dart';

part 'widgets/homefirstopen_bottom_button.dart';
part 'widgets/home_text.dart';
part 'sections/homefirstopen_feature.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25.w,
            child: BackIconButton(),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                HomeFirstOpenFeatureSection(),
                app_nav.AppBottomNavigationBar(
                  selectedIndex: 0,
                  onTap: (index) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
