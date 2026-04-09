part of '../../../profile.dart';

class _DonatedTreeCardItem extends StatelessWidget {
  const _DonatedTreeCardItem({super.key, required this.item});

  final DonationItemEntity item;

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat.yMMMMd('tr').format(item.donationDate.toLocal());

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.profileTreeMask.provider(),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 4),
            blurRadius: 25,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s15.w, vertical: AppThemeSpacing.s20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dateStr,
                  style: context.typographiesSp.bodyMediumSmall.copyWith(
                      color: const Color(0xFF0B7942),
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  context.text.profile_tree_donated_tree_text,
                  style: context.typographiesSp.bodyMediumSmall.copyWith(
                      color: const Color(0xFF0B7942),
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            Container(
              width: 80.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
              ),
              child: Center(
                child: Text(
                  item.treeCount.toString(),
                  style: context.typographiesSp.headingLarge
                      .copyWith(color: context.colors.textOnPrimary),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
