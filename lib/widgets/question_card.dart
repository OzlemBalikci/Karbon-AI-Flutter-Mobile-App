part of '../features/dailyactivites/presentation/pages/screens/dailyactivities.dart';

sealed class QuestionCardVariant {
  const QuestionCardVariant();
}

final class QuestionCardToday extends QuestionCardVariant {
  const QuestionCardToday({required this.questionId, this.onTap});
  final String questionId;
  final VoidCallback? onTap;
}

final class QuestionCardHistory extends QuestionCardVariant {
  const QuestionCardHistory({
    required this.text,
    required this.score,
    this.onTap,
  });
  final String text;
  final double score;
  final VoidCallback? onTap;
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key, required this.variant});

  final QuestionCardVariant variant;

  @override
  Widget build(BuildContext context) {
    return switch (variant) {
      QuestionCardToday(:final questionId, :final onTap) =>
        _TodayCard(questionId: questionId, onTap: onTap),
      QuestionCardHistory(:final text, :final score, :final onTap) =>
        _HistoryCard(text: text, score: score, onTap: onTap),
    };
  }
}

class _TodayCard extends StatelessWidget {
  const _TodayCard({required this.questionId, this.onTap});

  final String questionId;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DailyActivitiesQuestionRowSelector(
      questionId: questionId,
      builder: (data) {
        final (text, entity) = data;
        return Builder(
          builder: (context) => GestureDetector(
            onTap: onTap ??
                () {
                  context.read<DailyActivitiesBloc>().add(
                        DailyActivitiesEvent.questionSelected(entity),
                      );
                  context.router.push(const SelectedQuestionRoute());
                },
            child: _CardShell(
              text: text,
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: AppThemeSpacing.s12.w,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _HistoryCard extends StatelessWidget {
  const _HistoryCard({
    required this.text,
    required this.score,
    this.onTap,
  });

  final String text;
  final double score;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final card = _CardShell(
      text: text,
      trailing: ScoreBadge(score: score),
    );
    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: card);
    }
    return card;
  }
}

class _CardShell extends StatelessWidget {
  const _CardShell({required this.text, required this.trailing});

  final String text;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
        padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s15.w, vertical: AppThemeSpacing.s14.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 200.w,
              child: Text(
                text,
                style: context.typographiesSp.bodySmall.withColor(
                    context.colors.textOnQuestion.withValues(alpha: 0.6)),
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
