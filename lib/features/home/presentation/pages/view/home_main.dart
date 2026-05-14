part of '../home.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({super.key});

  static const double _headerRatio = 140 / 812;

  @override
  Widget build(BuildContext context) {
    final headerHeight = MediaQuery.sizeOf(context).height * _headerRatio;
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
          top: headerHeight,
          child: HomeMainFeatureSection(),
        )
      ],
    );
  }
}
