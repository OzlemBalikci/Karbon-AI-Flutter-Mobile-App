import 'package:equatable/equatable.dart';

class UsefulInfoEntity extends Equatable {
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

  @override
  List<Object?> get props => [id, title, content, displayOrder];
}
