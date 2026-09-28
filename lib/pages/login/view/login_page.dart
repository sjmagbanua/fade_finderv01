import 'package:fade_finder/pages/login/view/view.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(child: LoginBody()),
          ),
        ],
      ),
    );
  }
}
