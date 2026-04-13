import 'package:karbon/features/home/data/dtos/global_target_dto.dart';
import 'package:karbon/features/home/data/dtos/home_top_leader_dto.dart';
import 'package:karbon/features/home/data/dtos/monthly_target_dto.dart';

/// GET `/api/v1/user-results/home` → `data` (`project_docs/home.md`).
class HomeDashboardDto {
  const HomeDashboardDto({
    required this.hasCompletedPoll,
    this.globalTarget,
    this.monthlyTarget,
    this.topLeaders,
  });

  final bool hasCompletedPoll;
  final GlobalTargetDto? globalTarget;
  final MonthlyTargetDto? monthlyTarget;
  final List<HomeTopLeaderDto>? topLeaders;

  factory HomeDashboardDto.fromJson(Map<String, dynamic> json) {
    final globalRaw = json['globalTarget'];
    final monthlyRaw = json['monthlyTarget'];
    final leadersRaw = json['topLeaders'];

    return HomeDashboardDto(
      hasCompletedPoll: json['hasCompletedPoll'] as bool? ?? false,
      globalTarget: globalRaw is Map<String, dynamic>
          ? GlobalTargetDto.fromJson(globalRaw)
          : globalRaw is Map
              ? GlobalTargetDto.fromJson(Map<String, dynamic>.from(globalRaw))
              : null,
      monthlyTarget: monthlyRaw is Map<String, dynamic>
          ? MonthlyTargetDto.fromJson(monthlyRaw)
          : monthlyRaw is Map
              ? MonthlyTargetDto.fromJson(Map<String, dynamic>.from(monthlyRaw))
              : null,
      topLeaders: leadersRaw == null
          ? null
          : leadersRaw is List
              ? leadersRaw
                  .whereType<Map>()
                  .map(
                    (e) => HomeTopLeaderDto.fromJson(
                      Map<String, dynamic>.from(e),
                    ),
                  )
                  .toList()
              : null,
    );
  }
}
