// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:fade_finder/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
sealed class LoginState with _$LoginState {
  // Added 'sealed'
  const factory LoginState({
    @Default(TextFieldInput(errorType: ErrorType.empty)) TextFieldInput email,
    @Default(TextFieldInput(errorType: ErrorType.empty))
    TextFieldInput password,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
    @Default(RequestStatus.waiting) RequestStatus googleSigninRequestStatus,
    int? role,
    @Default('') String message,
  }) = _LoginState;
}
