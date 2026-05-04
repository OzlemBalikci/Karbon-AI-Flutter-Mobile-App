part of '../carbon_calculate.dart';

class CarbonCalculateQuestion extends StatelessWidget {
  const CarbonCalculateQuestion({
    super.key,
    required this.questionText,
    required this.options,
    required this.selectedOptionId,
    required this.onOptionSelected,
  });

  final String questionText;
  final List<PollOptionEntity> options;
  final String? selectedOptionId;
  final ValueChanged<String?> onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>(
      groupValue: selectedOptionId,
      onChanged: onOptionSelected,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            questionText,
            style: context.typographiesSp.bodyMediumSmall
                .copyWith(color: context.colors.carbonQuestion),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppThemeSpacing.s30.h),
          ...options.map((opt) {
            return CarbonCalculateRadioOption(
              label: opt.text,
              value: opt.id,
              selectedValue: selectedOptionId,
            );
          }),
        ],
      ),
    );
  }
}
