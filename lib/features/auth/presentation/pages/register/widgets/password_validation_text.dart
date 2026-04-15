part of '../register.dart';

class PasswordValidationText extends StatelessWidget {
  const PasswordValidationText({super.key});

  static const _rules = <String>[
    'Şifre en az 8 karakter olmalıdır.',
    'Şifre en az bir büyük harf içermelidir.',
    'Şifre en az bir küçük harf içermelidir.',
    'Şifre en az bir rakam içermelidir.',
    'Şifre en az bir özel karakter içermelidir.',
  ];

  @override
  Widget build(BuildContext context) {
    final style = context.typographiesSp.bodyExtraSmall
        .copyWith(color: context.colors.textOnPrimary);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final rule in _rules)
          Text(
            '• $rule',
            style: style,
          ),
      ],
    );
  }
}
