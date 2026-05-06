// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cookie_jar/cookie_jar.dart' as _i557;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:karbon/core/networks/dio_client.dart' as _i372;
import 'package:karbon/di/di.dart' as _i314;
import 'package:karbon/features/auth/data/datasources/auth_launch_local.dart'
    as _i560;
import 'package:karbon/features/auth/data/datasources/auth_launch_local_impl.dart'
    as _i709;
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
import 'package:karbon/features/auth/domain/usecases/clear_local_session_usecase.dart'
    as _i382;
import 'package:karbon/features/auth/domain/usecases/delete_account_usecase.dart'
    as _i1015;
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
import 'package:karbon/features/auth/presentation/bloc/customfirstopen/customfirstopen_cubit.dart'
    as _i232;
import 'package:karbon/features/auth/presentation/bloc/forgotpassword/forgotpassword_cubit.dart'
    as _i208;
import 'package:karbon/features/auth/presentation/bloc/login/login_cubit.dart'
    as _i514;
import 'package:karbon/features/auth/presentation/bloc/register/register_cubit.dart'
    as _i121;
import 'package:karbon/features/auth/presentation/bloc/resetpassword/resetpassword_cubit.dart'
    as _i544;
import 'package:karbon/features/auth/presentation/bloc/settings/settings_bloc.dart'
    as _i614;
import 'package:karbon/features/calendar/data/datasources/calendar_remote.dart'
    as _i279;
import 'package:karbon/features/calendar/data/datasources/calendar_remote_impl.dart'
    as _i673;
import 'package:karbon/features/calendar/data/repositories/calendar_repository_impl.dart'
    as _i800;
import 'package:karbon/features/calendar/domain/repositories/calendar_repository.dart'
    as _i623;
import 'package:karbon/features/calendar/domain/usecases/get_activity_question_detail_usecase.dart'
    as _i910;
import 'package:karbon/features/calendar/domain/usecases/get_calendar_usecase.dart'
    as _i24;
import 'package:karbon/features/calendar/domain/usecases/get_details_usecase.dart'
    as _i996;
import 'package:karbon/features/calendar/domain/usecases/get_monthly_activities_usecase.dart'
    as _i753;
import 'package:karbon/features/calendar/presentation/bloc/calendar_bloc.dart'
    as _i682;
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_local.dart'
    as _i366;
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_local_impl.dart'
    as _i177;
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote.dart'
    as _i357;
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote_impl.dart'
    as _i408;
import 'package:karbon/features/carboncalculate/data/datasources/carboncalculate_remote_mock.dart'
    as _i596;
import 'package:karbon/features/carboncalculate/data/repositories/carbon_calculaterepository_impl.dart'
    as _i180;
import 'package:karbon/features/carboncalculate/domain/repositories/carboncalculate_repository.dart'
    as _i666;
import 'package:karbon/features/carboncalculate/domain/usecases/get_active_poll_usecase.dart'
    as _i926;
import 'package:karbon/features/carboncalculate/domain/usecases/save_poll_draft_usecase.dart'
    as _i715;
import 'package:karbon/features/carboncalculate/domain/usecases/submit_poll_answers_usecase.dart'
    as _i630;
import 'package:karbon/features/carboncalculate/presentation/bloc/carbon_calculate_bloc.dart'
    as _i959;
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote.dart'
    as _i614;
import 'package:karbon/features/dailyactivites/data/datasources/dailyactivities_remote_impl.dart'
    as _i261;
import 'package:karbon/features/dailyactivites/data/repositories/daily_activities_repository_impl.dart'
    as _i449;
import 'package:karbon/features/dailyactivites/domain/repositories/daily_activities_repository.dart'
    as _i320;
import 'package:karbon/features/dailyactivites/domain/usacases/get_pending_status_usecase.dart'
    as _i448;
import 'package:karbon/features/dailyactivites/domain/usacases/get_previous_answers_usecase.dart'
    as _i495;
import 'package:karbon/features/dailyactivites/domain/usacases/get_today_questions_usacase.dart'
    as _i671;
import 'package:karbon/features/dailyactivites/domain/usacases/post_answer_usecase.dart'
    as _i902;
