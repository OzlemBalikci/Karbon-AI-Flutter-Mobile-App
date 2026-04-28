part of '../home.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: HomeMainHeader(),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          top: 130.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              HomeMainFeatureSection(),
            ],
          ),
        )
      ],
    );
  }
}
