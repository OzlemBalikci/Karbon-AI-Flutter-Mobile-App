part of '../usefulinfos.dart';

class UsefulInfoBottomSection extends StatelessWidget {
  const UsefulInfoBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
      child: UsefulinfoStatusSelector(
        onInitial: () => const Center(child: CircularProgressIndicator()),
        onLoading: () => const Center(child: CircularProgressIndicator()),
        onError: (error) => Center(child: Text(error)),
        onSuccess: () => UsefulinfoListSelector(
          builder: (infos) => InfosButtons(infos: infos),
        ),
      ),
    );
  }
}
