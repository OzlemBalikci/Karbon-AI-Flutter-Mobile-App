import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/di/di.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/primary_button.dart';
import 'package:karbon/l10n/app_localizations.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';
import 'package:karbon/widgets/app_hero.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_event.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/widgets/back_icon_button.dart';

part 'widgets/infos_buttons.dart';
part 'widgets/info_text.dart';
part 'widgets/usefulinfo_content_sheet.dart';
part 'sections/usefulinfo_feature.dart';
part 'sections/usefulinfo_bottom.dart';

@RoutePage()
class UsefulinfoPage extends StatefulWidget {
  const UsefulinfoPage({super.key});

  @override
  State<UsefulinfoPage> createState() => _UsefulinfoPageState();
}

class _UsefulinfoPageState extends State<UsefulinfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: AppThemeSpacing.s25.w,
            child: BackIconButton(),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                UsefulInfoFeatureSection(),
                UsefulInfoBottomSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
