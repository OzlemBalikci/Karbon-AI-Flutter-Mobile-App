import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:karbon/features/auth/data/datasources/auth_local.dart';

@LazySingleton(as: AuthLocal)
class AuthLocalImpl implements AuthLocal {
  AuthLocalImpl(this._secure);

  final FlutterSecureStorage _secure;

  static const _keyToken = 'auth_token';

  @override
  Future<bool> hasSession() async {
    final token = await _secure.read(key: _keyToken);
    return token != null && token.isNotEmpty;
  }

  @override
  Future<String?> getToken() async {
    final token = await _secure.read(key: _keyToken);
    return (token?.isEmpty ?? true) ? null : token;
  }

  @override
  Future<void> saveToken(String token) async {
    await _secure.write(key: _keyToken, value: token);
  }

  @override
  Future<void> clearSession() async {
    await _secure.delete(key: _keyToken);
  }
}
