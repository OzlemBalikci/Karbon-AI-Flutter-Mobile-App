part of '../../../profile.dart';

class UserInfoDetailItem extends StatelessWidget {
  const UserInfoDetailItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        switch (state.loadStatus) {
          case ProfileLoadStatus.initial:
          case ProfileLoadStatus.loading:
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              ),
            );
          case ProfileLoadStatus.failure:
            return Text(
              state.error ?? 'Yüklenemedi',
              style: context.typographiesSp.bodySmall
                  .copyWith(color: context.colors.error),
            );
          case ProfileLoadStatus.success:
            final p = state.profile!;
            final birthStr =
                DateFormat.yMMMMd('tr').format(p.birthDate.toLocal());
            return Column(
              children: [
                _InfoDetailItem(
                  title: context.text.register_tcno_textfield_text,
                  value: p.identityNumber,
                ),
                SizedBox(height: AppThemeSpacing.s20.h),
                _InfoDetailItem(
                  title: context.text.register_name_textfield_text,
                  value: p.name,
                ),
                SizedBox(height: AppThemeSpacing.s20.h),
                _InfoDetailItem(
                  title: context.text.register_surname_textfield_text,
                  value: p.surname,
                ),
                SizedBox(height: AppThemeSpacing.s20.h),
                _InfoDetailItem(
                  title: context.text.register_birth_date_textfield_text,
                  value: birthStr,
                ),
              ],
            );
        }
      },
    );
  }
}

class _InfoDetailItem extends StatelessWidget {
  const _InfoDetailItem({required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.typographiesSp.bodySmall.copyWith(
              color: context.colors.textOnQuestion.withValues(alpha: 0.6)),
        ),
        SizedBox(height: AppThemeSpacing.s10.h),
        Container(
          width: double.infinity,
          height: 45.h,
          decoration: BoxDecoration(
            color: context.colors.primary.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
            border: Border.all(
                color: context.colors.primary.withValues(alpha: 0.8), width: 1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s12.w),
            child: Row(
              children: [
                Text(
                  value,
                  style: context.typographiesSp.bodySmall
                      .copyWith(color: context.colors.primary),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
