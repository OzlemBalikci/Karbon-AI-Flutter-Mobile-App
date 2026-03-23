part of '../dailyactivities.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.questionId,
    this.onTap,
  });

  final String questionId;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DailyActivitiesQuestionRowSelector(
      questionId: questionId,
      builder: (context, data) {
        final (text, entity) = data;
        return GestureDetector(
          onTap: onTap ??
              () => context.read<DailyActivitiesBloc>().add(
                    DailyActivitiesEvent.questionSelected(entity),
                  ),
          child: Container(
            width: double.infinity,
            height: 65.h,
            decoration: BoxDecoration(
              color: context.colors.secondary,
              borderRadius: BorderRadius.circular(AppThemeSpacing.r15.r),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 25,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 218.w,
                        child: Text(
                          text,
                          overflow: TextOverflow.ellipsis,
                          style: context.typographiesSp.bodySmall
                              .withColor(context.colors.textOnQuestion),
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: AppThemeSpacing.s12.w,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
