import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/leaderofmont/domain/entities/leaderboard_entity.dart';
import 'package:karbon/features/leaderofmont/presentation/widgetvariant/leader_card_variant.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_selector.dart';
import 'package:karbon/features/leaderofmont/presentation/pages/widgets/leader_card_row.dart';

part 'sections/leaderofmonth_header_section.dart';
part 'sections/leaderofmonth_feature_section.dart';
part 'widgets/leader_list_item.dart';
part 'widgets/leaderboard_content.dart';
part 'widgets/leaderboard_user_status.dart';

@RoutePage()
class LeaderofmonthPage extends StatefulWidget {
  const LeaderofmonthPage({super.key});

  @override
  State<LeaderofmonthPage> createState() => _LeaderofmonthPageState();
}

class _LeaderofmonthPageState extends State<LeaderofmonthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: LeaderofmonthHeaderSection(),
          ),
          Positioned(
            bottom: MediaQuery.of(context).padding.bottom,
            left: 0,
            right: 0,
            child: LeaderofmonthFeatureSection(),
          ),
        ],
      ),
    );
  }
}
