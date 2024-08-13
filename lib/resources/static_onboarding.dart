import 'package:rideshare/model/onboarding_model.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_strings.dart';

List<OnboardingModel> onboardingList = [
  OnboardingModel(
      image: AppAssets.onboarding1,
      content: AppStrings.onboarding01Content,
      title: AppStrings.onboarding01Title),
  OnboardingModel(
      image: AppAssets.onboarding2,
      content: AppStrings.onboarding02Content,
      title: AppStrings.onboarding02Title),
  OnboardingModel(
      image: AppAssets.onboarding3,
      content: AppStrings.onboarding03Content,
      title: AppStrings.onboarding03Title),
];
