part of '../usefulinfos.dart';

class UsefulInfoBottomSection extends StatelessWidget {
  const UsefulInfoBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: UsefulinfoStatusSelector(
        (status) => switch (status) {
          UsefulinfoStatus.initial =>
            const Center(child: CircularProgressIndicator()),
          UsefulinfoStatus.loading =>
            const Center(child: CircularProgressIndicator()),
          UsefulinfoStatus.failure => UsefulinfoErrorSelector(
              builder: (message) => _UsefulInfoLoadError(message: message),
            ),
          UsefulinfoStatus.success => UsefulinfoListSelector(
              builder: (infos) => InfosButtons(infos: infos),
            ),
        },
      ),
    );
  }
}

class _UsefulInfoLoadError extends StatelessWidget {
  const _UsefulInfoLoadError({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppThemeSpacing.s24.h),
      child: Column(
        children: [
          Icon(
            Icons.error_outline,
            size: 48.r,
            color: context.colors.error,
          ),
          SizedBox(height: AppThemeSpacing.s16.h),
          Text(
            context.text.useful_infos_load_error_title,
            textAlign: TextAlign.center,
            style: context.typographiesSp.bodyLarge.copyWith(
              color: context.colors.textBlack,
            ),
          ),
          SizedBox(height: AppThemeSpacing.s10.h),
          Text(
            message,
            textAlign: TextAlign.center,
            style: context.typographiesSp.bodySmall.copyWith(
              color: context.colors.text,
            ),
          ),
          SizedBox(height: AppThemeSpacing.s20.h),
          AppButton(
            text: context.text.useful_infos_retry_button,
            onPressed: () => context.read<UsefulinfoBloc>().add(
                  const UsefulinfoEvent.fetchInfos(),
                ),
            backgroundColor: context.colors.secondary,
            foregroundColor: context.colors.textOnSecondary,
            borderColor: context.colors.primary,
          ),
        ],
      ),
    );
  }
}
