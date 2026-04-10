part of '../../../profile.dart';

class DonationHistoryListView extends StatelessWidget {
  const DonationHistoryListView({super.key, required this.donations});

  final List<DonationItemEntity> donations;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      clipBehavior: Clip.hardEdge,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.fromLTRB(
        AppThemeSpacing.s25.w,
        0,
        AppThemeSpacing.s25.w,
        40.h,
      ),
      itemCount: donations.length,
      itemBuilder: (context, index) {
        final isLast = index == donations.length - 1;
        return Padding(
          padding: EdgeInsets.only(
            bottom: isLast ? 0 : AppThemeSpacing.s12.h,
          ),
          child: _DonatedTreeCardItem(item: donations[index]),
        );
      },
    );
  }
}
