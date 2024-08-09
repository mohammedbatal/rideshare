import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity, height: 40),
              const Text(
                AppStrings.Setpassword,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.griyColortitle),
              ),
              const SizedBox(height: 15),
              const Text(
                AppStrings.Setyourpassword,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.griyColor),
              ),
              const SizedBox(height: 20),
              FlexibleTextField(
                  isPasswordField: true,
                  controller: passController,
                  hintText: AppStrings.EnterYourPassword),
              const SizedBox(height: 15),
              FlexibleTextField(
                  isPasswordField: true,
                  controller: confirmPasswordController,
                  hintText: AppStrings.ConfirmPassword),
              const SizedBox(height: 20),
              const Text(AppStrings.Atleast1numberoraspecialcharacter,
                  style: TextStyle(
                      color: AppColors.griyColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              PrimaryButton(
                  text: AppStrings.Register,
                  onPressed: () {},
                  color: AppColors.primarycolor)
            ],
          ),
        ),
      ),
    );
  }
}
