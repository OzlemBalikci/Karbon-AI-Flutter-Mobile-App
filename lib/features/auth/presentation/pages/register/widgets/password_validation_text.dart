part of '../register.dart';

class PasswordValidationText extends StatefulWidget {
  const PasswordValidationText({super.key, required this.focusNode});

  final FocusNode focusNode;

  static const _rules = <String>[
    'Şifre en az 8 karakter olmalıdır.',
    'Şifre en az bir büyük harf içermelidir.',
    'Şifre en az bir küçük harf içermelidir.',
    'Şifre en az bir rakam içermelidir.',
    'Şifre en az bir özel karakter içermelidir.',
  ];

  @override
  State<PasswordValidationText> createState() => _PasswordValidationTextState();
}

class _PasswordValidationTextState extends State<PasswordValidationText> {
  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onFocusChange);
  }

  @override
  void didUpdateWidget(covariant PasswordValidationText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.focusNode != widget.focusNode) {
      oldWidget.focusNode.removeListener(_onFocusChange);
      widget.focusNode.addListener(_onFocusChange);
    }
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() => setState(() {});

  @override
  Widget build(BuildContext context) {
    if (!widget.focusNode.hasFocus) {
      return const SizedBox.shrink();
    }

    final style = context.typographiesSp.bodyExtraSmall
        .copyWith(color: context.colors.textOnPrimary);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppThemeSpacing.s10.h),
        for (final rule in PasswordValidationText._rules)
          Text(
            '• $rule',
            style: style,
          ),
      ],
    );
  }
}
