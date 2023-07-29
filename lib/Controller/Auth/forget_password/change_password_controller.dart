import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/Core/classes/statusRequest.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../Core/functions/handilingData.dart';
import '../../../Core/functions/warningAuthDialog.dart';
import '../../../Data/Data Source/Remote/auth/forget_password/change_password_data.dart';

class ChangePasswordController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  ChangePasswordData changePasswordData = ChangePasswordData(Get.find());
  bool obscure1 = true;
  bool obscure2 = true;
  changePassword() async {
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
      Get.offAllNamed(AppRoute.start);
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

  void changeObscure1() {
    obscure1 = !obscure1;
    update();
  }

  void changeObscure2() {
    obscure2 = !obscure2;
    update();
  }
}
