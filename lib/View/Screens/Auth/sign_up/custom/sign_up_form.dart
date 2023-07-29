import 'package:delivery_app/Controller/Auth/sign_up/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Auth/AuthController.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../../Core/Services/ServicesFuncation.dart';
import '../../../../Widget/CustomForm.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});
  SignUpController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name*'.tr,
              style: Get.textTheme.headline2,
            ),
            CustomForm(
              cursorColor: orange,
              controller: controller.name,
              obscureText: false,
              validator: (val) {
                return validate(val!, 20, 3);
              },
              textAlign: TextAlign.start,
              maxLines: 1,
              minLines: 1,
              text: 'EnterName'.tr,
              fillColor: blacke,
              prefixIcon: const Icon(
                Icons.account_circle,
                color: orange,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'email'.tr,
              style: Get.textTheme.headline2,
            ),
            CustomForm(
              cursorColor: orange,
              controller: controller.email,
              obscureText: false,
              validator: (val) {
                return validate(val!, 30, 12);
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
          ],
        ));
  }
}