import 'package:karbon/features/dailyactivites/presentation/bloc/dailyactivities_bloc.dart'
    as _i391;
import 'package:karbon/features/home/data/datasources/home_remote.dart' as _i25;
import 'package:karbon/features/home/data/datasources/home_remote_impl.dart'
    as _i701;
import 'package:karbon/features/home/data/datasources/home_remote_mock.dart'
    as _i318;
import 'package:karbon/features/home/data/repositories/home_repository_impl.dart'
    as _i274;
import 'package:karbon/features/home/domain/repositories/home_repository.dart'
    as _i406;
import 'package:karbon/features/home/domain/usecases/get_home_usecase.dart'
    as _i702;
import 'package:karbon/features/home/presentation/bloc/home_bloc.dart' as _i591;
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote.dart'
    as _i1036;
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote_impl.dart'
    as _i679;
import 'package:karbon/features/leaderofmont/data/datasources/leaderboard_remote_mock.dart'
    as _i637;
import 'package:karbon/features/leaderofmont/data/repositories/leaderboard_repository_impl.dart'
    as _i966;
import 'package:karbon/features/leaderofmont/domain/repositories/leaderboard_repository.dart'
    as _i77;
import 'package:karbon/features/leaderofmont/domain/usecases/get_leaderboard_data_usecase.dart'
    as _i520;
import 'package:karbon/features/leaderofmont/presentation/bloc/leaderofmonth_bloc.dart'
    as _i748;
import 'package:karbon/features/profile/data/datasources/profile_remote.dart'
    as _i483;
import 'package:karbon/features/profile/data/datasources/profile_remote_impl.dart'
    as _i103;
import 'package:karbon/features/profile/data/repositories/profile_repository_impl.dart'
    as _i758;
import 'package:karbon/features/profile/domain/repositories/profile_repository.dart'
    as _i48;
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
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote_impl.dart'
    as _i401;
import 'package:karbon/features/usefulinfos/data/datasources/usefulinfo_remote_mock.dart'
    as _i964;
import 'package:karbon/features/usefulinfos/data/repositories/usefulinfo_repository_impl.dart'
    as _i233;
import 'package:karbon/features/usefulinfos/domain/repositories/usefulinfo_repository.dart'
    as _i71;
