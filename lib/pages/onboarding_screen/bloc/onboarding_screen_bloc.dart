import 'package:fade_finder/pages/onboarding_screen/bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreenBloc
    extends Bloc<OnboardingScreenEvent, OnboardingScreenState> {
  OnboardingScreenBloc({required OnboardingScreenState initialState})
    : super(initialState) {
    on<PageViewChanged>(_pageViewChanged);
  }
  void _pageViewChanged(
    PageViewChanged event,
    Emitter<OnboardingScreenState> emit,
  ) {
    emit(state.copyWith(index: event.index));
  }
}
