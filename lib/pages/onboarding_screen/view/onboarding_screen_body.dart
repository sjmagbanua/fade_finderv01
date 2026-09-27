import 'package:fade_finder/pages/onboarding_screen/bloc/bloc.dart';
import 'package:fade_finder/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreenBody extends StatefulWidget {
  const new({super.key});

  @override
  State<OnboardingScreenBody> createState() => _OnboardingScreenBodyState();
}

class _OnboardingScreenBodyState extends State<OnboardingScreenBody> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final pages = const [
    (
      'Find your next barber',
      'Discover nearby barbers and see their available schedules.',
    ),
    (
      'Book with confidence',
      'Choose a time that works for you and keep your appointments organized.',
    ),
    (
      'Chat with your barber',
      'Message your barber after booking and stay updated.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<OnboardingScreenBloc>();
    return BlocBuilder<OnboardingScreenBloc, OnboardingScreenState>(
      builder: (context, state) {
        return PageView.builder(
          controller: pageController,
          itemCount: 3,
          onPageChanged: (value) => bloc.add(PageViewChanged(value)),
          itemBuilder: (context, index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 240,
                width: 240,
                decoration: BoxDecoration(
                  color: const Color(0xFF171717),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: const Icon(
                  Icons.content_cut_rounded,
                  size: 100,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 44),
              Text(
                state.index.toString(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 44),
              Text(
                pages[index].$1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 14),
              Text(
                pages[index].$2,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  pages.length,
                  (i) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 7,
                    width: index == i ? 24 : 7,
                    decoration: BoxDecoration(
                      color: index == i ? Colors.black : Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              PrimaryButton(
                label: index == pages.length - 1 ? 'Get Started' : 'Next',
                onPressed: () {
                  if (index == pages.length - 1) {
                    context.go('/login');
                  } else {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeOut,
                    );
                  }
                },
                loading: false,
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => context.go('/login'),
                child: const Text('Skip'),
              ),
            ],
          ),
        );
      },
    );
  }
}
