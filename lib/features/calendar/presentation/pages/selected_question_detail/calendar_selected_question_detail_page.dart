import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:karbon/core/constants/extensions.dart';
import 'package:karbon/core/constants/spacing.dart';
import 'package:karbon/widgets/app_header_title.dart';
import 'package:karbon/widgets/back_icon_button.dart';

/// Tasarım: açık mint kutu (#E8F3EF), border (#B8D8CD), cevap metni (#66A690), soru etiketi gri-mavi.
String _formatScore(double value) {
  if (value == value.roundToDouble()) {
    return value.round().toString();
  }
  return value.toStringAsFixed(1);
}

@RoutePage()
class CalendarSelectedQuestionDetailPage extends StatelessWidget {
  const CalendarSelectedQuestionDetailPage({
    super.key,
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final String questionText;
  final String answerText;
  final double score;

  static const _answerBg = Color(0xFFE8F3EF);
  static const _answerBorder = Color(0xFFB8D8CD);
  static const _answerText = Color(0xFF66A690);
  static const _questionLabel = Color(0xFFA0AAB8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: AppThemeSpacing.s25.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: AppThemeSpacing.s10.h),
                  AppHeaderTitle(
                    title: context.text.selected_question_header_text,
                  ),
                  SizedBox(height: AppThemeSpacing.s20.h),
                  _InfoBanner(
                      text: context.text.selected_question_info_banner_text),
                  SizedBox(height: AppThemeSpacing.s24.h),
                  _QuestionAnswerBlock(
                    questionLabel: questionText,
                    answerText: answerText.isEmpty ? '—' : answerText,
                    questionLabelColor: _questionLabel,
                    answerBg: _answerBg,
                    answerBorder: _answerBorder,
                    answerTextColor: _answerText,
                  ),
                  SizedBox(height: AppThemeSpacing.s16.h),
                  Text(
                    '${_formatScore(score)} ${context.text.points}',
                    textAlign: TextAlign.end,
                    style: context.typographiesSp.bodySmall.withColor(
                      context.colors.hint,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.paddingOf(context).top,
            left: AppThemeSpacing.s25.w,
            child: const BackIconButton(),
          ),
        ],
      ),
    );
  }
}

class _InfoBanner extends StatelessWidget {
  const _InfoBanner({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: AppThemeSpacing.s16.w,
        vertical: AppThemeSpacing.s14.h,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE8F3EF),
        borderRadius: BorderRadius.circular(AppThemeSpacing.r12.r),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: context.typographiesSp.bodySmall.withColor(
          context.colors.primary,
        ),
      ),
    );
  }
}

class _QuestionAnswerBlock extends StatelessWidget {
  const _QuestionAnswerBlock({
    required this.questionLabel,
    required this.answerText,
    required this.questionLabelColor,
    required this.answerBg,
    required this.answerBorder,
    required this.answerTextColor,
  });

  final String questionLabel;
  final String answerText;
  final Color questionLabelColor;
  final Color answerBg;
  final Color answerBorder;
  final Color answerTextColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          questionLabel,
          style: context.typographiesSp.bodySmall.withColor(questionLabelColor),
        ),
        SizedBox(height: AppThemeSpacing.s8.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: AppThemeSpacing.s16.w,
            vertical: AppThemeSpacing.s14.h,
          ),
          decoration: BoxDecoration(
            color: answerBg,
            borderRadius: BorderRadius.circular(AppThemeSpacing.r12.r),
            border: Border.all(color: answerBorder, width: 1),
          ),
          child: Text(
            answerText,
            style: context.typographiesSp.bodyMedium.withColor(answerTextColor),
          ),
        ),
      ],
    );
  }
}
