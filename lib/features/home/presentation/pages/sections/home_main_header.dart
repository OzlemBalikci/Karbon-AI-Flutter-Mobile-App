part of '../home.dart';

class HomeMainHeader extends StatelessWidget {
  const HomeMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            Assets.images.homeMain.path,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            Assets.images.recycle.path,
            width: 180.w,
            height: 190.h,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
