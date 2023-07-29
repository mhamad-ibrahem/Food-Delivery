import 'package:delivery_app/Controller/start/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/colors.dart';
import '../../../Widget/CustomButton.dart';

class BottomPageStart extends StatelessWidget {
  BottomPageStart({super.key});
  StartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          buttonBody: 'start3'.tr,
          buttonColor: orange,
          buttonWidth: MediaQuery.of(context).size.width * 0.8,
          onTap: () {
            controller.signUp();
          },
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          buttonBody: 'start4'.tr,
          buttonColor: nav,
          buttonWidth: MediaQuery.of(context).size.width * 0.8,
          onTap: () {
            controller.login();
          },
        ),
      ],
    );
  }
}
