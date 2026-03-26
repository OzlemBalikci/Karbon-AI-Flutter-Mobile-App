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
                // Cevaplanmış adım → salt okunur özet
                return _AnsweredStep(step: step);
              }

              // Aktif adım → etkileşimli dropdown
              return DropdownItem(
                question: step.question,
                selectedOptionId: ui.activeSelectedOptionId,
                onChanged: (id) {
                  if (id != null) {
                    context.read<DailyActivitiesBloc>().add(
                          DailyActivitiesEvent.optionSelected(id),
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
  const _AnsweredStep({required this.step});
  final BranchStep step;

  @override
  Widget build(BuildContext context) {
    final option = step.selectedOption!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          step.question.text,
          style: context.typographiesSp.bodySmall
              .copyWith(color: context.colors.textOnQuestion),
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
              color: context.colors.primary.withValues(alpha: 0.5),
            ),
          ),
          child: Text(
            option.text,
            style: context.typographiesSp.bodySmall
                .copyWith(color: context.colors.primary),
          ),
        ),
      ],
    );
  }
}
