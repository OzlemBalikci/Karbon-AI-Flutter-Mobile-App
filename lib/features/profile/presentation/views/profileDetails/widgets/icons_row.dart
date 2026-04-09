part of '../../../profile.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.select(
      (ProfileBloc b) => b.state.selectedTab,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Row(
        children: [
          Expanded(
            child: _IconItem(
              icon: Assets.icons.info,
              index: 0,
              isSelected: selectedIndex == 0,
            ),
          ),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
            child: _IconItem(
              icon: Assets.icons.favorites,
              index: 1,
              isSelected: selectedIndex == 1,
            ),
          ),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
            child: _IconItem(
              icon: Assets.icons.treeSecondary,
              index: 2,
              isSelected: selectedIndex == 2,
            ),
          ),
        ],
      ),
    );
  }
}

class _IconItem extends StatelessWidget {
  const _IconItem(
      {required this.icon, required this.index, required this.isSelected});
  final SvgGenImage icon;
  final int index;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bgColor =
        isSelected ? context.colors.primary : context.colors.secondary;
    final iconColor = isSelected
        ? context.colors.textOnPrimary
        : context.colors.textOnSecondary;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
        boxShadow: [
          BoxShadow(
            color: Color(0x26000000),
            offset: Offset(0, 4),
            blurRadius: 25,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s6.h),
        child: IconButton(
          onPressed: () => context.read<ProfileBloc>().add(TabChanged(index)),
          icon: icon.svg(
            width: 24.w,
            height: 24.h,
            colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
