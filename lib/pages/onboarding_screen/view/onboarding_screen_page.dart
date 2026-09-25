import 'package:fade_finder/pages/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreenPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: OnboardingScreenBody(),
          )
        ],
      ),
    );
  }
}