import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../Core/Constant/route.dart';
import '../../../Core/classes/HiveBox.dart';
import '../../../Core/classes/HiveKeys.dart';
import '../../../Core/classes/statusRequest.dart';
import '../../../Core/functions/handilingData.dart';
import '../../../Core/functions/warningAuthDialog.dart';
import '../../../Data/Data Source/Remote/auth/login/login_data.dart';
import '../../../Data/Data Source/Remote/auth/sign_up/sign_up_data.dart';
import '../../../View/Screens/Auth/sign_up/sign_up.dart';

class SignUpController extends GetxController {
  Box? authBox;
  Box? stepBox;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  SignUpData signUpData = SignUpData(Get.find());
  bool obscure = true;
  bool rememberMe = false;
  sRememberMe(val) {
    rememberMe = val;
    update();
  }

  void changeObscure() {
    obscure = !obscure;
    update();
  }

  void openBox() async {
    authBox = await Hive.openBox(HiveBox.authBox);
    stepBox = await Hive.openBox(HiveBox.stepBox);
  }

  signUp() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      // statusRequest = StatusRequest.loading;
      // update();
      // var response = await signUpData.postData(
      //     email.text, password.text, name.text, phoneNumber.text);
      // statusRequest = handilingData(response);
      // print(response);
      // if (StatusRequest.success == statusRequest) {
      //   if (response['status'] == 'success') {
      //     if (response['data']["user_approve"] == "1") {
      //       authBox!.put(HiveKeys.userNameKey, response['data']['user_name']);
      //       authBox!.put(HiveKeys.emailKey, response['data']['user_email']);
      //       authBox!.put(HiveKeys.phoneKey, response['data']['user_number']);
      //       authBox!
      //           .put(HiveKeys.locationKey, response['data']['user_location']);
      //       authBox!.put(HiveKeys.idKey, response['data']['user_id']);
      //       stepBox!.put(HiveKeys.stepKey, "1");
      Get.offAllNamed(AppRoute.main);
      //       }
      //     } else {
      //       warningAuthDialog('email already exiest');
      //       statusRequest = StatusRequest.faliure;
      //     }
      //   }
      //   update();
      // } else {
      //   print('not valid');
    }
  }

  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
