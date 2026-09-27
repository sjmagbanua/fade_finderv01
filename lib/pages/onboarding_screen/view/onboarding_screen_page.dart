import 'package:fade_finder/pages/onboarding_screen/bloc/bloc.dart';
import 'package:fade_finder/pages/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreenPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingScreenBloc>(
      create: (context) =>
          OnboardingScreenBloc(initialState: OnboardingScreenState()),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Expanded(child: OnboardingScreenBody())],
        ),
      ),
    );
  }
}
