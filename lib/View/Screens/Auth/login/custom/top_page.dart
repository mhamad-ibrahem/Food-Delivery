import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopPageLogin extends StatelessWidget {
  const TopPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        FittedBox(
            child: Text(
          'wellcome'.tr,
          style: Get.textTheme.headline2,
        )),
        const SizedBox(
          height: 10,
        ),
        FittedBox(
            child: Text(
          'enterAccount'.tr,
          style: Get.textTheme.headline3,
        )),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
