import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

warningAuthDialog(String subTitle) {
  Get.defaultDialog(
      title: 'Warning',
      middleText: subTitle,
      middleTextStyle: const TextStyle(
          color: blacke, fontSize: 17, fontWeight: FontWeight.w500),
      titleStyle: const TextStyle(
          color: red, fontSize: 24, fontWeight: FontWeight.bold));
}
