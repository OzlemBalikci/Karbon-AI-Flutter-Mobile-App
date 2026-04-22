part of '../screens/selectedquestion.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: DailyActivitiesBranchSelector(
        builder: (ui) => Builder(
          builder: (context) {
            final colors = context.colors;
            return AppButton(
              text: context.text.selected_question_bottom_button_title,
              onPressed: ui.canSubmit
                  ? () => context.read<DailyActivitiesBloc>().add(
                        const DailyActivitiesEvent.postAnswerRequested(),
                      )
                  : null,
              backgroundColor:
                  ui.canSubmit ? colors.primary : colors.buttonDisabled,
              foregroundColor: context.colors.textOnPrimary,
              borderColor:
                  ui.canSubmit ? colors.primary : colors.buttonDisabled,
            );
          },
        ),
      ),
    );
  }
}
