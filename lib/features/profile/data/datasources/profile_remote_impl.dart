import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/features/profile/data/datasources/profile_mock_data.dart';
import 'package:karbon/features/profile/data/datasources/profile_remote.dart';
import 'package:karbon/features/profile/data/dtos/donate_trees_result_dto.dart';
import 'package:karbon/features/profile/data/dtos/donation_history_dto.dart';
import 'package:karbon/features/profile/data/dtos/user_profile_dto.dart';
import 'package:karbon/features/profile/data/mapper/profile_mapper.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';
import 'package:karbon/core/networks/response_ext.dart';

/// GET `/api/v1/users/me/profile`, `/api/v1/users/me/donations`; bağış için POST aynı donations yolu.
///
/// [ApiConfig.profileUseMock] `true` veya [ApiConfig.baseUrl] boşken
/// [profile_mock_data] kullanılır. Mock için: `--dart-define=PROFILE_USE_MOCK=true`.
@LazySingleton(as: ProfileRemote)
class ProfileRemoteImpl implements ProfileRemote {
  ProfileRemoteImpl(this._dio);

  final Dio _dio;

  bool get _useMocks => ApiConfig.baseUrl.isEmpty;

  @override
  Future<UserProfileEntity> getProfile() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return kMockUserProfile;
    }
    final res = await _dio.get<dynamic>('/api/v1/users/me/profile');
    final data = res.dataMap();
    return ProfileMapper.toUserProfileEntity(UserProfileDto.fromJson(data));
  }

  @override
  Future<DonationHistoryEntity> getDonations() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return kMockDonationHistory;
    }
    final res = await _dio.get<dynamic>('/api/v1/users/me/donations');
    final data = res.dataMap();
    return ProfileMapper.toDonationHistoryEntity(
        DonationHistoryDto.fromJson(data));
  }

  @override
  Future<DonateTreesResultEntity> donateTrees() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      return kMockDonateTreesResult;
    }
    final res = await _dio.post<dynamic>('/api/v1/users/me/donations');
    final data = res.dataMap();
    return ProfileMapper.toDonateTreesResultEntity(
        DonateTreesResultDto.fromJson(data));
  }
}
