part of '../profile.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Row(
        children: [
          Expanded(child: _IconItem(icon: Assets.icons.info, onPressed: () {})),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
              child: _IconItem(icon: Assets.icons.favorites, onPressed: () {})),
          SizedBox(width: AppThemeSpacing.s20.w),
          Expanded(
              child: _IconItem(
                  icon: Assets.icons.treeSecondary, onPressed: () {})),
        ],
      ),
    );
  }
}

class _IconItem extends StatelessWidget {
  const _IconItem({required this.icon, required this.onPressed});
  final SvgGenImage icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var bgColor = context.colors.secondary;
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
          bgColor = bgColor == context.colors.secondary
              ? context.colors.primary
              : context.colors.secondary;
        },
        icon: icon.svg(width: 24.w, height: 24.h),
      ),
    );
  }
}
