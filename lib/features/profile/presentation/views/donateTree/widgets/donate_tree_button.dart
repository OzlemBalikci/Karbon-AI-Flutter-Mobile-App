part of '../../../profile.dart';

class DonateTreeButton extends StatelessWidget {
  const DonateTreeButton({
    super.key,
    required this.isLoading,
    required this.availableTreeCount,
    required this.onDonate,
  });

  final bool isLoading;
  final int availableTreeCount;
  final VoidCallback onDonate;

  @override
  Widget build(BuildContext context) {
    final label = '${availableTreeCount.toString()} ${context.text.tree}';

    return Container(
      width: double.infinity,
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
        onPressed: isLoading ? null : onDonate,
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppThemeSpacing.s15.w,
              vertical: AppThemeSpacing.s20.h),
          child: isLoading
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
  }
}
