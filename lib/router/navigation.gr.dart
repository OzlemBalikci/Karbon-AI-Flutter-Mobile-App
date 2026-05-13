// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'navigation.dart';

/// generated route for
/// [CalendarFirstOpenPage]
class CalendarFirstOpenRoute extends PageRouteInfo<void> {
  const CalendarFirstOpenRoute({List<PageRouteInfo>? children})
      : super(CalendarFirstOpenRoute.name, initialChildren: children);

  static const String name = 'CalendarFirstOpenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CalendarFirstOpenPage();
    },
  );
}

/// generated route for
/// [CalendarSelectedQuestionDetailPage]
class CalendarSelectedQuestionDetailRoute
    extends PageRouteInfo<CalendarSelectedQuestionDetailRouteArgs> {
  CalendarSelectedQuestionDetailRoute({
    Key? key,
    required String questionId,
    required String questionText,
    required String answerText,
    required double score,
    List<PageRouteInfo>? children,
  }) : super(
          CalendarSelectedQuestionDetailRoute.name,
          args: CalendarSelectedQuestionDetailRouteArgs(
            key: key,
            questionId: questionId,
            questionText: questionText,
            answerText: answerText,
            score: score,
          ),
          initialChildren: children,
        );

  static const String name = 'CalendarSelectedQuestionDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CalendarSelectedQuestionDetailRouteArgs>();
      return CalendarSelectedQuestionDetailPage(
        key: args.key,
        questionId: args.questionId,
        questionText: args.questionText,
        answerText: args.answerText,
        score: args.score,
      );
    },
  );
}

class CalendarSelectedQuestionDetailRouteArgs {
  const CalendarSelectedQuestionDetailRouteArgs({
    this.key,
    required this.questionId,
    required this.questionText,
    required this.answerText,
    required this.score,
  });

  final Key? key;

  final String questionId;

  final String questionText;

  final String answerText;

  final double score;

  @override
  String toString() {
    return 'CalendarSelectedQuestionDetailRouteArgs{key: $key, questionId: $questionId, questionText: $questionText, answerText: $answerText, score: $score}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CalendarSelectedQuestionDetailRouteArgs) return false;
    return key == other.key &&
        questionId == other.questionId &&
        questionText == other.questionText &&
        answerText == other.answerText &&
        score == other.score;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      questionId.hashCode ^
      questionText.hashCode ^
      answerText.hashCode ^
      score.hashCode;
}

/// generated route for
/// [CalendarShellPage]
class CalendarShellRoute extends PageRouteInfo<void> {
  const CalendarShellRoute({List<PageRouteInfo>? children})
      : super(CalendarShellRoute.name, initialChildren: children);

  static const String name = 'CalendarShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CalendarShellPage();
    },
  );
}

/// generated route for
/// [CarbonCalculatePage]
class CarbonCalculateRoute extends PageRouteInfo<void> {
  const CarbonCalculateRoute({List<PageRouteInfo>? children})
      : super(CarbonCalculateRoute.name, initialChildren: children);

  static const String name = 'CarbonCalculateRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CarbonCalculatePage();
    },
  );
}

/// generated route for
/// [CustomFirstOpenPage]
class CustomFirstOpenRoute extends PageRouteInfo<void> {
  const CustomFirstOpenRoute({List<PageRouteInfo>? children})
      : super(CustomFirstOpenRoute.name, initialChildren: children);

  static const String name = 'CustomFirstOpenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CustomFirstOpenPage();
    },
  );
}

/// generated route for
/// [DailyActivitiesPage]
class DailyActivitiesRoute extends PageRouteInfo<void> {
  const DailyActivitiesRoute({List<PageRouteInfo>? children})
      : super(DailyActivitiesRoute.name, initialChildren: children);

  static const String name = 'DailyActivitiesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DailyActivitiesPage();
    },
  );
}

/// generated route for
/// [DailyActivitiesShellPage]
class DailyActivitiesShellRoute extends PageRouteInfo<void> {
  const DailyActivitiesShellRoute({List<PageRouteInfo>? children})
      : super(DailyActivitiesShellRoute.name, initialChildren: children);

  static const String name = 'DailyActivitiesShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DailyActivitiesShellPage();
    },
  );
}

/// generated route for
/// [DayDetailPage]
class DayDetailRoute extends PageRouteInfo<DayDetailRouteArgs> {
  DayDetailRoute({
    Key? key,
    required String date,
    List<PageRouteInfo>? children,
  }) : super(
          DayDetailRoute.name,
          args: DayDetailRouteArgs(key: key, date: date),
          initialChildren: children,
        );

