part of '../home.dart';

class LeaderSectionHeader extends StatelessWidget {
  const LeaderSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          AppTranslations.get('home_page_leader_of_month_header_text'),
          style: context.typographiesSp.bodyLarge.copyWith(
            fontWeight: FontWeight.w700,
            color: Color(0xFF191C24),
          ),
        ),
        SizedBox(height: 15.h),
        Text(
          AppTranslations.get('lorem_ipsum'),
        ),
      ],
    );
  }
}
