import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_page/bloc/auth_bloc.dart';
import 'package:login_page/login_screen.dart';
import 'package:login_page/widgets/gradient_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthInitialState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
                (route) => false);
          }
        },
        child: Center(
          child: GradientButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(LogoutRequested());
            },
          ),
        ),
      ),
    );
  }
}
