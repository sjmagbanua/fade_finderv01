import 'package:fade_finder/pages/login/login.dart';
import 'package:fade_finder/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  static const route = '/login';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => LoginBloc(
        initialState: const LoginState(),
      ),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(child: LoginBody()),
            ),
          ],
        ),
      ),
    );
  }
}
