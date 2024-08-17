import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/resources/textStyle.dart';
import 'package:rideshare/view/screen/home/home_screen.dart';
import 'package:rideshare/view/widgets/buttons.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.center, children: [
              Image.asset(AppAssets.star),
              const Icon(
                Icons.check,
                color: AppColors.greetowColor,
                size: 70,
              ),
            ]),
            const SizedBox(height: 20),
            Text(
              AppStrings.Thankyou,
              style: MyTextStyle().myTextStyle(
                  color: AppColors.addresscolortitle,
                  size: 20,
                  fontsize: FontWeight.w500),
            ),
            Text(
              AppStrings.Yourbookinghasbeenplacedsent,
              style: MyTextStyle().myTextStyle(
                  color: AppColors.addresscolortitle,
                  size: 12,
                  fontsize: FontWeight.w500),
            ),
            const Spacer(),
            PrimaryButton(
                text: AppStrings.ConfirmRide,
                onPressed: () {
                  Get.to(HomeScreen());
                },
                color: AppColors.primarycolor),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
