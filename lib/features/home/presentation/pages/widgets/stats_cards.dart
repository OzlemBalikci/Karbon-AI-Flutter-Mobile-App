part of '../home.dart';

class StatsCards extends StatelessWidget {
  const StatsCards({
    super.key,
    required this.title,
    required this.value,
    required this.image,
    required this.borderColor,
    this.hasBlur = false,
    this.onTap,
  });

  final String title;
  final String value;
  final AssetGenImage image;
  final Color borderColor;
  final bool hasBlur;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Container(
              width: double.infinity,
              height: 142.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(color: borderColor, width: 1.w),
                image: DecorationImage(
                  image: image.provider(),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    spreadRadius: 0,
                    blurRadius: 25,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: hasBlur
                  ? BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: _buildContent(context),
                    )
                  : _buildContent(context),
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
                  bottomLeft: Radius.circular(10.r),
                ),
                color: context.colors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
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
    );
  }
}
