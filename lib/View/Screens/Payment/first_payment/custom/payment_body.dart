import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Controller/Payment/Payment.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomText.dart';

class PaymentBody extends StatelessWidget {
  PaymentBody({
    super.key,
  });
  PaymentController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaymentController>(
      builder: (controller) => SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          child: ListView.separated(
            itemCount: controller.paymentList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                controller.changeColor(controller.paymentList[index]);
              },
              child: Container(
                  decoration: BoxDecoration(
                      border: controller.activeColor ==
                              controller.paymentList[index]
                          ? Border.all(color: orange, width: 3)
                          : null,
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Image.asset(
                          controller.paymentList[index],
                          fit: BoxFit.contain,
                        ),
                      ),
                      const CustomText(
                        text: '****82348********',
                        color: lblack,
                        size: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 30,
            ),
          )),
    );
  }
}
