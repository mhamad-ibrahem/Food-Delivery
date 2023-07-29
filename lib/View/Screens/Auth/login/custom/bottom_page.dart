import 'package:delivery_app/Controller/Auth/log_in/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomButton.dart';
import '../../../../Widget/CustomText.dart';
import '../../../Mian/Main.dart';
import '../../sign_up/sign_up.dart';

class BottomPageLogin extends StatelessWidget {
  BottomPageLogin({super.key});
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: CustomButton(
              buttonBody: 'login'.tr,
              buttonColor: nav,
              buttonWidth: MediaQuery.of(context).size.width * 0.8,
              onTap: () async {
                controller.login();
              }),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(
                text: 'donthaveaccount'.tr,
                size: 13,
                color: Colors.grey.shade500,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w500),
            TextButton(
                onPressed: () {
                  controller.goToSignUp();
                },
                child: SizedBox(
                  height: 20,
                  child: FittedBox(
                    child: Text(
                      'signup'.tr,
                      style: const TextStyle(
                          color: orange,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
