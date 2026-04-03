import 'package:karbon/features/dailyactivites/domain/entities/daily_activities_entities.dart';

class DailyQuestionOptionDto {
  const DailyQuestionOptionDto({
    required this.id,
    required this.text,
    required this.carbonValue,
    this.nextQuestionId,
  });

  final String id;
  final String text;
  final double carbonValue;
  final String? nextQuestionId;

  factory DailyQuestionOptionDto.fromJson(Map<String, dynamic> json) {
    return DailyQuestionOptionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      nextQuestionId: json['nextQuestionId'] as String?,
    );
  }

  DailyQuestionOptionEntity toEntity() => DailyQuestionOptionEntity(
        id: id,
        text: text,
        carbonValue: carbonValue,
        nextQuestionId: nextQuestionId,
      );
}

class DailyQuestionDto {
  const DailyQuestionDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    required this.options,
    required this.remainingSeconds,
  });

  final String id;
  final String text;
  final int displayOrder;
  final List<DailyQuestionOptionDto> options;
  final int remainingSeconds;

  factory DailyQuestionDto.fromJson(Map<String, dynamic> json) {
    final rawOpts = json['options'] as List<dynamic>? ?? [];
    return DailyQuestionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      options: rawOpts
          .map(
              (e) => DailyQuestionOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      remainingSeconds: (json['remainingSeconds'] as num?)?.toInt() ?? 0,
    );
  }

  DailyQuestionEntity toEntity() => DailyQuestionEntity(
        id: id,
        text: text,
        displayOrder: displayOrder,
        options: options.map((e) => e.toEntity()).toList(),
        remainingSeconds: remainingSeconds,
      );
}

class DailyPendingDto {
  const DailyPendingDto({
    required this.hasPending,
    required this.pendingCount,
  });

  final bool hasPending;
  final int pendingCount;

  factory DailyPendingDto.fromJson(Map<String, dynamic> json) {
    return DailyPendingDto(
      hasPending: json['hasPending'] as bool? ?? false,
      pendingCount: (json['pendingCount'] as num?)?.toInt() ?? 0,
    );
  }

  DailyPendingEntity toEntity() => DailyPendingEntity(
        hasPending: hasPending,
        pendingCount: pendingCount,
      );
}

class DailyPostAnswerResponseDto {
  const DailyPostAnswerResponseDto({
    this.nextQuestion,
    required this.totalCarbonScore,
    required this.isFlowCompleted,
  });

  final DailyQuestionDto? nextQuestion;
  final double totalCarbonScore;
  final bool isFlowCompleted;

  factory DailyPostAnswerResponseDto.fromJson(Map<String, dynamic> json) {
    final next = json['nextQuestion'];
    return DailyPostAnswerResponseDto(
      nextQuestion:
          next is Map<String, dynamic> ? DailyQuestionDto.fromJson(next) : null,
      totalCarbonScore: (json['totalCarbonScore'] as num?)?.toDouble() ?? 0,
      isFlowCompleted: json['isFlowCompleted'] as bool? ?? false,
    );
  }

  DailyAnswerResultEntity toEntity() => DailyAnswerResultEntity(
        totalCarbonScore: totalCarbonScore,
        isFlowCompleted: isFlowCompleted,
        nextQuestion: nextQuestion?.toEntity(),
      );
}

class DailyCalendarItemDto {
  const DailyCalendarItemDto({
    required this.date,
    required this.score,
    required this.hasDetails,
  });

  final String date;
  final double score;
  final bool hasDetails;

  factory DailyCalendarItemDto.fromJson(Map<String, dynamic> json) {
    return DailyCalendarItemDto(
      date: json['date'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      hasDetails: json['hasDetails'] as bool? ?? false,
    );
  }

  DailyCalendarItemEntity toEntity() => DailyCalendarItemEntity(
        date: date,
        score: score,
        hasDetails: hasDetails,
      );
}

class DailyCalendarResponseDto {
  const DailyCalendarResponseDto({
    required this.totalScore,
    required this.items,
  });

  final double totalScore;
  final List<DailyCalendarItemDto> items;

  factory DailyCalendarResponseDto.fromJson(Map<String, dynamic> json) {
    final raw = json['items'] as List<dynamic>? ?? [];
    return DailyCalendarResponseDto(
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      items: raw
          .map((e) => DailyCalendarItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DailyCalendarEntity toEntity() => DailyCalendarEntity(
        totalScore: totalScore,
        items: items.map((e) => e.toEntity()).toList(),
      );
}

class DailyDayActivityDto {
  const DailyDayActivityDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.score,
    required this.activityDate,
  });

  final String questionText;
  final String selectedOptionText;
  final double score;
  final String activityDate;

  factory DailyDayActivityDto.fromJson(Map<String, dynamic> json) {
    return DailyDayActivityDto(
      questionText: json['questionText'] as String? ?? '',
      selectedOptionText: json['selectedOptionText'] as String? ?? '',
      score: (json['score'] as num?)?.toDouble() ?? 0,
      activityDate: json['activityDate'] as String? ?? '',
    );
  }

  DailyDayActivityEntity toEntity() => DailyDayActivityEntity(
        questionText: questionText,
        selectedOptionText: selectedOptionText,
        score: score,
        activityDate: activityDate,
      );
}

class DailyDayDetailDto {
  const DailyDayDetailDto({
    required this.date,
    required this.totalScore,
    required this.activities,
  });

  final String date;
  final double totalScore;
  final List<DailyDayActivityDto> activities;

  factory DailyDayDetailDto.fromJson(Map<String, dynamic> json) {
    final raw = json['activities'] as List<dynamic>? ?? [];
    return DailyDayDetailDto(
      date: json['date'] as String? ?? '',
      totalScore: (json['totalScore'] as num?)?.toDouble() ?? 0,
      activities: raw
          .map((e) => DailyDayActivityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  DailyDayDetailEntity toEntity() => DailyDayDetailEntity(
        date: date,
        totalScore: totalScore,
        activities: activities.map((e) => e.toEntity()).toList(),
      );
}
