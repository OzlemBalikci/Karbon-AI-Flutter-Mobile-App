part of '../../../profile.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.select(
      (ProfileBloc b) => b.state.selectedTabIndex,
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Row(
        children: [
          Expanded(
            child: _IconItem(
              icon: Assets.icons.info,
              isSelected: selectedIndex == 0,
              onPressed: () =>
                  context.read<ProfileBloc>().add(ProfileTabChanged(0)),
            ),
          ),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
            child: _IconItem(
              icon: Assets.icons.favorites,
              isSelected: selectedIndex == 1,
              onPressed: () =>
                  context.read<ProfileBloc>().add(ProfileTabChanged(1)),
            ),
          ),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
            child: _IconItem(
              icon: Assets.icons.treeSecondary,
              isSelected: selectedIndex == 2,
              onPressed: () =>
                  context.read<ProfileBloc>().add(ProfileTabChanged(2)),
            ),
          ),
        ],
      ),
    );
  }
}

class _IconItem extends StatelessWidget {
  const _IconItem(
      {required this.icon, required this.onPressed, required this.isSelected});
  final SvgGenImage icon;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final bgColor =
        isSelected ? context.colors.primary : context.colors.secondary;
    final iconColor = isSelected
        ? context.colors.textOnPrimary
        : context.colors.textOnSecondary;

    return Container(
      height: 54.h,
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
      child: IconButton(
        onPressed: () {
          onPressed();
        },
        icon: icon.svg(
          width: 24.w,
          height: 24.h,
          colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
        ),
      ),
    );
  }
}
