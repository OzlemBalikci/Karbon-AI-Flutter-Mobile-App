import 'package:karbon/features/carboncalculate/data/models/poll_option_dto.dart';
import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

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

  PollQuestionEntity toEntity() => PollQuestionEntity(
        id: id,
        text: text,
        displayOrder: displayOrder,
        selectedOptionId: selectedOptionId,
        options: options.map((o) => o.toEntity()).toList(),
      );
}
