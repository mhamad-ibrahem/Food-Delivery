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
import '../../../View/Screens/Auth/sign_up/sign_up.dart';

class LoginController extends GetxController {
  Box? authBox;
  Box? stepBox;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());
  bool obscure = true;
  bool rememberMe = false;
  lRememberMe(val) {
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

  login() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      // statusRequest = StatusRequest.loading;
      // update();
      // var response = await loginData.postData(email.text, password.text);
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
      // } else {
      //   Get.toNamed(AppRoute.signUpOtp, arguments: {"email": email.text});
      // }
      //     } else {
      //       warningAuthDialog('email or password is wrong');
      //       statusRequest = StatusRequest.faliure;
      //     }
      //   }
      //   update();
      // } else {
      //   print('not valid');
    }
  }

  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
    email.clear();
    password.clear();
  }

  goToSignUp() {
    Get.bottomSheet(SignUp(),
        enableDrag: false,
        enterBottomSheetDuration: const Duration(milliseconds: 600),
        isScrollControlled: true,
        exitBottomSheetDuration: const Duration(milliseconds: 600));
  }

  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
