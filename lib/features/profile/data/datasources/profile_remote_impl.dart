import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/core/networks/api_config.dart';
import 'package:karbon/core/networks/api_envelope.dart';
import 'package:karbon/features/profile/data/datasources/profile_mock_data.dart';
import 'package:karbon/features/profile/data/datasources/profile_remote.dart';
import 'package:karbon/features/profile/data/models/profile_dtos.dart';
import 'package:karbon/features/profile/domain/entities/profile_entities.dart';

/// Gerçek HTTP + geliştirme mock’u.
///
/// **`API_BASE_URL` tanımlı değilse** (`ApiConfig.baseUrl.isEmpty`) → [profile_mock_data] içeriği.
/// **Base URL verildiğinde** (`flutter run --dart-define=API_BASE_URL=...`) → Dio ile backend.
///
/// Hata zarfı: [unwrapDataMap] → `isSuccess: false` için [BadRequestException]; HTTP için [AppInterceptor].
@LazySingleton(as: ProfileRemote)
class ProfileRemoteImpl implements ProfileRemote {
  ProfileRemoteImpl(this._dio);

  final Dio _dio;

  static const _profilePath = '/api/v1/users/me/profile';
  static const _donationsPath = '/api/v1/users/me/donations';
  static const _mePath = '/api/v1/users/me';

  bool get _useMocks => ApiConfig.baseUrl.isEmpty;

  @override
  Future<UserProfileEntity> getProfile() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return kMockUserProfile;
    }
    final res = await _dio.get<dynamic>(_profilePath);
    final data = unwrapDataMap(res.data);
    return UserProfileDto.fromJson(data).toEntity();
  }

  @override
  Future<DonationHistoryEntity> getDonations() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 250));
      return kMockDonationHistory;
    }
    final res = await _dio.get<dynamic>(_donationsPath);
    final data = unwrapDataMap(res.data);
    return DonationHistoryDto.fromJson(data).toEntity();
  }

  @override
  Future<DonateTreesResultEntity> donateTrees() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 250));
      return kMockDonateTreesResult;
    }
    final res = await _dio.post<dynamic>(_donationsPath);
    final data = unwrapDataMap(res.data);
    return DonateTreesResultDto.fromJson(data).toEntity();
  }

  @override
  Future<void> deleteAccount() async {
    if (_useMocks) {
      await Future<void>.delayed(const Duration(milliseconds: 200));
      return;
    }
    final res = await _dio.delete<dynamic>(_mePath);
    unwrapDataMap(res.data);
  }
}
