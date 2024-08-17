import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/resources/textStyle.dart';
import 'package:rideshare/view/screen/offer_screen.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/listtile.dart';

class CycleDetails extends StatelessWidget {
  final String nameCycle;
  const CycleDetails({super.key, required this.nameCycle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Back)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nameCycle,
              style: const TextStyle(
                  color: AppColors.addresscolortitle,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(
                  Icons.star,
                  size: 22,
                  color: AppColors.goledColor,
                ),
                SizedBox(width: 20),
                Text(
                  '4.9 (531 reviews)',
                  style: TextStyle(
                      color: AppColors.addresscolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_ios),
                const SizedBox(width: 40),
                Image.asset(AppAssets.car),
                const SizedBox(width: 40),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
            const SizedBox(height: 20),
            Text('Specifications',
                style: MyTextStyle().myTextStyle(
                    color: AppColors.addresscolortitle,
                    fontsize: FontWeight.w500,
                    size: 18)),
            const Row(
              children: [
                ContainerDetails(
                    icon: Icons.battery_charging_full_rounded,
                    containt: '2500hp',
                    title: 'Max. power'),
                ContainerDetails(
                    icon: Icons.battery_charging_full_rounded,
                    title: 'Fuel',
                    containt: '10km per litre'),
                ContainerDetails(
                    icon: Icons.battery_charging_full_rounded,
                    title: 'Max. speed',
                    containt: '230kph'),
                ContainerDetails(
                    icon: Icons.battery_charging_full_rounded,
                    title: '0-60 mph',
                    containt: '2.5sec')
              ],
            ),
            const SizedBox(height: 20),
            Text('Car features',
                style: MyTextStyle().myTextStyle(
                    color: AppColors.addresscolortitle,
                    fontsize: FontWeight.w500,
                    size: 18)),
            const Column(
              children: [
                CarFeaturesdetails(title: 'Model', containt: 'GT5000'),
                CarFeaturesdetails(title: 'Capacity', containt: '760hp'),
                CarFeaturesdetails(title: 'Color', containt: 'Red'),
                CarFeaturesdetails(title: 'Fuel type', containt: 'Octane'),
                CarFeaturesdetails(title: 'Gear type', containt: 'Automatic'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: SecondaryBut(
                        text: AppStrings.Booklater, onPressed: () {})),
                const SizedBox(width: 20),
                Expanded(
                    child: SecondaryButton(
                        text: AppStrings.RideNow,
                        onPressed: () {
                          Get.to(const Offer());
                        }))
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
