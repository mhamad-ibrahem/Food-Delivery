import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/Controller/Payment/Payment.dart';
import 'package:delivery_app/View/Screens/Payment/feed_back/Feedback.dart';
import 'package:delivery_app/View/Screens/Payment/view_map/ViewMap.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom/payment_details.dart';
import 'custom/true_circle.dart';

class PaymentSuccess extends StatelessWidget {
  PaymentSuccess({super.key});
  final PaymentController controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Payment Success".tr,
      isBack: true,
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBoxHieght(height: 0.05),
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.69,
                    // color:Get.theme.primaryColor,
                  ),
                  const PaymentDetails(),
                  const TrueCircle(),
                ],
              ),
              SizedBoxHieght(
                height: 0.06,
              ),
              CustomButton(
                  buttonBody: 'view map'.tr,
                  buttonColor: nav,
                  buttonWidth: MediaQuery.of(context).size.width * 0.8,
                  onTap: () {
                    controller.goToViewMap();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
