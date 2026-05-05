import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/back_icon_button.dart';

part 'sections/selectedquestiondetail_section.dart';
part 'widgets/info_banner.dart';
part 'widgets/question_answer_block.dart';

@RoutePage()
class CalendarSelectedQuestionDetailPage extends StatefulWidget {
  const CalendarSelectedQuestionDetailPage({
    super.key,
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final String questionText;
  final String answerText;
  final double score;

  @override
  State<CalendarSelectedQuestionDetailPage> createState() =>
      _CalendarSelectedQuestionDetailPageState();
}

class _CalendarSelectedQuestionDetailPageState
    extends State<CalendarSelectedQuestionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
              child: SelectedQuestionDetailSection(
                questionText: widget.questionText,
                answerText: widget.answerText,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + AppThemeSpacing.s6.h,
            left: AppThemeSpacing.s25.w,
            child: const BackIconButton(),
          ),
        ],
      ),
    );
  }
}
