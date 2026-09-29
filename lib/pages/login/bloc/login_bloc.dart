import 'package:fade_finder/models/text_field_input/text_field_input.dart';
import 'package:fade_finder/pages/login/bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required LoginState initialState}) : super(initialState) {
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChange);
    on<LoginPressed>(_loginPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    var email = state.email;
    var errorType = ErrorType.none;
    if (event.email.isEmpty) {
      errorType = ErrorType.none;
    }
    email = email.copyWith(value: event.email, errorType: errorType);
    emit(state.copyWith(email: email));
  }

  void _passwordChange(PasswordChanged event, Emitter<LoginState> emit) {
    var password = state.password;
    var errorType = ErrorType.none;
    if (event.password.isEmpty) {
      errorType = ErrorType.none;
    }
    password = password.copyWith(value: event.password, errorType: errorType);
    emit(state.copyWith(password: password));
  }

  Future<User?> _loginPressed(
    LoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    final FirebaseAuth auth = FirebaseAuth.instance;

    // Register with email and password
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      // Handle specific error codes
      switch (e.code) {
        case 'email-already-in-use':
          throw Exception('This email is already registered');
        case 'weak-password':
          throw Exception('Password must be at least 6 characters');
        default:
          throw Exception('Registration failed: ${e.message}');
      }
    }
  }
}
