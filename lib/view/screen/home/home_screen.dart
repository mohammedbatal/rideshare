import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.Home),
      ),
    );
  }
}
