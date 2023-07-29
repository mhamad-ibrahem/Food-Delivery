import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/Core/classes/HandilingData.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/CustomForm.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Auth/forget_password/email_sending_controller.dart';
import '../../../../../Core/Constant/size.dart';
import '../../../../../Core/Services/ServicesFuncation.dart';
import '../../../../Widget/custom_scaffold.dart';

class EmailSendingSceen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(EmialSendingController());
    return CustomScaffold(
      title: 'forgetpassword'.tr,
      widget: GetBuilder<EmialSendingController>(
        builder: (controller) => HandilingDataRequest(
          statusRequest: controller.statusRequest,
          widget: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('Assets/images/Auth/emailSend.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: AppSize.width * 0.7,
                    child: Text(
                      'enterRegisterEmail'.tr,
                      style: Get.textTheme.headline2,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'we will send'.tr,
                    style: Get.textTheme.headline3,
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: controller.formKey,
                    child: CustomForm(
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
                        )),
                  ),
                  SizedBoxHieght(height: 0.13),
                  Center(
                    child: CustomButton(
                        buttonBody: 'Next'.tr,
                        buttonColor: orange,
                        buttonWidth: MediaQuery.of(context).size.width * 0.8,
                        onTap: () {
                          controller.goToOtp();
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
