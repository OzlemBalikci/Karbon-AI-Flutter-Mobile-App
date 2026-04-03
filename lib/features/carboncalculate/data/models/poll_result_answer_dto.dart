import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class PollResultAnswerDto {
  const PollResultAnswerDto({
    required this.questionText,
    required this.selectedOptionText,
    required this.carbonValue,
  });

  final String questionText;
  final String selectedOptionText;
  final double carbonValue;

  factory PollResultAnswerDto.fromJson(Map<String, dynamic> json) =>
      PollResultAnswerDto(
        questionText: json['questionText'] as String? ?? '',
        selectedOptionText: json['selectedOptionText'] as String? ?? '',
        carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      );

  PollResultAnswerEntity toEntity() => PollResultAnswerEntity(
        questionText: questionText,
        selectedOptionText: selectedOptionText,
        carbonValue: carbonValue,
      );
}
