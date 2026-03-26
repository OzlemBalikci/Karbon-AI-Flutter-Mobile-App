part of '../screens/selectedquestion.dart';

class DropdownItem extends StatelessWidget {
  const DropdownItem({
    super.key,
    required this.question,
    required this.selectedOptionId,
    required this.onChanged,
  });
  final DailyQuestionEntity question;
  final String? selectedOptionId;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question.text,
          style: context.typographiesSp.bodySmall
              .copyWith(color: context.colors.textOnQuestion),
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            DropdownButtonFormField(
                value: selectedOptionId,
                isExpanded: true,
                icon: SvgPicture.asset(
                  Assets.icons.dropdown.path,
                  width: AppThemeSpacing.s6.w,
                  height: AppThemeSpacing.s6.h,
                ),
                hint: Text(
                  'Seçiniz',
                  style: context.typographiesSp.bodySmall
                      .copyWith(color: context.colors.textOnQuestion),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
                    borderSide: BorderSide(
                      color:
                          context.colors.textOnQuestion.withValues(alpha: 0.8),
                      width: 1,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: AppThemeSpacing.s12.w,
                      vertical: AppThemeSpacing.s12.h),
                ),
                items: question.options
                    .map(
                      (opt) => DropdownMenuItem<String>(
                        value: opt.id,
                        child: Text(
                          opt.text,
                          style: context.typographiesSp.bodySmall
                              .copyWith(color: context.colors.textOnQuestion),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: onChanged),
          ],
        ),
      ],
    );
  }
}
