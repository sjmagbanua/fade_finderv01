import 'package:fade_finder/models/models.dart';
import 'package:fade_finder/services/auth_service.dart';

class AuthRepositories {
  final AuthService _authService;
  const AuthRepositories({required this._authService});

  Future<Result> signIn() async {
    var result = await _authService.register('email', 'password');

    return Result(statusCode: 200);
  }
}
