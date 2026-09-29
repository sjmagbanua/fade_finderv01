import 'package:fade_finder/pages/login/login.dart';
import 'package:fade_finder/pages/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<LoginBloc>();
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Icon(Icons.content_cut_rounded, size: 42),
            const SizedBox(height: 28),
            const Text('Welcome back'),
            const SizedBox(height: 8),
            const Text('Sign in to find and book your barber.'),
            const SizedBox(height: 32),
            TextFormField(
              onChanged: (value) {
                bloc.add(EmailChanged(value));
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 14),
            TextFormField(
              onChanged: (value) {
                bloc.add(PasswordChanged(value));
              },
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Forgot password?'),
              ),
            ),
            const SizedBox(height: 8),
            PrimaryButton(
              label: 'Login',
              loading: false,
              onPressed: () => bloc.add(LoginPressed()),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('OR'),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.g_mobiledata_rounded, size: 30),
              label: Text('Continue with Google'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
            const SizedBox(height: 18),
            // const Center(
            //   child: TextButton(
            //     onPressed: (){},
            //     child:  Text("Don't have an account? Sign up"),
            //   ),
            // ),
          ],
        );
      },
    );
  }
}
