import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnboardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnboardingControllerImp extends OnboardingController {
  late PageController pageController;
  int currentPage = 0;
  @override
  next() {
    currentPage++;
    pageController.animateToPage(currentPage,
        duration: Duration(milliseconds: 900), curve: Curves.easeInOut);
    print('mohammed');
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
    print('===================');
    print(index);
    print('===================');
  }

  @override
  void onInit() {
    pageController = PageController();

    super.onInit();
  }
}
