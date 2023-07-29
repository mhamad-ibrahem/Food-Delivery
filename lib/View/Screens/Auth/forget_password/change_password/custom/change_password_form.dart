import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Controller/Auth/forget_password/change_password_controller.dart';
import '../../../../../../Core/Constant/colors.dart';
import '../../../../../../Core/Services/ServicesFuncation.dart';
import '../../../../../Widget/CustomForm.dart';

class ChangePasswordForm extends StatelessWidget {
  ChangePasswordForm({super.key});
  ChangePasswordController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          CustomForm(
            cursorColor: orange,
            controller: controller.password,
            obscureText: controller.obscure1,
            validator: (val) {
              return validate(val!, 18, 6);
            },
            textAlign: TextAlign.start,
            maxLines: 1,
            minLines: 1,
            fillColor: blacke,
            text: 'Enter new password'.tr,
            prefixIcon: const Icon(
              Icons.lock,
              color: orange,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                controller.changeObscure1();
              },
              icon: controller.obscure1 == true
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
          CustomForm(
            cursorColor: orange,
            controller: controller.confirmPassword,
            obscureText: controller.obscure2,
            validator: (val) {
              return validate(val!, 18, 6);
            },
            textAlign: TextAlign.start,
            maxLines: 1,
            minLines: 1,
            fillColor: blacke,
            text: 'Re-enter your password'.tr,
            prefixIcon: const Icon(
              Icons.lock,
              color: orange,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                controller.changeObscure2();
              },
              icon: controller.obscure2 == true
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
      ),
    );
  }
}
