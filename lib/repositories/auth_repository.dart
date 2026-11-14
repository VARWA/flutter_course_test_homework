import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepository {
  final Dio _dio;
  final _storage = const FlutterSecureStorage();
  static const _tokenKey = 'auth_token';

  AuthRepository(this._dio);

  Future<void> saveToken(String token) =>
      _storage.write(key: _tokenKey, value: token);

  Future<String?> getToken() => _storage.read(key: _tokenKey);

  Future<void> clearToken() => _storage.delete(key: _tokenKey);

  Future<bool> login(String login, String password) async {
    try {
      final response = await _dio.post(
        '/registration',
        data: {'login': login, 'password': password},
      );
      final token = jsonDecode(response.data)['token'];
      if (token != null) {
        await saveToken(token);
        return true;
      }
    } catch (_) {}
    return false;
  }

  Future<void> logout() => clearToken();
}
