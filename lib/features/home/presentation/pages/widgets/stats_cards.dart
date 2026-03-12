part of '../home.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    required this.borderColor,
    this.hasShadow = false,
    this.onTap,
  });

  final String title;
  final String value;
  final AssetGenImage image;
  final Color borderColor;
  final VoidCallback? onTap;
  final bool hasShadow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 142.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              boxShadow: hasShadow
                  ? [
                      BoxShadow(
                        color: Color(0x26000000),
                        offset: Offset(0, 4),
                        blurRadius: 25,
                        spreadRadius: 0,
                      ),
                    ]
                  : null,
              color: context.colors.secondary,
              border: Border.all(color: borderColor, width: 1.w),
              image: DecorationImage(
                image: image.provider(),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.contain,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        title,
                        style: context.typographiesSp.bodyMediumSmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: context.colors.carbonQuestion,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      value,
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: context.colors.carbonQuestion,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -16.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: Container(
                width: double.infinity,
                height: 44.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                  border: Border.all(color: Color(0xFFA9C5B8), width: 1.w),
                  color: Color(0xFFF1FBF6),
                ),
                child: Center(
                  child: Text(
                    "12.0000 ağaç kaldı.",
                    style: context.typographiesSp.bodyExtraSmall.copyWith(
                      fontWeight: FontWeight.w600,
                      color: context.colors.carbonQuestion,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: context.typographiesSp.bodyMediumSmall.copyWith(
                fontWeight: FontWeight.w600,
                color: context.colors.carbonQuestion,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: context.colors.carbonQuestion,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
