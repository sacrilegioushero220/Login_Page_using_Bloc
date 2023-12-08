import 'package:flutter/material.dart';
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
      body: Center(
        child: GradientButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
