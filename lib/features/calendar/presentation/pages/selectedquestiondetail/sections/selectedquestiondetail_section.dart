part of '../selectedquestiondetail.dart';

class SelectedQuestionDetailSection extends StatelessWidget {
  const SelectedQuestionDetailSection({
    super.key,
    required this.rootQuestionId,
    required this.questionText,
    required this.answerText,
    required this.activities,
    required this.questionDetail,
    required this.loading,
    required this.error,
  });

  final String rootQuestionId;
  final String questionText;
  final String answerText;

  final List<DailyDayActivityEntity> activities;

  final ActivityQuestionDetailEntity? questionDetail;
  final bool loading;
  final String? error;

  List<DailyDayActivityEntity> _buildChain(
    ActivityQuestionDetailEntity? detail,
  ) {
    if (activities.isEmpty) {
      if (questionText.isNotEmpty) {
        return [
          DailyDayActivityEntity(
            activityQuestionId: rootQuestionId,
            questionText: questionText,
            selectedOptionText: answerText,
            score: 0,
            activityDate: '',
          ),
        ];
      }
      return const [];
    }

    final byId = <String, DailyDayActivityEntity>{
      for (final a in activities)
        if (a.activityQuestionId != null) a.activityQuestionId!: a,
    };

    final chain = <DailyDayActivityEntity>[];

    if (detail != null) {
      String? currentId = rootQuestionId;
      ActivityQuestionDetailEntity? currentDetail = detail;

      while (currentId != null && currentDetail != null) {
        final activity = byId[currentId];
        if (activity == null) break;
        chain.add(activity);

        ActivityQuestionOptionEntity? selected;
        for (final o in currentDetail.options) {
          if (o.text == activity.selectedOptionText) {
            selected = o;
            break;
          }
        }
        selected ??= currentDetail.options.isNotEmpty
            ? currentDetail.options.first
            : null;

        if (selected == null) break;

        if (selected.nextQuestion != null) {
          currentId = selected.nextQuestion!.id;
          currentDetail = selected.nextQuestion;
        } else if (selected.nextQuestionId != null) {
          currentId = selected.nextQuestionId;
          currentDetail = null;
        } else {
          break;
        }
      }
    }

    if (chain.isEmpty) {
      final rootIdx =
          activities.indexWhere((a) => a.activityQuestionId == rootQuestionId);
      if (rootIdx >= 0) {
        return activities.sublist(rootIdx);
      }
      return activities;
    }

    return chain;
  }

  @override
  Widget build(BuildContext context) {
    final chain = _buildChain(questionDetail);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AppHeaderTitle(
          title: context.text.selected_question_header_text,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        InfoBanner(),
        SizedBox(height: AppThemeSpacing.s24.h),
        if (loading && chain.isEmpty)
          const Center(child: CircularProgressIndicator())
        else if (error != null && chain.isEmpty)
          Text(
            error!,
            style: context.typographiesSp.bodySmall
                .withColor(context.colors.textOnQuestion),
          )
        else ...[
          for (int i = 0; i < chain.length; i++) ...[
            _ChainQuestionAnswerBlock(
              activity: chain[i],
              isRoot: i == 0,
            ),
            if (i < chain.length - 1) SizedBox(height: AppThemeSpacing.s16.h),
          ],
        ],
        SizedBox(height: AppThemeSpacing.s16.h),
      ],
    );
  }
}

class _ChainQuestionAnswerBlock extends StatelessWidget {
  const _ChainQuestionAnswerBlock({
    required this.activity,
    required this.isRoot,
  });

  final DailyDayActivityEntity activity;

  final bool isRoot;

  @override
  Widget build(BuildContext context) {
    final answerBg = isRoot
        ? context.colors.primary.withValues(alpha: 0.2)
        : context.colors.secondary;
    final answerBorder = isRoot
        ? context.colors.primary.withValues(alpha: 0.8)
        : context.colors.text.withValues(alpha: 0.08);
    final answerTextColor =
        isRoot ? context.colors.primary : context.colors.textOnQuestion;

    return QuestionAnswerBlock(
      questionLabel: activity.questionText,
      answerText: activity.selectedOptionText.isEmpty
          ? '—'
          : activity.selectedOptionText,
      questionLabelColor: context.colors.textOnQuestion.withValues(alpha: 0.6),
      answerBg: answerBg,
      answerBorder: answerBorder,
      answerTextColor: answerTextColor,
    );
  }
}
