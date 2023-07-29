import 'package:delivery_app/Controller/Auth/AuthController.dart';
import 'package:delivery_app/Controller/Auth/log_in/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../../Core/Services/ServicesFuncation.dart';
import '../../../../Widget/CustomForm.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  LoginController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'email'.tr,
              style: Get.textTheme.headline2,
            ),
            CustomForm(
              cursorColor: orange,
              controller: controller.email,
              obscureText: false,
              validator: (val) {
                return validate(val!, 30, 10);
              },
              textAlign: TextAlign.start,
              maxLines: 1,
              minLines: 1,
              fillColor: blacke,
              text: 'enterEmail'.tr,
              prefixIcon: const Icon(
                Icons.email,
                color: orange,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'password'.tr,
              style: Get.textTheme.headline2,
            ),
            CustomForm(
              cursorColor: orange,
              controller: controller.password,
              obscureText: controller.obscure,
              validator: (val) {
                return validate(val!, 18, 6);
              },
              textAlign: TextAlign.start,
              maxLines: 1,
              minLines: 1,
              fillColor: blacke,
              prefixIcon: const Icon(
                Icons.lock,
                color: orange,
              ),
              text: 'enterPassword'.tr,
              suffixIcon: IconButton(
                onPressed: () {
                  controller.changeObscure();
                },
                icon: controller.obscure == true
                    ? const Icon(
                        Icons.visibility,
                        color: orange,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: orange,
                      ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }
}
