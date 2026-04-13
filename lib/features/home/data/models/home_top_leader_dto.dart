import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

class HomeTopLeaderDto {
  const HomeTopLeaderDto({
    required this.rank,
    required this.fullName,
    required this.treeCount,
    required this.isCurrentUser,
  });

  final int rank;
  final String fullName;
  final int treeCount;
  final bool isCurrentUser;

  factory HomeTopLeaderDto.fromJson(Map<String, dynamic> json) {
    return HomeTopLeaderDto(
      rank: (json['rank'] as num?)?.toInt() ?? 0,
      fullName: json['fullName'] as String? ?? '',
      treeCount: (json['treeCount'] as num?)?.toInt() ?? 0,
      isCurrentUser: json['isCurrentUser'] as bool? ?? false,
    );
  }

  HomeTopLeaderEntity toEntity() => HomeTopLeaderEntity(
        rank: rank,
        fullName: fullName,
        treeCount: treeCount,
        isCurrentUser: isCurrentUser,
      );
}
