import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/resources/textStyle.dart';
import 'package:rideshare/view/widgets/buttons.dart';
import 'package:rideshare/view/widgets/textfields.dart';

class ListtileSelectAddress extends StatelessWidget {
  const ListtileSelectAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text(
        'Office',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.addresscolortitle),
      ),
      leading: Icon(
        Icons.location_on_rounded,
        color: AppColors.addresscolortitle,
      ),
      trailing: Text(
        '2.7km',
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.addresscolortitle),
      ),
      subtitle: Text(
        '2972 Westheimer Rd. Santa Ana, Illinois 85486',
        style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.addresscolor),
      ),
    );
  }
}

class ContainerTransportGridview extends StatelessWidget {
  final String name;
  final String imageUrl;
  final void Function()? onTap;
  const ContainerTransportGridview(
      {super.key, required this.name, required this.imageUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.textGreenColo, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Text(
              name,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class ListtileAvaiableCycle extends StatelessWidget {
  final VoidCallback onPressed;
  final String cycleName;
  final String cycleDetails;
  const ListtileAvaiableCycle(
      {super.key,
      required this.cycleName,
      required this.cycleDetails,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.textGreenColo, width: 1),
        ),
        child: Column(
          children: [
            Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cycleName,
                    style: const TextStyle(
                      color: AppColors.addresscolortitle,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    cycleDetails,
                    style: const TextStyle(
                      color: AppColors.addresscolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.location_on,
                          size: 18,
                          color: AppColors.griyColortitle,
                        ),
                      ),
                      Text(
                        '800m (5mins away)',
                        style: TextStyle(
                          color: AppColors.griyColortitle,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(AppAssets.bike),
            ]),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: SecondaryBut(
                        text: AppStrings.Booklater, onPressed: onPressed)),
                const SizedBox(width: 20),
                Expanded(
                    child: SecondaryButton(
                        text: AppStrings.RideNow, onPressed: onPressed)),
              ],
            ),
          ],
        ));
  }
}

class ContainerDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String containt;

  const ContainerDetails({
    super.key,
    required this.icon,
    required this.title,
    required this.containt,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: AppColors.secondary,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: AppColors.textGreenColo, width: 1),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: AppColors.addresscolor,
            ),
            Text(
              title,
              style: MyTextStyle().myTextStyle(
                  color: AppColors.addresscolortitle,
                  size: 12,
                  fontsize: FontWeight.w500),
            ),
            Text(
              containt,
              style: MyTextStyle().myTextStyle(
                  color: AppColors.addresscolortitle,
                  size: 10,
                  fontsize: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class CarFeaturesdetails extends StatelessWidget {
  final String title;
  final String containt;
  const CarFeaturesdetails({
    super.key,
    required this.title,
    required this.containt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.textGreenColo, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: MyTextStyle().myTextStyle(
                color: AppColors.addresscolortitle,
                size: 14,
                fontsize: FontWeight.w500),
          ),
          Text(
            containt,
            style: MyTextStyle().myTextStyle(
                color: AppColors.addresscolortitle,
                size: 14,
                fontsize: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class ContainerOffer extends StatelessWidget {
  final int rate;
  final String containt;
  const ContainerOffer({
    super.key,
    required this.rate,
    required this.containt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.textGreenColo, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '$rate% off',
                style: MyTextStyle().myTextStyle(
                    color: AppColors.goledColor,
                    size: 16,
                    fontsize: FontWeight.w500),
              ),
              Text(
                containt,
                style: MyTextStyle().myTextStyle(
                    color: AppColors.addresscolor,
                    size: 12,
                    fontsize: FontWeight.w500),
              )
            ],
          ),
          SecondaryButt(
            text: AppStrings.Collect,
            //!!bottomSheet
            onPressed: () {
              TextEditingController formController = TextEditingController();
              TextEditingController toController = TextEditingController();
              double width = MediaQuery.of(context).size.width;
              double height = MediaQuery.of(context).size.height;
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
            //!!bottomSheet
          )
        ],
      ),
    );
  }
}
