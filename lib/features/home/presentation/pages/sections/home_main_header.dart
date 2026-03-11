part of '../home.dart';

class HomeMainHeader extends StatelessWidget {
  const HomeMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: Image.asset(Assets.images.homeMain.path, fit: BoxFit.cover)),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(Assets.images.recycle.path,
                width: 148.w, height: 156.h, fit: BoxFit.contain)),
      ],
    );
  }
}
