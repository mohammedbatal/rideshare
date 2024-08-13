import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    // TextEditingController streetController = TextEditingController();
    // TextEditingController cityController = TextEditingController();
    // TextEditingController districtController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.Profile), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30, width: double.infinity),
              Stack(children: <Widget>[
                Container(
                  width: 121,
                  height: 121,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.hintTextFormColor,
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.greenColor,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            size: 22,
                          ),
                          color: Colors.white,
                          onPressed: () {},
                        )))
              ]),
              const SizedBox(height: 30),
              PrimaryTextField(
                  controller: fullNameController,
                  hintText: AppStrings.FullName),
              const SizedBox(height: 20),
              PhoneNumberField(
                  controller: numberController,
                  hintText: AppStrings.Yourmobilenumber,
                  countryCodes: const ['SY'],
                  initialCountryCode: 'SY'),
              const SizedBox(height: 20),
              PrimaryTextField(
                  controller: emailController, hintText: AppStrings.Email),
              const SizedBox(height: 20),
              PrimaryTextField(
                  controller: emailController, hintText: AppStrings.Street),
              const SizedBox(height: 20),
              DropdownField(
                hintText: AppStrings.City,
                initialValue: AppStrings.City,
                options: const [AppStrings.Damascus, AppStrings.Aleppo],
              ),
              const SizedBox(height: 20),
              DropdownField(
                hintText: AppStrings.District,
                initialValue: AppStrings.District,
                options: const [
                  AppStrings.District1AbuRomana,
                  AppStrings.District2Malki,
                  AppStrings.District3MazzaSharqiya,
                  AppStrings.District4MazzaGharbiya,
                  AppStrings.District5NahrAisha,
                  AppStrings.District6Bebila,
                  AppStrings.District7Baramka,
                  AppStrings.District8Halabouni,
                  AppStrings.District9Fahameh,
                  AppStrings.District10Mahajreen,
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: SecondaryBut(
                          text: AppStrings.Cancel, onPressed: () {})),
                  const SizedBox(width: 20),
                  Expanded(
                      child: SecondaryButton(
                          text: AppStrings.Save, onPressed: () {}))
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
