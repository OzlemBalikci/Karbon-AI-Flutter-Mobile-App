import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/profile/domain/entities/donate_trees_result_entity.dart';
import 'package:karbon/features/profile/domain/entities/donation_item_entity.dart';
import 'package:karbon/features/profile/domain/entities/donation_history_entity.dart';
import 'package:karbon/features/profile/domain/entities/user_profile_entity.dart';
import 'package:karbon/features/profile/data/datasources/profile_mock_data.dart';

abstract class ProfileRemote {
  Future<UserProfileEntity> getProfile();
  Future<DonationHistoryEntity> getDonations();
  Future<DonateTreesResultEntity> donateTrees();
  Future<void> deleteAccount();
  static const bool useMockProfile = true;
}

@LazySingleton(as: ProfileRemote)
class ProfileRemoteImpl implements ProfileRemote {
  ProfileRemoteImpl(this._dio);
  final Dio _dio;

  static const _profilePath = '/api/v1/users/me/profile';
  static const _donationsPath = '/api/v1/users/me/donations';
  static const _mePath = '/api/v1/users/me';

  Map<String, dynamic> _unwrapEnvelope(dynamic response) {
    final map = response as Map<String, dynamic>;
    if (map['isSuccess'] != true) {
      final errors = map['errors'];
      if (errors is List && errors.isNotEmpty) {
        throw Exception(errors.first.toString());
      }
      throw Exception('Request failed');
    }
    final data = map['data'];
    if (data == null) return {};
    return Map<String, dynamic>.from(data as Map);
  }

  @override
  Future<UserProfileEntity> getProfile() async {
    if (ProfileRemote.useMockProfile) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return kMockUserProfile;
    }
    try {
      final res = await _dio.get(_profilePath);
      return UserProfileEntity.fromJson(_unwrapEnvelope(res.data));
    } on DioException catch (_) {
      await Future<void>.delayed(const Duration(milliseconds: 150));
      return kMockUserProfile;
    }
  }

  @override
  Future<DonationHistoryEntity> getDonations() async {
    // final res = await _dio.get(_donationsPath);
    // return DonationsHistoryEntity.fromJson(_unwrapEnvelope(res.data));
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return DonationHistoryEntity(
      totalDonatedTreeCount: 1270,
      donations: [
        DonationItemEntity(
          treeCount: 10,
          pointsSpent: 5000,
          donationDate: DateTime.utc(2023, 12, 20),
        ),
        DonationItemEntity(
          treeCount: 10,
          pointsSpent: 5000,
          donationDate: DateTime.utc(2023, 12, 8),
        ),
      ],
    );
  }

  @override
  Future<DonateTreesResultEntity> donateTrees() async {
    // final res = await _dio.post(_donationsPath);
    // return DonateTreesResultEntity.fromJson(_unwrapEnvelope(res.data));
    await Future<void>.delayed(const Duration(milliseconds: 250));
    return const DonateTreesResultEntity(
      donatedTreeCount: 1200,
      totalDonatedTreeCount: 2470,
    );
  }

  @override
  Future<void> deleteAccount() async {
    // final res = await _dio.delete(_mePath);
    // _unwrapEnvelope(res.data); // data null
    await Future<void>.delayed(const Duration(milliseconds: 200));
  }
}
