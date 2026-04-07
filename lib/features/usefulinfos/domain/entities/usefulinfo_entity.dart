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
}