  static const String name = 'DayDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DayDetailRouteArgs>();
      return DayDetailPage(key: args.key, date: args.date);
    },
  );
}

class DayDetailRouteArgs {
  const DayDetailRouteArgs({this.key, required this.date});

  final Key? key;

  final String date;

  @override
  String toString() {
    return 'DayDetailRouteArgs{key: $key, date: $date}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DayDetailRouteArgs) return false;
    return key == other.key && date == other.date;
  }

  @override
  int get hashCode => key.hashCode ^ date.hashCode;
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(ForgotPasswordRoute.name, initialChildren: children);

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [HomeShellPage]
class HomeShellRoute extends PageRouteInfo<void> {
  const HomeShellRoute({List<PageRouteInfo>? children})
      : super(HomeShellRoute.name, initialChildren: children);

  static const String name = 'HomeShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeShellPage();
    },
  );
}

/// generated route for
/// [HomeTabShellPage]
class HomeTabShellRoute extends PageRouteInfo<void> {
  const HomeTabShellRoute({List<PageRouteInfo>? children})
      : super(HomeTabShellRoute.name, initialChildren: children);

  static const String name = 'HomeTabShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeTabShellPage();
    },
  );
}

/// generated route for
/// [LeaderofmonthPage]
class LeaderofmonthRoute extends PageRouteInfo<void> {
  const LeaderofmonthRoute({List<PageRouteInfo>? children})
      : super(LeaderofmonthRoute.name, initialChildren: children);

  static const String name = 'LeaderofmonthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LeaderofmonthPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [ProfileTabShellPage]
class ProfileTabShellRoute extends PageRouteInfo<void> {
  const ProfileTabShellRoute({List<PageRouteInfo>? children})
      : super(ProfileTabShellRoute.name, initialChildren: children);

  static const String name = 'ProfileTabShellRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileTabShellPage();
    },
  );
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RegisterPage();
    },
  );
}

/// generated route for
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    Key? key,
    required String phoneNumber,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(key: key, phoneNumber: phoneNumber),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ResetPasswordRouteArgs>();
      return ResetPasswordPage(key: args.key, phoneNumber: args.phoneNumber);
    },
  );
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({this.key, required this.phoneNumber});

  final Key? key;

  final String phoneNumber;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, phoneNumber: $phoneNumber}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ResetPasswordRouteArgs) return false;
    return key == other.key && phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => key.hashCode ^ phoneNumber.hashCode;
}

/// generated route for
/// [SeeAllPage]
class SeeAllRoute extends PageRouteInfo<SeeAllRouteArgs> {
  SeeAllRoute({
    Key? key,
    required int year,
    required int month,
    required int period,
    List<PageRouteInfo>? children,
  }) : super(
          SeeAllRoute.name,
          args: SeeAllRouteArgs(
            key: key,
            year: year,
            month: month,
            period: period,
          ),
          initialChildren: children,
        );

  static const String name = 'SeeAllRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SeeAllRouteArgs>();
      return MonthdetailPage(
        key: args.key,
        year: args.year,
        month: args.month,
        period: args.period,
      );
    },
  );
}

class SeeAllRouteArgs {
  const SeeAllRouteArgs({
    this.key,
    required this.year,
    required this.month,
    required this.period,
  });

  final Key? key;

  final int year;

  final int month;

  final int period;

  @override
  String toString() {
    return 'SeeAllRouteArgs{key: $key, year: $year, month: $month, period: $period}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SeeAllRouteArgs) return false;
    return key == other.key &&
        year == other.year &&
        month == other.month &&
        period == other.period;
  }

  @override
  int get hashCode =>
      key.hashCode ^ year.hashCode ^ month.hashCode ^ period.hashCode;
}

/// generated route for
/// [SelectedQuestionPage]
class SelectedQuestionRoute extends PageRouteInfo<void> {
  const SelectedQuestionRoute({List<PageRouteInfo>? children})
      : super(SelectedQuestionRoute.name, initialChildren: children);

  static const String name = 'SelectedQuestionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SelectedQuestionPage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}

/// generated route for
/// [UsefulinfoPage]
class UsefulinfoRoute extends PageRouteInfo<void> {
  const UsefulinfoRoute({List<PageRouteInfo>? children})
      : super(UsefulinfoRoute.name, initialChildren: children);

  static const String name = 'UsefulinfoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UsefulinfoPage();
    },
  );
}
