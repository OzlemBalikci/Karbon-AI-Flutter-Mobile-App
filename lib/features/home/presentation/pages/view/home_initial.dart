part of '../home.dart';

class HomeInitialView extends StatelessWidget {
  const HomeInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(child: HomeFirstOpenFeatureSection()),
        ],
      ),
    );
  }
}
