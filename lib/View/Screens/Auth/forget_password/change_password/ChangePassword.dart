import 'package:delivery_app/Controller/Auth/forget_password/change_password_controller.dart';
import 'package:delivery_app/Core/classes/HandilingData.dart';
import 'package:delivery_app/View/Screens/Auth/forget_password/change_password/custom/change_password_form.dart';
import 'package:delivery_app/View/Screens/Start/strat_screen.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomButton.dart';
import '../../../../Widget/SizedBoxHeight.dart';

class ChangePasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(ChangePasswordController());
    return CustomScaffold(
      title: 'Change password'.tr,
      widget: GetBuilder<ChangePasswordController>(
        builder: (controller) => HandilingDataRequest(
          statusRequest: controller.statusRequest,
          widget: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'Assets/images/Auth/changePassword.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Please enter new password'.tr,
                    style: Get.textTheme.headline2,
                  ),
                  const SizedBox(height: 30),
                  ChangePasswordForm(),
                  SizedBoxHieght(height: 0.05),
                  Center(
                    child: CustomButton(
                        buttonBody: 'Finish'.tr,
                        buttonColor: orange,
                        buttonWidth: MediaQuery.of(context).size.width * 0.8,
                        onTap: () {
                          controller.changePassword();
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
