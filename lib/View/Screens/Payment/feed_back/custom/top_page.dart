import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widget/SizedBoxHeight.dart';

class TopPageFeedBack extends StatelessWidget {
  const TopPageFeedBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
                color: Get.theme.primaryColor, shape: BoxShape.circle),
            child: Image.asset(
              'Assets/images/profile/profile2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 40),
        Text(
          'please give us your rate'.tr,
          style: Get.textTheme.headline1!.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
