import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Home/home_controller.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomIconBytton.dart';
import '../../Cart/CartScreen.dart';
import '../../Profile/screens/Notification.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({super.key});
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          fun: () {
            controller.goToNotification();
          },
          iconet: const Icon(
            Icons.notifications,
          ),
          color: Get.theme.primaryColor,
        ),
        Column(
          children: [
            FittedBox(
                child: Text(
              'Location'.tr,
              style: Get.textTheme.headline4,
            )),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: orange,
                ),
                FittedBox(
                    child: Text(
                  'Tartous/Syria'.tr,
                  style: Get.textTheme.headline3,
                ))
              ],
            )
          ],
        ),
        CustomIconButton(
          fun: () {
            controller.goToCart();
          },
          iconet: const Icon(
            Icons.add_shopping_cart,
          ),
          color: Get.theme.primaryColor,
        ),
      ],
    );
  }
}
