import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/resources/static_onboarding.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.skip),
      ),
      body: PageView.builder(
          itemCount: onboardingList.length,
          itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: Image.asset(
                      onboardingList[index].image!,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 60, 60, 10),
                    child: Text(onboardingList[index].title!,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: AppColors.griyColortitle)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 10, 60, 40),
                    child: Text(onboardingList[index].content!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.griyColor)),
                  ),
                  const Spacer(),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.textGreenColo),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 40,
                      color: AppColors.griyColortitle,
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              )),
    );
  }
}
