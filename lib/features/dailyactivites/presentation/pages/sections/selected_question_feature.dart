part of '../screens/selectedquestion.dart';

class QuestionFeature extends StatelessWidget {
  const QuestionFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return DailyActivitiesBranchSelector(
      builder: (ui) => Builder(
        builder: (context) {
          if (ui.steps.isEmpty) return const SizedBox.shrink();

          return ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ui.steps.length,
            separatorBuilder: (_, __) =>
                SizedBox(height: AppThemeSpacing.s24.h),
            itemBuilder: (context, index) {
              final step = ui.steps[index];
              final isLast = index == ui.steps.length - 1;

              if (!isLast) {
                return _AnsweredStep(
                  stepIndex: index,
                  question: step,
                  selectedOption: ui.selectedOptions[step.id],
                );
              }

              // Aktif adım → etkileşimli dropdown
              return DropdownItem(
                question: step,
                selectedOptionId: ui.selectedOptions[step.id]?.id,
                onChanged: (id) {
                  if (id != null) {
                    final option = step.options.firstWhere((o) => o.id == id);
                    context.read<DailyActivitiesBloc>().add(
                          DailyActivitiesEvent.optionSelected(option),
                        );
                  }
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _AnsweredStep extends StatelessWidget {
  const _AnsweredStep({
    required this.stepIndex,
    required this.question,
    required this.selectedOption,
  });

  final int stepIndex;
  final DailyQuestionEntity question;
  final DailyQuestionOptionEntity? selectedOption;

  @override
  Widget build(BuildContext context) {
    final option = selectedOption;
    if (option == null) return const SizedBox.shrink();
    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question.text,
          style: context.typographiesSp.bodySmall.copyWith(
              color: context.colors.textOnQuestion.withValues(alpha: 0.6)),
        ),
        SizedBox(height: AppThemeSpacing.s8.h),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s12.w,
            vertical: AppThemeSpacing.s10.h,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
            border: Border.all(
              color: context.colors.textOnQuestion.withValues(alpha: 0.8),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  option.text,
                  style: context.typographiesSp.bodySmall
                      .copyWith(color: context.colors.textOnQuestion),
                ),
              ),
              Icon(
                Icons.edit_outlined,
                size: AppThemeSpacing.s16.w,
                color: context.colors.textOnQuestion.withValues(alpha: 0.8),
              ),
            ],
          ),
        ),
      ],
    );

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        onTap: () {
          final bloc = context.read<DailyActivitiesBloc>();
          if (bloc.state.postStatus == DailyActivitiesPostStatus.submitting) {
            return;
          }
          bloc.add(DailyActivitiesEvent.branchStepReopened(stepIndex));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s4.h),
          child: content,
        ),
      ),
    );
  }
}
