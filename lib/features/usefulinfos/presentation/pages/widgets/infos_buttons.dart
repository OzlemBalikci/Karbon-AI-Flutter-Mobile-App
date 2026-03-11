part of '../usefulinfos.dart';

class InfosButtons extends StatelessWidget {
  const InfosButtons({super.key, required this.infos});

  final List<UsefulInfoEntity> infos;

  @override
  Widget build(BuildContext context) {
    if (infos.isEmpty) {
      return const SizedBox.shrink();
    }
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: infos.length,
      separatorBuilder: (_, __) => SizedBox(height: 10.h),
      itemBuilder: (context, index) => _InfoButtonItem(info: infos[index]),
    );
  }
}

class _InfoButtonItem extends StatelessWidget {
  const _InfoButtonItem({required this.info});

  final UsefulInfoEntity info;
  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      text: info.title,
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          builder: (context) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.secondary,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
              ),
              child: UsefulInfoContentSheet(info: info),
            ),
          ),
        );
      },
      backgroundColor: context.colors.secondary,
      foregroundColor: context.colors.textOnSecondary,
      borderColor: context.colors.primary,
    );
  }
}
