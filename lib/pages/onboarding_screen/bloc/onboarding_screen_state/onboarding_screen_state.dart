// ignore_for_file: unnecessary_import, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_screen_state.freezed.dart';

@freezed
sealed class OnboardingScreenState with _$OnboardingScreenState {
  // Added 'sealed'
  const factory OnboardingScreenState({@Default('') String message}) =
      _OnboardingScreenState;
}
