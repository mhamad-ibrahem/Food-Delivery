import 'package:delivery_app/Controller/Auth/sign_up/sign_up_controller.dart';
import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/Core/classes/HandilingData.dart';
import 'package:delivery_app/View/Screens/Auth/sign_up/custom/sign_up_form.dart';
import 'package:delivery_app/View/Screens/Auth/sign_up/custom/sign_up_remember_me.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Auth/AuthController.dart';
import '../../Mian/Main.dart';

class SignUp extends StatelessWidget {
  SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
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
                FittedBox(
                    child: Text(
                  'CreateAccount'.tr,
                  style: Get.textTheme.headline2,
                )),
                const SizedBox(
                  height: 20,
                ),
                SignUpForm(),
                const SizedBox(height: 20),
                SignUpRememberMe(),
                Center(
                  child: CustomButton(
                      buttonBody: 'signup'.tr,
                      buttonColor: orange,
                      buttonWidth: MediaQuery.of(context).size.width * 0.8,
                      onTap: () async {
                        controller.signUp();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
