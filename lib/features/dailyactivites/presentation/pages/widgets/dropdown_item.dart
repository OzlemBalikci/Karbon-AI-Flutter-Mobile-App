part of '../screens/selectedquestion.dart';

class DropdownItem extends StatefulWidget {
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
  State<DropdownItem> createState() => _DropdownItemState();
}

class _DropdownItemState extends State<DropdownItem> {
  late final ValueNotifier<String?> _valueListenable;

  @override
  void initState() {
    super.initState();
    _valueListenable = ValueNotifier(widget.selectedOptionId);
  }

  @override
  void didUpdateWidget(DropdownItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedOptionId != widget.selectedOptionId ||
        oldWidget.question.id != widget.question.id) {
      _valueListenable.value = widget.selectedOptionId;
    }
  }

  @override
  void dispose() {
    _valueListenable.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final borderColor = colors.textOnQuestion.withValues(alpha: 0.8);
    final borderRadius = BorderRadius.circular(AppThemeSpacing.r10.r);
    final outline = OutlineInputBorder(
      borderRadius: borderRadius,
      borderSide: BorderSide(color: borderColor, width: 1),
    );

    final items = widget.question.options
        .map(
          (opt) => ddb2.DropdownItem<String>(
            value: opt.id,
            child: Text(
              opt.text,
              style: context.typographiesSp.bodySmall
                  .copyWith(color: colors.textOnQuestion),
            ),
          ),
        )
        .toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.question.text,
          style: context.typographiesSp.bodySmall
              .copyWith(color: colors.textOnQuestion),
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        Theme(
          data: Theme.of(context).copyWith(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: ddb2.DropdownButtonFormField2<String>(
            valueListenable: _valueListenable,
            isExpanded: true,
            iconStyleData: ddb2.IconStyleData(
              icon: SvgPicture.asset(
                Assets.icons.dropdown.path,
                width: AppThemeSpacing.s10.w,
                height: AppThemeSpacing.s10.w,
                fit: BoxFit.contain,
              ),
            ),
            hint: Text(
              'Seçiniz',
              style: context.typographiesSp.bodySmall
                  .copyWith(color: colors.textOnQuestion),
            ),
            decoration: InputDecoration(
              border: outline,
              enabledBorder: outline,
              focusedBorder: outline,
              disabledBorder: outline,
              errorBorder: outline,
              focusedErrorBorder: outline,
              contentPadding: EdgeInsets.symmetric(
                horizontal: AppThemeSpacing.s12.w,
                vertical: AppThemeSpacing.s12.h,
              ),
            ),
            dropdownStyleData: ddb2.DropdownStyleData(
              maxHeight: 300,
              isOverButton: false,
              offset: Offset(0, -AppThemeSpacing.s4.h),
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: colors.background,
              ),
              scrollbarTheme: ScrollbarThemeData(
                radius: const Radius.circular(40),
                thickness: WidgetStateProperty.all(6),
                thumbVisibility: WidgetStateProperty.all(true),
              ),
            ),
            menuItemStyleData: ddb2.MenuItemStyleData(
              padding: EdgeInsets.symmetric(
                horizontal: AppThemeSpacing.s12.w,
              ),
            ),
            items: items,
            onChanged: (id) {
              widget.onChanged(id);
              if (id != null) {
                _valueListenable.value = id;
              }
            },
          ),
        ),
      ],
    );
  }
}
