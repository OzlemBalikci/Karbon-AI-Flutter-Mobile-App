part of '../../../profile.dart';

class DonateTreeButton extends StatelessWidget {
  const DonateTreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      buildWhen: (p, c) =>
          p.donateStatus != c.donateStatus || p.profile != c.profile,
      builder: (context, state) {
        final loading = state.donateStatus == AsyncStatus.loading;
        final available = state.profile?.availableTreeCount ?? 1200;
        final label =
            '${NumberFormat.decimalPattern('tr_TR').format(available)} + ağaç';

        return Container(
          width: double.infinity,
          height: 56.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.images.donateButtonMask.provider(),
              colorFilter:
                  ColorFilter.mode(context.colors.primary, BlendMode.multiply),
              fit: BoxFit.cover,
            ),
            color: context.colors.primary,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: OutlinedButton(
            onPressed: loading
                ? null
                : () => context.read<ProfileBloc>().add(
                      ProfileEvent.donateTrees(available),
                    ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s15.w),
              child: loading
                  ? Center(
                      child: SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: context.colors.textOnPrimary,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            context.text.profile_star_donate_button_text,
                            style: context.typographiesSp.bodyMedium.copyWith(
                              color: context.colors.textOnPrimary,
                            ),
                          ),
                        ),
                        Text(
                          label,
                          style: context.typographiesSp.bodyMedium.copyWith(
                            color: context.colors.textOnPrimary,
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
