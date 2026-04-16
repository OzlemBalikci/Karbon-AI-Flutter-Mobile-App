part of '../register.dart';

class RegisterKvkkWidget extends StatelessWidget {
  const RegisterKvkkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (p, c) => p.kvkkApproved != c.kvkkApproved,
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              CheckboxWidget(
                value: state.kvkkApproved,
                onChanged: (v) =>
                    context.read<RegisterCubit>().kvkkApprovedChanged(v),
              ),
              SizedBox(width: AppThemeSpacing.s10.w),
              Expanded(
                child: Text(
                  context.text.kvkk_info_text,
                  style: context.typographiesSp.bodySmall
                      .withColor(context.colors.textOnPrimary),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
