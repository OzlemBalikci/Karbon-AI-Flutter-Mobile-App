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
import 'package:intl/intl.dart';
import 'package:karbon/features/profile/presentation/bloc/profile_event.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:karbon/features/auth/presentation/bloc/auth/auth_event.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/app_popup_dialog.dart';
import 'package:karbon/router/navigation.dart';

part 'views/profile_detail/widgets/user_info_detail_item.dart';
part 'views/profile_detail/widgets/icons_row.dart';
part 'views/profile_detail/widgets/logout_and_delete.dart';
part 'views/profile_star/widgets/point_or_tree_score_card.dart';
part 'views/profile_star/widgets/tree_donation_info.dart';
part 'views/profile_star/widgets/donate_tree_button.dart';
part 'views/profile_detail/sections/profile_detail_feature.dart';
part 'views/profile_star/sections/profile_star_feature.dart';
part 'views/profile_detail/widgets/logout_popup.dart';
part 'views/profile_tree/widgets/donated_tree_card.dart';
part 'views/profile_tree/sections/profile_tree_feature.dart';
part 'views/profile_star/widgets/donate_succes_popup.dart';

/// Profil diyalogları: [ProfilePopupKind] ile kart içeriği seçilir; dış çerçeve [showAppPopup].
enum ProfilePopupKind {
  logout,
  deleteAccount,
  donateSuccess,
}

Future<void> showProfilePopup(BuildContext context, ProfilePopupKind kind) {
  final Widget child = switch (kind) {
    ProfilePopupKind.logout => LogoutPopup(
        title: context.text.logout_popup_header_title,
        text: context.text.logout_popup_text,
      ),
    ProfilePopupKind.deleteAccount => LogoutPopup(
        title: context.text.delete_account_popup_header_title,
        text: context.text.delete_account_popup_text,
      ),
    ProfilePopupKind.donateSuccess => DonateSuccessPopup(
        title: context.text.donate_succes_popup_title(
          NumberFormat.decimalPattern('tr_TR').format(1200),
        ),
        text: context.text.donate_succes_popup_text,
      ),
  };

  return showAppPopup<void>(context, child: child);
}

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
