import 'package:flutter/material.dart';
import 'package:karbon/core/constants/assets.gen.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inner_shadow_widget/inner_shadow_widget.dart';
import 'package:karbon/core/constants/spacing.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final int selectedIndex;
  final ValueChanged<int> onTap;

  static final List<_NavItemData> _items = [
    _NavItemData(icon: Assets.icons.home, label: 'Home'),
    _NavItemData(icon: Assets.icons.stats, label: 'Stats'),
    _NavItemData(icon: Assets.icons.calendarMonthOutlined, label: 'Calendar'),
    _NavItemData(icon: Assets.icons.favorites, label: 'Favorites'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: InnerShadow(
        blur: 5,
        color: const Color(0x40000000),
        offset: const Offset(1, 1),
        child: Container(
          width: double.infinity,
          height: 55.h,
          padding: EdgeInsets.symmetric(
              horizontal: AppThemeSpacing.s8.w, vertical: AppThemeSpacing.s6.h),
          decoration: BoxDecoration(
            color: context.colors.background,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(_items.length, (i) {
              final item = _items[i];
              final selected = i == selectedIndex;

              return Expanded(
                child: GestureDetector(
                  onTap: () => onTap(i),
                  behavior: HitTestBehavior.opaque,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    curve: Curves.easeOutCubic,
                    width: double.infinity,
                    height: 47.h,
                    decoration: selected
                        ? BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.circular(AppThemeSpacing.r12.r),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 25,
                                spreadRadius: 0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          )
                        : null,
                    child: Center(
                      child: item.icon.svg(
                        width: AppThemeSpacing.s24.w,
                        height: AppThemeSpacing.s24.h,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _NavItemData {
  const _NavItemData({
    required this.icon,
    required this.label,
  });

  final SvgGenImage icon;
  final String label;
}
