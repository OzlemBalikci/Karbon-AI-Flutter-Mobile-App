part of '../../../profile.dart';

class ProfileStarFeatureSection extends StatelessWidget {
  const ProfileStarFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) {
        if (current.donateStatus == AsyncStatus.success &&
            previous.donateStatus != AsyncStatus.success &&
            current.donateResult != null) {
          return true;
        }
        if (current.donateStatus == AsyncStatus.failure &&
            previous.donateStatus != AsyncStatus.failure &&
            current.donateError != null) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        if (state.donateStatus == AsyncStatus.success &&
            state.donateResult != null) {
          final count = state.donateResult!.donatedTreeCount;
          showAppPopup<void>(
            context,
            child: DonateSuccessPopup(
              title: context.text.donate_succes_popup_title(
                NumberFormat.decimalPattern('tr_TR').format(count),
              ),
              text: context.text.donate_succes_popup_text,
            ),
          ).then((_) {
            if (!context.mounted) return;
            context.read<ProfileBloc>().add(const ProfileEvent.donateReset());
          });
        } else if (state.donateStatus == AsyncStatus.failure &&
            state.donateError != null) {
          showAppErrorDialog(
            context,
            message: state.donateError!,
            onDismissed: () => context.read<ProfileBloc>().add(
                  const ProfileEvent.clearDonateError(),
                ),
          );
        }
      },
      child: SizedBox.expand(
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
                  return ProfileStarSuccessBody(profile: profile);
              }
            },
          ),
        ),
      ),
    );
  }
}
