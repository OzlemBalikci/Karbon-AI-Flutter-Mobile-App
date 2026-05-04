import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_event.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/infocard.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_event.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_state.dart';
import 'package:karbon/features/carboncalculate/domain/carbon_calculate_phase.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_selector.dart';
import 'package:karbon/router/navigation.dart';
import 'package:karbon/widgets/back_icon_button.dart';
import 'package:karbon/core/constants/assets.gen.dart';

part 'widgets/info_bottom_button.dart';
part 'widgets/first_question_bottom_button.dart';
part 'widgets/question_bottom_button.dart';
part 'widgets/carbon_calculate_question.dart';
part 'widgets/carbon_calculate_question_content.dart';
part 'widgets/result_bottom_button.dart';
part 'widgets/carbon_calculate_info.dart';
part 'widgets/progress_indicator.dart';
part 'widgets/first_open_info.dart';
part 'widgets/radio_option.dart';
part 'widgets/first_open_hero.dart';
part 'widgets/carbon_score_board.dart';
part 'widgets/carbon_score_text.dart';
part 'sections/carbon_calculate_bottom.dart';
part 'sections/carbon_calculate_feature.dart';

@RoutePage()
class CarbonCalculatePage extends StatefulWidget {
  const CarbonCalculatePage({super.key});

  @override
  State<CarbonCalculatePage> createState() => _CarbonCalculatePageState();
}

class _CarbonCalculatePageState extends State<CarbonCalculatePage> {
  @override
  void initState() {
    super.initState();
    final bloc = context.read<CarbonCalculateBloc>();
    if (bloc.state.status == CarbonCalculateStatus.initial) {
      bloc.add(const CarbonCalculateEvent.loadRequested());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                Expanded(child: CarbonCalculateFeatureSection()),
                SizedBox(height: AppThemeSpacing.s30.h),
                CarbonCalculateBottomSection(),
              ],
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
