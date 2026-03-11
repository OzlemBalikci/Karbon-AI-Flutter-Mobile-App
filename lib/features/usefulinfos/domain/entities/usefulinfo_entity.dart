class UsefulInfoEntity {
  const UsefulInfoEntity({
    required this.id,
    required this.title,
    required this.content,
    required this.displayOrder,
  });
  final String id;
  final String title;
  final String content;
  final int displayOrder;

  factory UsefulInfoEntity.fromJson(Map<String, dynamic> json) =>
      UsefulInfoEntity(
        id: json['id'] as String? ?? '',
        title: json['title'] as String? ?? '',
        content: json['content'] as String? ?? '',
        displayOrder: json['order'] as int? ?? 0,
      );
}
