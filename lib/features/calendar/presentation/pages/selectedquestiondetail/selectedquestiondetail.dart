import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/features/calendar/domain/entities/calendar_entities.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_event.dart';
import 'package:karbon/features/calendar/presentation/bloc/calendar_state.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/back_icon_button.dart';

part 'sections/selectedquestiondetail_section.dart';
part 'widgets/info_banner.dart';
part 'widgets/question_answer_block.dart';

@RoutePage()
class CalendarSelectedQuestionDetailPage extends StatefulWidget {
  const CalendarSelectedQuestionDetailPage({
    super.key,
    required this.questionId,
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final String questionId;
  final String questionText;
  final String answerText;
  final double score;

  @override
  State<CalendarSelectedQuestionDetailPage> createState() =>
      _CalendarSelectedQuestionDetailPageState();
}

class _CalendarSelectedQuestionDetailPageState
    extends State<CalendarSelectedQuestionDetailPage> {
  late final CalendarBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<CalendarBloc>();
    if (widget.questionId.isNotEmpty) {
      _bloc.add(CalendarEvent.questionDetailPageOpened(
        questionId: widget.questionId,
      ));
    }
  }

  @override
  void dispose() {
    _bloc.add(const CalendarEvent.questionDetailDismissed());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          SafeArea(
            child: BlocBuilder<CalendarBloc, CalendarState>(
              buildWhen: (prev, curr) =>
                  prev.dayDetail != curr.dayDetail ||
                  prev.selectedQuestion != curr.selectedQuestion ||
                  prev.selectedQuestionAsyncStatus !=
                      curr.selectedQuestionAsyncStatus,
              builder: (context, state) {
                final activities =
                    state.dayDetail?.activities ?? const [];
                final slice = (
                  status: state.selectedQuestionAsyncStatus,
                  error: state.selectedQuestionError,
                  data: state.selectedQuestion,
                );
                return SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppThemeSpacing.s25.w),
                  child: SelectedQuestionDetailSection(
                    rootQuestionId: widget.questionId,
                    questionText: widget.questionText,
                    answerText: widget.answerText,
                    activities: activities,
                    questionDetail: slice.data,
                    loading: slice.status == CalendarAsyncStatus.loading ||
                        (slice.status == CalendarAsyncStatus.initial &&
                            widget.questionId.isNotEmpty),
                    error: slice.error,
                  ),
                );
              },
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
