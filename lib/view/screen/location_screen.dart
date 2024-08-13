import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/listtile.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController formController = TextEditingController();
    TextEditingController toController = TextEditingController();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Selectaddress)),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Get.bottomSheet(
                  enterBottomSheetDuration: const Duration(seconds: 1),
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        )),
                    height: height,
                    width: width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 40),
                          const Text(
                            AppStrings.Selectaddress,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.addresscolortitle),
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          const SizedBox(height: 20),
                          FlexibleTextField(
                            controller: formController,
                            hintText: AppStrings.Form,
                            prefixIcon: Icons.my_location,
                          ),
                          const SizedBox(height: 20),
                          FlexibleTextField(
                            controller: toController,
                            hintText: AppStrings.To,
                            prefixIcon: Icons.location_on_outlined,
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          const SizedBox(height: 20),
                          const Text(
                            AppStrings.Recentplaces,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.addresscolortitle),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: 22,
                              itemBuilder: (BuildContext context, int index) {
                                return ListtileSelectAddress();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
            },
            child: const Text(AppStrings.Selectaddress)),
      ),
    );
  }
}
