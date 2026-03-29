import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_remote.dart';
import 'package:karbon/features/auth/data/models/forgotpassword_request_model.dart';
import 'package:karbon/features/auth/data/models/login_request_model.dart';
import 'package:karbon/features/auth/data/models/login_response_model.dart';
import 'package:karbon/features/auth/data/models/register_request_model.dart';
import 'package:karbon/features/auth/data/models/register_response_model.dart';
import 'package:karbon/features/auth/data/models/resetpassword_request_model.dart';
import 'package:karbon/features/auth/data/models/user_model.dart';

@LazySingleton(as: AuthRemote)
class AuthRemoteImpl implements AuthRemote {
  AuthRemoteImpl(this._dio);
  final Dio _dio;

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    final res = await _dio.post(
      '/api/v1/users/login',
      data: request.toJson(),
    );
    final data = _unwrapMap(res.data);
    return LoginResponseModel.fromJson(data);
  }

  @override
  Future<RegisterResponseModel> register(RegisterRequestModel request) async {
    final res = await _dio.post(
      '/api/v1/users/register',
      data: request.toJson(),
    );
    final envelope = res.data as Map<String, dynamic>;
    _assertSuccess(envelope);
    return RegisterResponseModel.fromDataField(envelope['data']);
  }

  @override
  Future<UserModel> getProfile() async {
    final res = await _dio.get('/api/v1/users/me/profile');
    final data = _unwrapMap(res.data);
    return UserModel.fromJson(data);
  }

  @override
  Future<void> forgotPassword({required String phoneNumber}) async {
    final request = ForgotPasswordRequestModel(phoneNumber: phoneNumber);
    final res = await _dio.post(
      '/api/v1/users/password/forgot',
      data: request.toJson(),
    );
    _assertSuccess(res.data as Map<String, dynamic>);
  }

  @override
  Future<void> resetPassword({
    required String phoneNumber,
    required String resetCode,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    final request = ResetPasswordRequestModel(
      phoneNumber: phoneNumber,
      resetCode: resetCode,
      newPassword: newPassword,
      confirmNewPassword: confirmNewPassword,
    );
    final res = await _dio.post(
      '/api/v1/users/password/reset',
      data: request.toJson(),
    );
    _assertSuccess(res.data as Map<String, dynamic>);
  }

  @override
  Future<void> logout() async {
    // Token local'den siliniyor; backend logout endpoint'i yoksa burada bir şey yapılmaz.
  }

  // ── Yardımcı metodlar ────────────────────────────────────────────────────

  /// `{isSuccess, data: {...}}` zarfından `data` map'ini çıkarır.
  Map<String, dynamic> _unwrapMap(dynamic response) {
    final envelope = response as Map<String, dynamic>;
    _assertSuccess(envelope);
    final data = envelope['data'];
    if (data == null) return <String, dynamic>{};
    return Map<String, dynamic>.from(data as Map);
  }

  void _assertSuccess(Map<String, dynamic> envelope) {
    if (envelope['isSuccess'] != true) {
      final errors = envelope['errors'];
      if (errors is List && errors.isNotEmpty) {
        throw Exception(errors.first.toString());
      }
      throw Exception('İstek başarısız oldu.');
    }
  }
}
