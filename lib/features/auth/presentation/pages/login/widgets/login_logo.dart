part of '../login.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 208.w,
      height: 80.h,
      child: Image(
          image: AssetImage('assets/images/App_logo.png'), fit: BoxFit.contain),
    );
  }
}
