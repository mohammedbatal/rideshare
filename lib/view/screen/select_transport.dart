import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/screen/avaiable_cycle.dart';
import 'package:rideshare/view/widgets/listtile.dart';

class SelectTransport extends StatelessWidget {
  const  SelectTransport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: const Text(AppStrings.Selecttransport)),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                AppStrings.Selectyourtransport,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.addresscolortitle),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.2,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                    crossAxisCount: 2,
                  ),
                  children: [
                    ContainerTransportGridview(
                        onTap: () {
                          print(AppStrings.Bike);
                          Get.to(const SelectAvaiableCar());
                        },
                        imageUrl: AppAssets.bike,
                        name: AppStrings.Bike),
                    ContainerTransportGridview(
                        onTap: () {
                          print(AppStrings.Cycle);
                          Get.to(const SelectAvaiableCar());
                        },
                        imageUrl: AppAssets.cycle,
                        name: AppStrings.Cycle),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
