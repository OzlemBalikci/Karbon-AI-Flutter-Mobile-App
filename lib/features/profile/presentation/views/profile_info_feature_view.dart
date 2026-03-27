part of '../profile.dart';

class ProfileInfoFeatureView extends StatelessWidget {
  const ProfileInfoFeatureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserInfoDetailItem(),
          SizedBox(height: AppThemeSpacing.s20.h),
          LogoutAndDelete(),
        ],
      ),
    );
  }
}
