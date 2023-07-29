import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/Core/classes/statusRequest.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../Core/functions/handilingData.dart';
import '../../../Core/functions/warningAuthDialog.dart';
import '../../../Data/Data Source/Remote/auth/forget_password/email_sending_data.dart';

class EmialSendingController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController email = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  EmailData emailData = EmailData(Get.find());
  goToOtp() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      // statusRequest = StatusRequest.loading;
      // update();
      // var response = await emailData.postData(
      //   email.text,
      // );
      // statusRequest = handilingData(response);
      // print(response);
      // if (StatusRequest.success == statusRequest) {
      //   if (response['status'] == 'success') {
      Get.toNamed(AppRoute.verification);
      //   }
      // } else {
      //   warningAuthDialog('email not found');
      //   statusRequest = StatusRequest.faliure;
      // }
    } else {
      print('not valid');
    }
    update();
  }
}
