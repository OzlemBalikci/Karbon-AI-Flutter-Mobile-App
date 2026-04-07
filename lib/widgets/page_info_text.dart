import 'package:flutter/material.dart';
import 'package:karbon/core/constants/extensions.dart';

class PageInfoText extends StatelessWidget {
  const PageInfoText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            textAlign: TextAlign.center,
            context.text.lorem_ipsum,
            style: context.typographiesSp.bodySmall
                .copyWith(color: context.colors.textBlack)),
      ],
    );
  }
}
