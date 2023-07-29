import 'package:delivery_app/Controller/Auth/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Auth/AuthController.dart';
import '../../../../../Core/Constant/colors.dart';

class SignUpRememberMe extends StatelessWidget {
  SignUpRememberMe({super.key});
  SignUpController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: controller.rememberMe,
          onChanged: (val) {
            controller.sRememberMe(val);
          },
          checkColor: whitee,
          activeColor: orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        Text(
          'rememberme'.tr,
          style: Get.textTheme.headline3,
        )
      ],
    );
  }
}
