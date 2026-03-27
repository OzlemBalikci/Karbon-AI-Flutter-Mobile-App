import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';
import 'package:intl/intl.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:flutter_html/flutter_html.dart';

part 'widgets/user_info_detail_item.dart';
part 'widgets/icons_row.dart';
part 'widgets/logout_and_delete.dart';
part 'widgets/point_or_tree_score_card.dart';
part 'widgets/tree_donation_info.dart';
part 'widgets/donate_tree_button.dart';
part 'views/profile_info_feature_view.dart';
part 'views/profile_star_feature_view.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<ProfileBloc>().add(ProfileLoadRequested());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  AppHeaderTitle(title: context.text.profile_header_text),
                  IconsRow(),
                  ProfileInfoFeatureView(),
                ],
              ),
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
