part of '../usefulinfos.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            AppTranslations.get('lorem_ipsum'),
            style: context.typographiesSp.bodySmall
                .copyWith(color: context.colors.textBlack),
            textAlign: TextAlign.center,
            maxLines: 5,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}
