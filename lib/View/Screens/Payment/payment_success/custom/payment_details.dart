import 'package:delivery_app/View/Screens/Payment/payment_success/custom/payment_details_col.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Payment/Payment.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../../Core/Constant/size.dart';
import '../../../../Widget/CustomText.dart';
import '../../../../Widget/SizedBoxHeight.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
      builder: (controller) => Container(
          padding: const EdgeInsets.only(bottom: 30),
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.08,
          ),
          decoration: BoxDecoration(
              color: Get.theme.primaryColor,
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBoxHieght(height: 0.13),
              CustomText(
                  text: 'Great!'.tr,
                  size: 15,
                  color: orange,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600),
              const SizedBox(height: 10),
              Text(
                'Payment Success'.tr,
                style: Get.textTheme.headline4,
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSize.width * 0.07),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PaymentDetailsCol(
                      title1: 'from bank'.tr,
                      title2: 'Pay'.tr,
                      title3: 'Administaion'.tr,
                      title4: 'Pay Date'.tr,
                    ),
                    PaymentDetailsCol(
                      title1: 'Visa'.tr,
                      title2: '${controller.cartPrice} \$'.tr,
                      title3: '${controller.deliveryPrice} \$'.tr,
                      title4: 'Feb 10,2022'.tr,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Payment Success'.tr,
                style: Get.textTheme.headline4,
              ),
              SizedBoxHieght(height: 0.02),
              CustomText(
                  text: '${controller.totalPrice} \$',
                  size: 20,
                  color: orange,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600),
            ],
          )),
    );
  }
}
