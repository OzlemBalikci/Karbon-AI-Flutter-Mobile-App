part of '../home.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: HomeMainHeader(),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              // HomeMainFeatureSection(),
              HomeMainBottomButton(),
            ],
          ),
        ],
      ),
    );
  }
}
