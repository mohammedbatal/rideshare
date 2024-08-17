import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/screen/avaiable_cycle.dart';
import 'package:rideshare/view/screen/cycle_details_screen.dart';
import 'package:rideshare/view/screen/select_transport.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Home)),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(const CycleDetails(
                    nameCycle: 'CycleDetails',
                  ));
                },
                child: const Text('CycleDetails')),
            //!1
            ElevatedButton(
                onPressed: () {
                  Get.to(const SelectAvaiableCar());
                },
                child: const Text('SelectAvaiableCar')),
            //!2
            ElevatedButton(
                onPressed: () {
                  Get.to(const SelectTransport());
                },
                child: const Text('SelectTransport')),
          ],
        ),
      ),
    );
  }
}
