part of '../leaderofmonth.dart';

class LeaderofmonthHeaderSection extends StatelessWidget {
  const LeaderofmonthHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            Assets.images.leaderofmonth.path,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child:
                  AppHeaderTitle(title: context.text.leaderofmonth_header_text),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: AppThemeSpacing.s25.w,
          child: Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: BackIconButton(),
          ),
        ),
      ],
    );
  }
}
