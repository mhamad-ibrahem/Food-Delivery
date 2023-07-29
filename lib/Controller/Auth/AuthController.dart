import 'package:delivery_app/Core/Services/ServicesFuncation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../View/Screens/Mian/Main.dart';

class AuthController extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey();
  GlobalKey<FormState> formstate2 = GlobalKey();
  ServicesFuncation servicesFuncation = ServicesFuncation();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController emailLogin = TextEditingController();
  TextEditingController passwordLogin = TextEditingController();
  TextEditingController emailSend = TextEditingController();
  TextEditingController passwordChange = TextEditingController();
  TextEditingController password2Change = TextEditingController();
  TextEditingController passwordEdit = TextEditingController();
  TextEditingController emailEdit = TextEditingController();
  TextEditingController passwordEdite2 = TextEditingController();
  TextEditingController nameEdit = TextEditingController();
  bool isLoading = false;
  bool ckeck1 = false;
  bool check2 = false;
  bool obscure1 = true;
  bool obscure2 = true;
  bool obscure3 = true;
  bool obscure4 = true;
  changeCheck1(val) {
    ckeck1 = val;
    update();
  }

  changeCheck2(val) {
    check2 = val;
    update();
  }

  changeObscure1() {
    obscure1 = !obscure1;
    update();
  }

  changeObscure2() {
    obscure2 = !obscure2;
    update();
  }

  changeObscure3() {
    obscure3 = !obscure3;
    update();
  }

  changeObscure4() {
    obscure4 = !obscure4;
    update();
  }

  login() async {
    var formData = formstate.currentState;
    // isLoading == true;
    update();
    if (formData!.validate()) {
      // var response = await servicesFuncation.postRequest(linkLogin, {
      //   'password': passwordLogin.text,
      //   'email': emailLogin.text,
      // });
      // isLoading = false;
      // update();
      // try {
      //   if (response['status'] == 'success') {
      //     shared_preferences.setString('id', response['data']['id'].toString());
      //     shared_preferences.setString('name', response['data']['name']);
      //     shared_preferences.setString('email', response['data']['email']);
      //     print(shared_preferences.getString('id'));
      // shared_preferences.setString('password', response['data']['password']);
      Get.offAll(() => MainScreen(),
          transition: Transition.fade, duration: Duration(milliseconds: 800));
    } else {
      Get.defaultDialog(
          title: 'Somethings Wrong',
          middleText:
              'The Email or Password is Wrong or This Email Not Found'.tr,
          backgroundColor: Get.theme.primaryColor,
          titleStyle: Get.textTheme.headline2,
          middleTextStyle: Get.textTheme.headline3);
    }
    // }
    // catch (e) {
    //   print('error catch $e');
    // }
    // }
  }

  signUp() async {
    if (formstate2.currentState!.validate()) {
      // isLoading == true;
      // update();
      // var response = await servicesFuncation.postRequest(linkSignUp,
      //     {'name': name.text, 'email': email.text, 'password': password.text});
      // isLoading == false;
      // update();
      // if (response['status'] == 'success') {
      Get.offAll(() => MainScreen(),
          transition: Transition.fade, duration: Duration(milliseconds: 800));
      // } else {
      //   print('api fail');
      // }
      // }
    }
  }
}
