import 'package:karbon/features/usefulinfos/domain/entities/usefulinfo_entity.dart';

class UsefulInfoDto {
  const UsefulInfoDto({
    required this.id,
    required this.title,
    required this.content,
    required this.displayOrder,
  });

  final String id;
  final String title;
  final String content;
  final int displayOrder;

  factory UsefulInfoDto.fromJson(Map<String, dynamic> json) {
    return UsefulInfoDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
    );
  }

  UsefulInfoEntity toEntity() => UsefulInfoEntity(
        id: id,
        title: title,
        content: content,
        displayOrder: displayOrder,
      );
}
