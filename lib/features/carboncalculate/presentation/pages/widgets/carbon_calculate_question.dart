part of '../carbon_calculate.dart';

class CarbonCalculateQuestion extends StatelessWidget {
  const CarbonCalculateQuestion({
    super.key,
    required this.questionText,
    required this.options,
    required this.selectedValue,
    required this.onOptionSelected,
  });

  final String questionText;
  final List<dynamic> options;
  final int? selectedValue;
  final ValueChanged<int?> onOptionSelected;

  @override
  Widget build(BuildContext context) {
    return RadioGroup<int>(
      groupValue: selectedValue,
      onChanged: onOptionSelected,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            questionText,
            style: context.typographiesSp.bodyMediumSmall
                .copyWith(color: context.colors.carbonQuestion),
          ),
          SizedBox(height: AppThemeSpacing.s30.h),
          ...options.map((opt) {
            final map = opt as Map<String, dynamic>;
            return CarbonCalculateRadioOption(
              label: map['label'] as String? ?? '',
              value: map['value'] as int,
              selectedValue: selectedValue,
            );
          }),
        ],
      ),
    );
  }
}
