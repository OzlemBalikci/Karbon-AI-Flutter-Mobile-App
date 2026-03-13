part of '../home.dart';

class LeaderSectionHeader extends StatelessWidget {
  const LeaderSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.text.home_page_leader_of_month_header_text,
          style: context.typographiesSp.bodyLarge.copyWith(
            fontWeight: FontWeight.w700,
            color: Color(0xFF191C24),
          ),
        ),
        SizedBox(height: AppThemeSpacing.s15.h),
        Text(
          context.text.lorem_ipsum,
          maxLines: 3,
          overflow: TextOverflow.clip,
        ),
      ],
    );
  }
}
