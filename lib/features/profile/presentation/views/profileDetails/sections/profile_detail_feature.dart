part of '../../../profile.dart';

class ProfileInfoFeatureSection extends StatelessWidget {
  const ProfileInfoFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
        child: ProfileUserAsyncSelector(
          builder: (slice) {
            switch (slice.status) {
              case AsyncStatus.initial:
              case AsyncStatus.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case AsyncStatus.failure:
                return Center(
                  child: Text(
                    slice.error ?? 'Bir hata oluştu',
                    textAlign: TextAlign.center,
                    style: context.typographiesSp.bodySmall
                        .copyWith(color: context.colors.error),
                  ),
                );
              case AsyncStatus.success:
                final profile = slice.data;
                if (profile == null) return const SizedBox.shrink();
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UserInfoDetailItem(profile: profile),
                    SizedBox(height: AppThemeSpacing.s20.h),
                    const LogoutAndDelete(),
                  ],
                );
            }
          },
        ),
      ),
    );
  }
}
