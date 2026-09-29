import 'package:fade_finder/models/models.dart';
import 'package:fade_finder/services/auth_service.dart';

class AuthRepository {
  final AuthService _authService;

  const AuthRepository({required this._authService});

  Future<User> register(String email, String password) async {
    var result = await _authService.register(email, password);
    return User(displayName: result?.displayName ?? '', email: result?.email);
  }
}
