part of '../../../profile.dart';

/// Bağış açıklaması HTML’i; içerik `html` ile dışarıdan verilir.
class TreeDonationInfo extends StatelessWidget {
  const TreeDonationInfo({super.key, required this.html});

  final String html;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 275.w,
      child: Html(
        data: html,
        style: {
          'body': Style(
            fontStyle: FontStyle.italic,
            margin: Margins.zero,
            padding: HtmlPaddings.zero,
            textAlign: TextAlign.center,
            fontSize:
                FontSize(context.typographiesSp.bodyExtraSmall.fontSize ?? 12),
            fontFamily: context.typographiesSp.bodyExtraSmall.fontFamily,
            color: context.colors.textOnQuestion,
          ),
          'span': Style(
            color: context.colors.textOnQuestion,
            fontWeight: FontWeight.bold,
          ),
        },
      ),
    );
  }
}
