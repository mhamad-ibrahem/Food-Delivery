import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/Core/Constant/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedBackController extends GetxController {
  sendFeedBack() {
    Get.offAllNamed(AppRoute.main);
    Get.snackbar(
        titleText: Container(
          alignment: Alignment.topLeft,
          height: 20,
          width: 30,
          child: FittedBox(
              child: Text(
            'Der Mohamad'.tr,
            style: Get.textTheme.headline4,
          )),
        ),
        duration: const Duration(seconds: 3),
        backgroundColor: Get.theme.primaryColor,
        borderRadius: 13,
        borderWidth: 2,
        borderColor: Get.theme.primaryColor,
        margin: EdgeInsets.only(
            top: AppSize.hieght * 0.02,
            left: AppSize.width * 0.05,
            right: AppSize.width * 0.05),
        messageText: Text(
          'Thank you for send your feedback'.tr,
          style: Get.textTheme.headline3,
        ),
        '',
        '');
  }

  skip() {
    Get.offAllNamed(AppRoute.main);
  }
}
