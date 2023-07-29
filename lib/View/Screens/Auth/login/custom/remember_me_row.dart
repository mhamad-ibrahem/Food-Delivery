import 'package:delivery_app/Controller/Auth/log_in/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Auth/AuthController.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomText.dart';
import '../../forget_password/email_sending/EmailSending.dart';

class RememberMeRow extends StatelessWidget {
  RememberMeRow({super.key});
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Checkbox(
                value: controller.rememberMe,
                onChanged: (value) {
                  controller.lRememberMe(value);
                },
                checkColor: whitee,
                activeColor: orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
              FittedBox(
                  child: Text(
                'rememberme'.tr,
                style: Get.textTheme.headline3,
              ))
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: TextButton(
              onPressed: () {
                Get.off(() => EmailSendingSceen(),
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 700));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                height: 20,
                child: FittedBox(
                  child: CustomText(
                    text: 'forgetpassword'.tr,
                    color: orange,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        )
      ],
    );
  }
}
