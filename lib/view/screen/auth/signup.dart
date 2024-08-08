import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController numbercontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Text(
                AppStrings.Signupwithyouremail,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              PrimaryTextField(controller: namecontroller, hintText: 'Name'),
              const SizedBox(height: 20),
              PrimaryTextField(controller: emailcontroller, hintText: 'Email'),
              const SizedBox(height: 20),
              PhoneNumberField(
                  controller: numbercontroller,
                  hintText: AppStrings.Yourmobilenumber,
                  countryCodes: const ['SY', 'AR'],
                  initialCountryCode: 'SY'),
              const SizedBox(height: 20),
              DropdownField(
                hintText: AppStrings.Gender,
                initialValue: AppStrings.Gender,
                options: const ['M', "F"],
              ),
              const SizedBox(height: 20),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle_outline,
                    color: AppColors.primarycolor,
                  ),
                  Spacer(),
                  Text(AppStrings.Bysigningup),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 50),
              PrimaryButton(
                color: AppColors.primarycolor,
                text: AppStrings.SignUp,
                onPressed: () {
                  // Get.to(Signup());
                },
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: AppColors.griyColor,
                        height: 50,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        AppStrings.or,
                        style:
                            TextStyle(fontSize: 16, color: AppColors.griyColor),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.griyColor,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              DanButton(
                text: AppStrings.SignupwithGmail,
                onPressed: () {},
                imageUrl: AppAssets.gmail,
              ),
              const SizedBox(height: 15),
              DanButton(
                text: AppStrings.SignupwithFacebook,
                onPressed: () {},
                imageUrl: AppAssets.facebook,
              ),
              const SizedBox(height: 15),
              DanButton(
                text: AppStrings.SignupwithApple,
                onPressed: () {},
                imageUrl: AppAssets.apple,
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.Alreadyhaveanaccount,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.griyColortitle),
                  ),
                  Text(
                    AppStrings.Signin,
                    style: TextStyle(
                        color: AppColors.primarycolor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
