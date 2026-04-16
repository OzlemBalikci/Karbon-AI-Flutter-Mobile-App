part of '../reset_password.dart';

class PinProgressField extends StatelessWidget {
  const PinProgressField({
    super.key,
    this.length = 5,
    required this.controller,
  });

  final int length;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    final baseTheme = PinTheme(
      width: 50.w,
      height: 50.h,
      textStyle: context.typographiesSp.headingMedium.copyWith(
        color: context.colors.text,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(AppThemeSpacing.r10.r),
        border: Border.all(color: Colors.white70, width: 1),
      ),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: SizedBox(
        width: double.infinity,
        child: Pinput(
          controller: controller,
          length: length,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          obscureText: false,
          defaultPinTheme: baseTheme,
          focusedPinTheme: baseTheme.copyWith(
            decoration: baseTheme.decoration!.copyWith(
              border: Border.all(color: Colors.white, width: 1),
            ),
          ),
          submittedPinTheme: baseTheme.copyWith(
            decoration: baseTheme.decoration!.copyWith(
              color: Colors.white.withValues(alpha: 0.15),
            ),
          ),
          onChanged: (value) {
            // burada progress/validasyon yapabilirsin
            // örn: value.length ile kaç hane dolu
          },
          onCompleted: (value) {
            // PIN dolunca tetiklenir
          },
        ),
      ),
    );
  }
}
