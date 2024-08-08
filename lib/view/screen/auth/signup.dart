import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Text(AppStrings.Signupwithyouremail),
              PrimaryTextField(
                  controller: controller, hintText: 'PrimaryTextField')
              //!
            ],
          ),
        ),
      ),
    );
  }
}
