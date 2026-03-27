// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:karbon/di/di.dart' as _i314;
import 'package:karbon/features/auth/data/datasources/auth_local.dart' as _i102;
import 'package:karbon/features/auth/data/datasources/auth_local_impl.dart'
    as _i312;
import 'package:karbon/features/auth/data/datasources/auth_remote.dart'
    as _i413;
import 'package:karbon/features/auth/data/datasources/auth_remote_impl.dart'
    as _i699;
import 'package:karbon/features/auth/data/repositories/auth_repository_impl.dart'
    as _i300;
import 'package:karbon/features/auth/domain/repositories/auth_repository.dart'
    as _i252;
import 'package:karbon/features/auth/domain/usecases/checksession_usecase.dart'
    as _i793;
import 'package:karbon/features/auth/domain/usecases/forgotpassword_usecase.dart'
    as _i210;
import 'package:karbon/features/auth/domain/usecases/login_usecase.dart'
    as _i1010;
import 'package:karbon/features/auth/domain/usecases/logout_usecase.dart'
    as _i566;
import 'package:karbon/features/auth/domain/usecases/register_usecase.dart'
    as _i558;
import 'package:karbon/features/auth/domain/usecases/resetpassword_usecase.dart'
    as _i1018;
import 'package:karbon/features/auth/presentation/bloc/auth/auth_bloc.dart'
    as _i564;
import 'package:karbon/features/auth/presentation/bloc/login/login_bloc.dart'
    as _i171;
import 'package:karbon/features/auth/presentation/bloc/settings/settings_bloc.dart'
    as _i614;
import 'package:karbon/features/carboncalculate/data/datasources/carbon_calculate_remote.dart'
    as _i205;
import 'package:karbon/features/carboncalculate/data/repositories/carbon_calculate_repository_impl.dart'
    as _i163;
import 'package:karbon/features/carboncalculate/domain/repositories/carbon_calculate_repository.dart'
    as _i123;
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart'
    as _i959;
import 'package:karbon/features/dailyactivites/data/datasources/daily_activities_remote.dart'
    as _i342;
import 'package:karbon/features/dailyactivites/data/repositories/daily_activities_repository_impl.dart'
    as _i449;
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart'
    as _i320;
import 'package:karbon/features/dailyactivites/domain/usacases/get_calendar_usecase.dart'
    as _i1025;
import 'package:karbon/features/dailyactivites/domain/usacases/get_details_usecase.dart'
    as _i715;
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart'
    as _i448;
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart'
    as _i671;
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart'
    as _i902;
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart'
    as _i391;
import 'package:karbon/features/home/data/datasources/home_remote.dart' as _i25;
import 'package:karbon/features/home/data/repositories/home_repository_impl.dart'
    as _i274;
import 'package:karbon/features/home/domain/repositories/home_repository.dart'
    as _i406;
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart' as _i591;
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart'
    as _i1036;
import 'package:karbon/features/leaderofmont/data/repositories/leaderboard_repository_impl.dart'
    as _i966;
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository_impl.dart'
    as _i322;
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_bloc.dart'
    as _i748;
import 'package:karbon/features/profile/data/datasources/profile_remote.dart'
    as _i483;
import 'package:karbon/features/profile/data/repositories/profile_repository_impl.dart'
    as _i758;
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart'
    as _i48;
import 'package:karbon/features/profile/domain/usecases/delete_account_usecase.dart'
    as _i1049;
import 'package:karbon/features/profile/domain/usecases/donate_trees_usecase.dart'
    as _i26;
import 'package:karbon/features/profile/domain/usecases/get_donation_usecase.dart'
    as _i524;
import 'package:karbon/features/profile/domain/usecases/get_profile_usecase.dart'
    as _i812;
import 'package:karbon/features/profile/presentation/bloc/profile_bloc.dart'
    as _i111;
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote.dart'
    as _i505;
import 'package:karbon/features/usefulinfos/data/repositories/usefulinfo_repository_impl.dart'
    as _i233;
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart'
    as _i71;
