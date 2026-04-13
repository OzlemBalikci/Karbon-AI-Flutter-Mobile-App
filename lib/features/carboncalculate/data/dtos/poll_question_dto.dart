import 'package:karbon/features/carboncalculate/data/dtos/poll_option_dto.dart';

class PollQuestionDto {
  const PollQuestionDto({
    required this.id,
    required this.text,
    required this.displayOrder,
    this.selectedOptionId,
    required this.options,
  });

  final String id;
  final String text;
  final int displayOrder;
  final String? selectedOptionId;
  final List<PollOptionDto> options;

  factory PollQuestionDto.fromJson(Map<String, dynamic> json) {
    final opts = json['options'] as List<dynamic>? ?? [];
    return PollQuestionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
      selectedOptionId: json['selectedOptionId'] as String?,
      options: opts
          .map((e) => PollOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
