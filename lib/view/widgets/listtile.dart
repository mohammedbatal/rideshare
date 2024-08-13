import 'package:flutter/material.dart';
import 'package:rideshare/resources/app_assets.dart';
import 'package:rideshare/resources/app_colors.dart';
import 'package:rideshare/resources/app_strings.dart';
import 'package:rideshare/view/widgets/buttons.dart';

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
  const ListtileAvaiableCycle({super.key});

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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BMW Cabrio',
                    style: TextStyle(
                      color: AppColors.addresscolortitle,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Automatic   |   3 seats   |   Octane',
                    style: TextStyle(
                      color: AppColors.addresscolor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
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
                        text: AppStrings.Booklater, onPressed: () {})),
                const SizedBox(width: 20),
                Expanded(
                    child: SecondaryButton(
                        text: AppStrings.RideNow, onPressed: () {}))
              ],
            ),
          ],
        ));
  }
}
