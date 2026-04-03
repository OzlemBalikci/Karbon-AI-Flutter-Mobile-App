import 'package:karbon/features/carboncalculate/domain/entities/poll_items_entity.dart';

class PollOptionDto {
  const PollOptionDto({
    required this.id,
    required this.text,
    required this.message,
    required this.carbonValue,
    this.nextPollQuestionId,
  });

  final String id;
  final String text;
  final String message;
  final double carbonValue;
  final String? nextPollQuestionId;

  factory PollOptionDto.fromJson(Map<String, dynamic> json) {
    return PollOptionDto(
      id: json['id'] as String? ?? '',
      text: json['text'] as String? ?? '',
      message: json['message'] as String? ?? '',
      carbonValue: (json['carbonValue'] as num?)?.toDouble() ?? 0,
      nextPollQuestionId: json['nextPollQuestionId'] as String?,
    );
  }

  PollOptionEntity toEntity() => PollOptionEntity(
        id: id,
        text: text,
        message: message,
        carbonValue: carbonValue,
        nextPollQuestionId: nextPollQuestionId,
      );
}
