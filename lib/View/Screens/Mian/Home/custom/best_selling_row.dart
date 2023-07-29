import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Home/home_controller.dart';
import '../../../AllProduct/AllProduct.dart';

class BestSellingRow extends StatelessWidget {
  BestSellingRow({super.key});
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FittedBox(
            child: Text(
          'Best Sellings'.tr,
          style: Get.textTheme.headline4,
        )),
        TextButton(
            onPressed: () {
              controller.goToAllProduct();
            },
            child: FittedBox(
                child: Text(
              'See all product'.tr,
              style: Get.textTheme.headline3,
            ))),
      ],
    );
  }
}
