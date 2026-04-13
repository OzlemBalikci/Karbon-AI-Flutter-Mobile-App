import 'package:karbon/features/home/domain/entities/home_dashboard_entity.dart';

/// `project_docs/home.md` — anketi tamamlamış kullanıcı örneği.
/// Backend boşken geliştirme için [HomeRemoteMock] bu varlığı döner.
abstract final class HomeDashboardMock {
  static const HomeDashboardEntity dashboard = HomeDashboardEntity(
    hasCompletedPoll: true,
    globalTarget: GlobalTargetEntity(
      targetTreeCount: 670000,
      donatedTreeCount: 550000,
      remainingTreeCount: 120000,
      progressPercent: 82.1,
    ),
    monthlyTarget: MonthlyTargetEntity(
      month: 4,
      year: 2026,
      targetTreeCount: 67000,
      donatedTreeCount: 55000,
      remainingTreeCount: 12000,
      progressPercent: 82.1,
    ),
    topLeaders: [
      HomeTopLeaderEntity(
        rank: 1,
        fullName: 'Zeynep Kaya',
        treeCount: 1280,
        isCurrentUser: false,
      ),
      HomeTopLeaderEntity(
        rank: 2,
        fullName: 'Ahmet Yılmaz',
        treeCount: 940,
        isCurrentUser: false,
      ),
    ],
  );
}
