import 'package:delivery_app/Core/classes/HandilingData.dart';
import 'package:delivery_app/View/Screens/Auth/forget_password/change_password/ChangePassword.dart';
import 'package:delivery_app/View/Widget/CustomVertificationForm.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Auth/forget_password/vertifay_controller.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../../Core/Constant/size.dart';
import '../../../../Widget/CustomButton.dart';
import '../../../../Widget/SizedBoxHeight.dart';

class VertificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(VertifayController());
    return CustomScaffold(
        title: 'Vertification'.tr,
        widget: GetBuilder<VertifayController>(
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
                                  'Assets/images/Auth/vertification.png'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          'entervertificationcode'.tr,
                          style: Get.textTheme.headline2,
                        ),
                        const SizedBox(height: 15),
                        FittedBox(
                            child: Text(
                          'we have send'.tr,
                          style: Get.textTheme.headline3,
                        )),
                        const SizedBox(height: 30),
                        Form(
                          key: controller.formKey,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomVertivicationForm(
                                onSaved: (val) {},
                              ),
                              CustomVertivicationForm(
                                onSaved: (val) {},
                              ),
                              CustomVertivicationForm(
                                onSaved: (val) {},
                              ),
                              CustomVertivicationForm(
                                onSaved: (val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBoxHieght(height: 0.13),
                    Center(
                      child: CustomButton(
                          buttonColor: orange,
                          buttonWidth: MediaQuery.of(context).size.width * 0.8,
                          buttonBody: 'Next'.tr,
                          onTap: () {
                            controller.goToChangePassword();
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
