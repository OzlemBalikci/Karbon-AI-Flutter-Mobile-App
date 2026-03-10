part of '../home.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({
    super.key,
    required this.title,
    required this.value,
    this.image,
    required this.borderColor,
    this.onTap,
  });

  final String title;
  final String value;
  final AssetGenImage? image;
  final Color borderColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 152.w,
            height: 142.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: borderColor, width: 1.w),
                image: image != null
                    ? DecorationImage(
                        image: image!.provider(),
                        fit: BoxFit.cover,
                      )
                    : null,
                color: image == null ? context.colors.background : null,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(0, 4),
                  ),
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  Text(
                    title,
                    style: context.typographiesSp.bodyMediumSmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.colors.carbonQuestion,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: context.colors.textBlack,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: -6.h,
              left: 0,
              right: 0,
              child: Container(
                width: 131.w,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      bottomLeft: Radius.circular(10.r)),
                  color: context.colors.primary,
                ),
              )),
        ],
      ),
    );
  }
}
