import 'package:flutter/material.dart';

class OnboardingScreenBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Column(
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
            'pages[i]',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
