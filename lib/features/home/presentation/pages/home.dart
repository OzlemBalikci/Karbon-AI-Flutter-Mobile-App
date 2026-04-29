import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart';
import 'package:karbon/features/home/presentation/bloc/home_state.dart';
import 'package:karbon/features/home/presentation/bloc/home_selector.dart';
import 'package:karbon/features/leaderofmont/presentation/pages/widgets/leader_card_row.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/widgets/app_button.dart';
import 'package:karbon/features/leaderofmont/presentation/widgetvariant/leader_card_variant.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:karbon/router/navigation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/core/utils/formatters.dart';
import 'package:karbon/widgets/app_hero.dart';
import 'package:karbon/widgets/app_header_title.dart';
part 'widgets/home_initial_bottom_button.dart';
part 'widgets/home_initial_text.dart';
part 'widgets/stats_cards.dart';
part 'widgets/stats_card_row.dart';
part 'widgets/leader_section_header.dart';
part 'widgets/see_others_card.dart';
part 'widgets/home_main_bottom_button.dart';
part 'sections/home_initial_feature.dart';
part 'sections/home_main_feature.dart';
part 'sections/home_main_header.dart';
part 'view/home_initial.dart';
part 'view/home_main.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: HomeShellSelector(
                  builder: (snap) {
                    if (snap.status == HomeStatus.failure) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.w),
                          child: Text(
                            snap.error ?? 'Bir hata oluştu',
                            textAlign: TextAlign.center,
                            style: context.typographiesSp.bodyMedium
                                .withColor(context.colors.text),
                          ),
                        ),
                      );
                    }
                    if (snap.showLoadingSpinner) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return snap.hasCompletedPoll
                        ? const HomeMainView()
                        : const HomeInitialView();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
