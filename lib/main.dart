import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/view/screen/Location_screen.dart';
import 'package:rideshare/view/screen/auth/login_screen.dart';
import 'package:rideshare/view/screen/onboarding.dart';
import 'package:rideshare/view/screen/profile.dart';
import 'package:rideshare/view/screen/avaiable_cycle.dart';
import 'package:rideshare/view/screen/select_transport.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SelectAvaiableCar(),
    );
  }
}
