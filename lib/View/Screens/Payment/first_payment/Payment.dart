import 'package:delivery_app/Controller/Payment/Payment.dart';
import 'package:delivery_app/View/Screens/Payment/first_payment/custom/payment_body.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/colors.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  PaymentController controller = Get.put(PaymentController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Payment'.tr,
      isBack: true,
      widget: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PaymentBody(),
              CustomButton(
                  buttonBody: 'Confirm'.tr,
                  buttonColor: nav,
                  buttonWidth: MediaQuery.of(context).size.width * 0.8,
                  onTap: () {
                    controller.goToPaymentSuccess();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
