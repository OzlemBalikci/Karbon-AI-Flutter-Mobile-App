class UsefulInfo {
  final String id;
  final String title;
  final String content;
  final int order;

  const UsefulInfo({
    required this.id,
    required this.title,
    required this.content,
    required this.order,
  });

  factory UsefulInfo.fromJson(Map<String, dynamic> json) => UsefulInfo(
        id: json['id'] as String? ?? '',
        title: json['title'] as String? ?? '',
        content: json['content'] as String? ?? '',
        order: json['order'] as int? ?? 0,
      );
}