import 'package:karbon/features/usefulinfos/domain/usecases/get_useful_infos_usecase.dart'
    as _i97;
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
    await gh.factoryAsync<_i557.CookieJar>(
      () => registerModule.cookieJar,
      preResolve: true,
    );
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.singleton<_i558.FlutterSecureStorage>(
        () => registerModule.secureStorage);
    gh.lazySingleton<_i372.DioClient>(() => _i372.DioClient());
    gh.lazySingleton<_i614.SettingsBloc>(() => _i614.SettingsBloc());
    gh.lazySingleton<_i366.CarbonCalculateLocal>(
        () => _i177.CarbonCalculateLocalImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i357.CarbonCalculateRemote>(
        () => _i596.CarbonCalculateRemoteMock());
    gh.lazySingleton<_i102.AuthLocal>(
        () => _i312.AuthLocalImpl(gh<_i558.FlutterSecureStorage>()));
    gh.lazySingleton<_i505.UsefulinfoRemote>(
        () => _i964.UsefulinfoRemoteMock());
    gh.lazySingleton<_i1036.LeaderboardRemote>(
        () => _i637.LeaderboardRemoteMock());
    gh.lazySingleton<_i25.HomeRemote>(() => _i318.HomeRemoteMock());
    gh.lazySingleton<_i560.AuthLaunchLocal>(
        () => _i709.AuthLaunchLocalImpl(gh<_i460.SharedPreferences>()));
    gh.lazySingleton<_i406.HomeRepository>(
        () => _i274.HomeRepositoryImpl(gh<_i25.HomeRemote>()));
    gh.lazySingleton<_i71.UsefulinfoRepository>(
        () => _i233.UsefulinfoRepositoryImpl(gh<_i505.UsefulinfoRemote>()));
    gh.singleton<_i361.Dio>(() => registerModule.dio(
          gh<_i102.AuthLocal>(),
          gh<_i557.CookieJar>(),
        ));
    gh.lazySingleton<_i77.LeaderboardRepository>(
        () => _i966.LeaderboardRepositoryImpl(gh<_i1036.LeaderboardRemote>()));
    gh.lazySingleton<_i666.CarbonCalculateRepository>(
        () => _i180.CarbonCalculateRepositoryImpl(
              gh<_i357.CarbonCalculateRemote>(),
              gh<_i366.CarbonCalculateLocal>(),
            ));
    gh.factory<_i97.GetUsefulInfosUseCase>(
        () => _i97.GetUsefulInfosUseCase(gh<_i71.UsefulinfoRepository>()));
    gh.factory<_i232.CustomFirstOpenCubit>(
        () => _i232.CustomFirstOpenCubit(gh<_i560.AuthLaunchLocal>()));
    gh.lazySingleton<_i279.CalendarRemote>(
        () => _i673.CalendarRemoteImpl(gh<_i361.Dio>()));
    gh.factory<_i434.UsefulinfoBloc>(
        () => _i434.UsefulinfoBloc(gh<_i97.GetUsefulInfosUseCase>()));
    gh.lazySingleton<_i614.DailyActivitiesRemote>(
        () => _i261.DailyActivitiesRemoteImpl(gh<_i361.Dio>()));
    gh.factory<_i701.HomeRemoteImpl>(
        () => _i701.HomeRemoteImpl(gh<_i361.Dio>()));
    gh.factory<_i679.LeaderboardRemoteImpl>(
        () => _i679.LeaderboardRemoteImpl(gh<_i361.Dio>()));
    gh.factory<_i401.UsefulinfoRemoteImpl>(
        () => _i401.UsefulinfoRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i413.AuthRemote>(
        () => _i699.AuthRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i483.ProfileRemote>(
        () => _i103.ProfileRemoteImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i623.CalendarRepository>(
        () => _i800.CalendarRepositoryImpl(gh<_i279.CalendarRemote>()));
    gh.lazySingleton<_i48.ProfileRepository>(
        () => _i758.ProfileRepositoryImpl(gh<_i483.ProfileRemote>()));
    gh.factory<_i26.DonateTreesUsecase>(
        () => _i26.DonateTreesUsecase(gh<_i48.ProfileRepository>()));
    gh.factory<_i524.GetDonationsUsecase>(
        () => _i524.GetDonationsUsecase(gh<_i48.ProfileRepository>()));
    gh.factory<_i812.GetProfileUseCase>(
        () => _i812.GetProfileUseCase(gh<_i48.ProfileRepository>()));
    gh.factory<_i520.GetLeaderboardDataUseCase>(() =>
        _i520.GetLeaderboardDataUseCase(gh<_i77.LeaderboardRepository>()));
    gh.factory<_i959.CarbonCalculateBloc>(
        () => _i959.CarbonCalculateBloc(gh<_i666.CarbonCalculateRepository>()));
    gh.factory<_i408.CarbonCalculateRemoteImpl>(
        () => _i408.CarbonCalculateRemoteImpl(
              gh<_i361.Dio>(),
              gh<_i366.CarbonCalculateLocal>(),
            ));
    gh.factory<_i702.GetHomeUseCase>(
        () => _i702.GetHomeUseCase(gh<_i406.HomeRepository>()));
    gh.factory<_i111.ProfileBloc>(() => _i111.ProfileBloc(
          gh<_i812.GetProfileUseCase>(),
          gh<_i524.GetDonationsUsecase>(),
          gh<_i26.DonateTreesUsecase>(),
        ));
    gh.lazySingleton<_i252.AuthRepository>(() => _i300.AuthRepositoryImpl(
          gh<_i413.AuthRemote>(),
          gh<_i102.AuthLocal>(),
          gh<_i557.CookieJar>(),
          gh<_i560.AuthLaunchLocal>(),
        ));
    gh.factory<_i926.GetActivePollUseCase>(() =>
        _i926.GetActivePollUseCase(gh<_i666.CarbonCalculateRepository>()));
    gh.factory<_i715.SavePollDraftUseCase>(() =>
        _i715.SavePollDraftUseCase(gh<_i666.CarbonCalculateRepository>()));
    gh.factory<_i630.SubmitPollAnswersUseCase>(() =>
        _i630.SubmitPollAnswersUseCase(gh<_i666.CarbonCalculateRepository>()));
    gh.factory<_i748.LeaderofmonthBloc>(
        () => _i748.LeaderofmonthBloc(gh<_i520.GetLeaderboardDataUseCase>()));
    gh.lazySingleton<_i320.DailyActivitiesRepository>(() =>
        _i449.DailyActivitiesRepositoryImpl(gh<_i614.DailyActivitiesRemote>()));
    gh.factory<_i591.HomeBloc>(
        () => _i591.HomeBloc(gh<_i702.GetHomeUseCase>()));
    gh.factory<_i448.GetPendingStatusUseCase>(() =>
        _i448.GetPendingStatusUseCase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i495.GetPreviousAnswersUseCase>(() =>
        _i495.GetPreviousAnswersUseCase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i671.GetTodayQuestionsUseCase>(() =>
        _i671.GetTodayQuestionsUseCase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i902.PostAnswersUseCase>(
        () => _i902.PostAnswersUseCase(gh<_i320.DailyActivitiesRepository>()));
    gh.factory<_i24.GetCalendarUsecase>(
        () => _i24.GetCalendarUsecase(gh<_i623.CalendarRepository>()));
    gh.factory<_i996.GetDetailsUsecase>(
        () => _i996.GetDetailsUsecase(gh<_i623.CalendarRepository>()));
    gh.factory<_i753.GetMonthlyActivitiesUsecase>(() =>
        _i753.GetMonthlyActivitiesUsecase(gh<_i623.CalendarRepository>()));
    gh.factory<_i910.GetActivityQuestionDetailUsecase>(() =>
        _i910.GetActivityQuestionDetailUsecase(gh<_i623.CalendarRepository>()));
    gh.factory<_i793.CheckSessionUseCase>(
        () => _i793.CheckSessionUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i382.ClearLocalSessionUseCase>(
        () => _i382.ClearLocalSessionUseCase(gh<_i252.AuthRepository>()));
    gh.factory<_i1015.DeleteAccountUseCase>(
        () => _i1015.DeleteAccountUseCase(gh<_i252.AuthRepository>()));
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
    gh.factory<_i682.CalendarBloc>(() => _i682.CalendarBloc(
          gh<_i24.GetCalendarUsecase>(),
          gh<_i753.GetMonthlyActivitiesUsecase>(),
          gh<_i996.GetDetailsUsecase>(),
          gh<_i910.GetActivityQuestionDetailUsecase>(),
        ));
    gh.factory<_i208.ForgotPasswordCubit>(
        () => _i208.ForgotPasswordCubit(gh<_i210.ForgotPasswordUseCase>()));
    gh.lazySingleton<_i564.AuthBloc>(() => _i564.AuthBloc(
          gh<_i793.CheckSessionUseCase>(),
          gh<_i566.LogoutUseCase>(),
          gh<_i382.ClearLocalSessionUseCase>(),
          gh<_i1015.DeleteAccountUseCase>(),
        ));
    gh.factory<_i514.LoginCubit>(() => _i514.LoginCubit(
          gh<_i1010.LoginUseCase>(),
          gh<_i564.AuthBloc>(),
        ));
    gh.factory<_i391.DailyActivitiesBloc>(() => _i391.DailyActivitiesBloc(
          gh<_i671.GetTodayQuestionsUseCase>(),
          gh<_i448.GetPendingStatusUseCase>(),
          gh<_i495.GetPreviousAnswersUseCase>(),
          gh<_i902.PostAnswersUseCase>(),
        ));
    gh.factory<_i121.RegisterCubit>(() => _i121.RegisterCubit(
          gh<_i558.RegisterUseCase>(),
          gh<_i564.AuthBloc>(),
          gh<_i560.AuthLaunchLocal>(),
        ));
    gh.factory<_i544.ResetPasswordCubit>(
        () => _i544.ResetPasswordCubit(gh<_i1018.ResetPasswordUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i314.RegisterModule {}