import 'package:karbon/features/usefulinfos/presentation/bloc/usefulinfo_bloc.dart'
    as _i434;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i614.SettingsBloc>(() => _i614.SettingsBloc());
    gh.singleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i505.UsefulinfoRemote>(
        () => _i505.UsefulinfoRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i1036.LeaderboardRemote>(
        () => _i1036.LeaderboardRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i342.DailyActivitiesRemote>(
        () => _i342.DailyActivitiesRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i102.AuthLocal>(
        () => _i312.AuthLocalImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i205.CarbonCalculateRemote>(
        () => _i205.CarbonCalculateRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i483.ProfileRemote>(
        () => _i483.ProfileRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i413.AuthRemote>(
        () => _i699.AuthRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i322.LeaderboardRepository>(
        () => _i966.LeaderboardRepositoryImpl(gh<_i1036.LeaderboardRemote>()));
    gh.lazySingleton<_i48.ProfileRepository>(
        () => _i758.ProfileRepositoryImpl(gh<_i483.ProfileRemote>()));
    gh.factory<_i1049.DeleteAccountUsecase>(
        () => _i1049.DeleteAccountUsecase(gh<_i48.ProfileRepository>()));
    gh.factory<_i26.DonateTreesUsecase>(
        () => _i26.DonateTreesUsecase(gh<_i48.ProfileRepository>()));
    gh.factory<_i524.GetDonationsUsecase>(
        () => _i524.GetDonationsUsecase(gh<_i48.ProfileRepository>()));
    gh.factory<_i812.GetProfileUseCase>(
        () => _i812.GetProfileUseCase(gh<_i48.ProfileRepository>()));
    gh.lazySingleton<_i25.HomeRemote>(
        () => _i25.HomeRemoteImpl(gh<_i361.Dio>()));
    gh.singleton<_i111.ProfileBloc>(
        () => _i111.ProfileBloc(gh<_i812.GetProfileUseCase>()));
    gh.lazySingleton<_i71.UsefulinfoRepository>(
        () => _i233.UsefulinfoRepositoryImpl(gh<_i505.UsefulinfoRemote>()));
    gh.lazySingleton<_i123.CarbonCalculateRepository>(() =>
        _i163.CarbonCalculateRepositoryImpl(gh<_i205.CarbonCalculateRemote>()));
    gh.lazySingleton<_i406.HomeRepository>(() => _i274.HomeRepositoryImpl(
          gh<_i25.HomeRemote>(),
          gh<_i460.SharedPreferences>(),
        ));
    gh.lazySingleton<_i320.DailyActivitiesRepository>(() =>
        _i449.DailyActivitiesRepositoryImpl(gh<_i342.DailyActivitiesRemote>()));
    gh.singleton<_i748.LeaderofmonthBloc>(
        () => _i748.LeaderofmonthBloc(gh<_i322.LeaderboardRepository>()));
    gh.lazySingleton<_i252.AuthRepository>(() => _i300.AuthRepositoryImpl(
          gh<_i413.AuthRemote>(),
          gh<_i102.AuthLocal>(),
        ));
    gh.factory<_i434.UsefulinfoBloc>(
        () => _i434.UsefulinfoBloc(gh<_i71.UsefulinfoRepository>()));
    gh.factory<_i959.CarbonCalculateBloc>(
        () => _i959.CarbonCalculateBloc(gh<_i123.CarbonCalculateRepository>()));
    gh.singleton<_i591.HomeBloc>(
        () => _i591.HomeBloc(gh<_i406.HomeRepository>()));
    gh.factory<_i1025.GetCalendarUsecase>(
        () => _i1025.GetCalendarUsecase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i715.GetDetailsUsecase>(
        () => _i715.GetDetailsUsecase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i448.GetPendingStatusUsecase>(() =>
        _i448.GetPendingStatusUsecase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i671.GetTodayQuestionsUsecase>(() =>
        _i671.GetTodayQuestionsUsecase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i902.PostAnswerUsecase>(
        () => _i902.PostAnswerUsecase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i793.CheckSessionUseCase>(
        () => _i793.CheckSessionUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i210.ForgotPasswordUseCase>(
        () => _i210.ForgotPasswordUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i1010.LoginUseCase>(
        () => _i1010.LoginUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i566.LogoutUseCase>(
        () => _i566.LogoutUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i558.RegisterUseCase>(
        () => _i558.RegisterUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i1018.ResetPasswordUseCase>(
        () => _i1018.ResetPasswordUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i171.LoginBloc>(
        () => _i171.LoginBloc(gh<_i1010.LoginUseCase>()));
    gh.factory<_i564.AuthBloc>(() => _i564.AuthBloc(
          gh<_i793.CheckSessionUseCase>(),
          gh<_i566.LogoutUseCase>(),
        ));
    gh.singleton<_i391.DailyActivitiesBloc>(() => _i391.DailyActivitiesBloc(
          gh<_i671.GetTodayQuestionsUsecase>(),
          gh<_i448.GetPendingStatusUsecase>(),
          gh<_i1025.GetCalendarUsecase>(),
          gh<_i902.PostAnswerUsecase>(),
          gh<_i715.GetDetailsUsecase>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i314.RegisterModule {}
