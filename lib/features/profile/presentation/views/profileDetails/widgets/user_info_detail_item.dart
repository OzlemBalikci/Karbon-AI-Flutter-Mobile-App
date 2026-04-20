part of '../../../profile.dart';

class UserInfoDetailItem extends StatelessWidget {
  const UserInfoDetailItem({super.key, required this.profile});

  final UserProfileEntity profile;

  @override
  Widget build(BuildContext context) {
    final birthStr = DateFormat('dd.MM.yyyy', 'tr')
        .format(profile.birthDate.toLocal());
    return Column(
      children: [
        _InfoDetailItem(
          title: context.text.register_tcno_textfield_text,
          value: profile.identityNumber,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        _InfoDetailItem(
          title: context.text.register_name_textfield_text,
          value: profile.name,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        _InfoDetailItem(
          title: context.text.register_surname_textfield_text,
          value: profile.surname,
        ),
        SizedBox(height: AppThemeSpacing.s20.h),
        _InfoDetailItem(
          title: context.text.register_birth_date_textfield_text,
          value: birthStr,
        ),
      ],
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
          decoration: BoxDecoration(
            color: context.colors.primary.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
            border: Border.all(
                color: context.colors.primary.withValues(alpha: 0.8), width: 1),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppThemeSpacing.s12.w,
                vertical: AppThemeSpacing.s12.h),
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
