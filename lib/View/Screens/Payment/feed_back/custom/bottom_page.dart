import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Payment/feed_back_controller.dart';
import '../../../../../Core/Constant/colors.dart';

class BottomPageFeedBack extends StatelessWidget {
  BottomPageFeedBack({super.key});
  FeedBackController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
            child: Text(
          'Don\'t want to give us a feedback?'.tr,
          style: Get.textTheme.headline3,
        )),
        TextButton(
          onPressed: () {
            controller.skip();
          },
          child: Text(
            'Skip'.tr,
            style: const TextStyle(
                color: orange,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
