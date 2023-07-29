import 'package:delivery_app/Controller/Auth/log_in/log_in_controller.dart';
import 'package:delivery_app/Core/classes/HandilingData.dart';
import 'package:delivery_app/View/Screens/Auth/login/custom/bottom_page.dart';
import 'package:delivery_app/View/Screens/Auth/login/custom/login_form.dart';
import 'package:delivery_app/View/Screens/Auth/login/custom/remember_me_row.dart';
import 'package:delivery_app/View/Screens/Auth/login/custom/top_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/Auth/AuthController.dart';

class LoginScreen extends StatelessWidget {
  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => HandilingDataRequest(
        statusRequest: controller.statusRequest,
        widget: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Get.theme.primaryColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45))),
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopPageLogin(),
                LoginForm(),
                RememberMeRow(),
                const SizedBox(height: 20),
                BottomPageLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
