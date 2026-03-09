part of '../carbon_calculate.dart';

class CarbonCalculateRadioOption extends StatelessWidget {
  final String label;
  final int value;
  final int? selectedValue;

  const CarbonCalculateRadioOption({
    super.key,
    required this.label,
    required this.value,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedValue == value;
    return RadioListTile<int>(
      value: value,
      title: Text(
        label,
        style: context.typographiesSp.bodyMediumSmall.copyWith(
          color: isSelected
              ? context.colors.primary
              : context.colors.textOnQuestion,
          fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
        ),
      ),
      fillColor: WidgetStateProperty.resolveWith((_) => context.colors.primary),
      visualDensity: VisualDensity.compact,
      contentPadding: EdgeInsets.zero,
      dense: true,
    );
  }
}
