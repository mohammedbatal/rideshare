import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/screen/auth/set_password.dart';
import 'package:rideshare/view/screen/home/home_screen.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Text(
                AppStrings.LoginWith,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              FlexibleTextField(
                  // isPasswordField: true,
                  controller: emailController,
                  hintText: AppStrings.Email),
              const SizedBox(height: 20),
              FlexibleTextField(
                  isPasswordField: true,
                  controller: passwordController,
                  hintText: AppStrings.EnterYourPassword),
              const SizedBox(height: 50),
              PrimaryButton(
                color: AppColors.primarycolor,
                text: AppStrings.Loigin,
                onPressed: () {
                  Get.to(HomeScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
