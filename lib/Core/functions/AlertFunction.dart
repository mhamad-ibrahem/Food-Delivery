import 'dart:io';
import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Future<bool> closeAppDialog() {
  Get.defaultDialog(
      title: 'Warning',
      titleStyle: const TextStyle(color: red, fontSize: 20),
      middleTextStyle: Get.textTheme.headline1,
      middleText: 'Do you want exit this app ?',
      titlePadding: const EdgeInsets.all(10),
      contentPadding: const EdgeInsets.all(10),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
              color: green,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {
                exit(0);
              },
              child: const Text(
                'Confirm',
                style: TextStyle(color: whitee),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialButton(
              color: red,
              onPressed: () {
                Get.back();
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Cancel',
                style: TextStyle(color: whitee),
              )),
        ),
      ]);
  return Future.value(true);
}
