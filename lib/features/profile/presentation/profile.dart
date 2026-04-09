import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_selector.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_state.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:intl/intl.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/app_popup_dialog.dart';
import 'package:karbon/router/navigation.dart';

part 'views/profileDetails/widgets/user_info_detail_item.dart';
part 'views/profileDetails/widgets/icons_row.dart';
part 'views/profileDetails/widgets/logout_and_delete.dart';
part 'views/donateTree/widgets/point_or_tree_score_card.dart';
part 'views/donateTree/widgets/tree_donation_info.dart';
part 'views/donateTree/widgets/donate_tree_button.dart';
part 'views/profileDetails/sections/profile_detail_feature.dart';
part 'views/donateTree/sections/donate_tree_feature.dart';
part 'views/profileDetails/widgets/popup_base.dart';
part 'views/donateHistory/widgets/donated_tree_card.dart';
part 'views/donateHistory/sections/profile_tree_feature.dart';
part 'views/donateTree/widgets/donate_succes_popup.dart';

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
    final bloc = context.read<ProfileBloc>();
    if (bloc.state.profileStatus == AsyncStatus.initial) {
      bloc.add(const ProfileEvent.fetchProfile());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) {
        if (current.donateStatus == AsyncStatus.success &&
            previous.donateStatus != AsyncStatus.success &&
            current.donateResult != null) {
          return true;
        }
        if (current.donateStatus == AsyncStatus.error &&
            previous.donateStatus != AsyncStatus.error &&
            current.donateError != null) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state.donateStatus == AsyncStatus.success &&
            state.donateResult != null) {
          final count = state.donateResult!.donatedTreeCount;
          showAppPopup<void>(
            context,
            child: DonateSuccessPopup(
              title: context.text.donate_succes_popup_title(
                NumberFormat.decimalPattern('tr_TR').format(count),
              ),
              text: context.text.donate_succes_popup_text,
            ),
          ).then((_) {
            if (context.mounted) {
              context.read<ProfileBloc>().add(const ProfileEvent.donateReset());
            }
          });
        } else if (state.donateStatus == AsyncStatus.error &&
            state.donateError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.donateError!)),
          );
        }
      },
      child: Scaffold(
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppHeaderTitle(title: context.text.profile_header_text),
                  SizedBox(height: AppThemeSpacing.s20.h),
                  IconsRow(),
                  SizedBox(height: AppThemeSpacing.s20.h),
                  ProfileTabSelector(
                    builder: (index) => switch (index) {
                      0 => const ProfileInfoFeatureSection(),
                      1 => const ProfileStarFeatureSection(),
                      2 => const ProfileTreeFeatureSection(),
                      _ => const SizedBox.shrink(),
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
