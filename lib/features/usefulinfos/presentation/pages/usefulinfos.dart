import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/app_hero.dart';
import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_event.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_selector.dart';
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/widgets/page_info_text.dart';

part 'widgets/infos_buttons.dart';
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
  void initState() {
    super.initState();
    final bloc = context.read<UsefulinfoBloc>();
    if (bloc.state.status == UsefulinfoStatus.initial) {
      bloc.add(const UsefulinfoEvent.fetchInfos());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UsefulInfoFeatureSection(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppThemeSpacing.s25.w),
                          child: PageInfoText(text: context.text.lorem_ipsum),
                        ),
                        UsefulInfoBottomSection(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + AppThemeSpacing.s6.h,
            left: AppThemeSpacing.s25.w,
            child: BackIconButton(),
          ),
        ],
      ),
    );
  }
}
