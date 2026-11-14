import 'package:flutter/foundation.dart';
import '../repositories/auth_repository.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepository _authRepository;

  bool _isAuthenticated = false;
  bool _initialized = false;

  bool get isAuthenticated => _isAuthenticated;

  bool get initialized => _initialized;

  AuthProvider(this._authRepository);

  Future<void> init() async {
    final token = await _authRepository.getToken();
    _isAuthenticated = token != null;
    _initialized = true;
    notifyListeners();
  }

  Future<bool> login(String login, String password) async {
    final success = await _authRepository.login(login, password);
    if (success) {
      _isAuthenticated = true;
      notifyListeners();
    }
    return success;
  }

  Future<void> logout() async {
    await _authRepository.logout();
    _isAuthenticated = false;
    notifyListeners();
  }
}
