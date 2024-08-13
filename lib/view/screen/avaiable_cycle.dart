import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/listtile.dart';

class SelectAvaiableCar extends StatelessWidget {
  const SelectAvaiableCar({super.key});

  @override
  Widget build(BuildContext context) {
    int number = 10;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, title: const Text(AppStrings.Selecttransport)),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                AppStrings.Avaiablecarsforride,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: AppColors.addresscolortitle),
              ),
              Text(
                '$number ${AppStrings.Cyclefound}',
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.addresscolor),
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.2,
                child: ListView.builder(
                  itemCount: number,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListtileAvaiableCycle();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
