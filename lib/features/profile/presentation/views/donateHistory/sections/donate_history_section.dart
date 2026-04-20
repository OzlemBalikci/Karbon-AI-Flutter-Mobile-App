part of '../../../profile.dart';

class DonateHistorySection extends StatelessWidget {
  const DonateHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ProfileDonationHistoryAsyncSelector(
        builder: (slice) {
          switch (slice.status) {
            case AsyncStatus.initial:
            case AsyncStatus.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case AsyncStatus.failure:
              return Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
                  child: Text(
                    slice.error ?? 'Bir hata oluştu',
                    textAlign: TextAlign.center,
                    style: context.typographiesSp.bodySmall
                        .copyWith(color: context.colors.error),
                  ),
                ),
              );
            case AsyncStatus.success:
              final history = slice.data;
              if (history == null) return const SizedBox.shrink();
              return DonateHistorySuccessBody(history: history);
          }
        },
      ),
    );
  }
}
