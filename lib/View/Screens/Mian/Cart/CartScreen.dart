import 'package:delivery_app/View/Screens/Mian/Cart/CartBody.dart';
import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Screens/Payment/first_payment/Payment.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/colors.dart';
import '../../../../Controller/Cart/CartController.dart';
import '../../../Widget/CustomBackButton.dart';
import '../../../Widget/CustomText.dart';
import '../../../Widget/SizedBoxHeight.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  CartContoller controller = Get.put(CartContoller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Cart'.tr,
      isBack: true,
      widget: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              controller.cartList.isEmpty
                  ? Column(
                      children: [
                        SizedBoxHieght(height: 0.1),
                        Image.asset('Assets/images/Empties/Empty Cart.png'),
                        SizedBoxHieght(height: 0.05),
                        Center(
                            child: Text(
                          'Empty Cart'.tr,
                          style: Get.textTheme.headline1,
                        )),
                        SizedBoxHieght(height: 0.1),
                      ],
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: CartBody(),
                    ),
              SizedBoxHieght(height: 0.06),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          FittedBox(
                              child: Text(
                            'Total Price'.tr,
                            style: Get.textTheme.headline4,
                          )),
                          SizedBoxHieght(height: 0.02),
                          GetBuilder<CartContoller>(
                            builder: (controller) => FittedBox(
                              child: CustomText(
                                  text: '${controller.totalPrice} \$',
                                  size: 18,
                                  color: orange,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBoxHieght(height: 0.04),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                        buttonBody: 'Check Out'.tr,
                        onTap: () {
                          controller.goToPayment();
                        },
                        buttonWidth: MediaQuery.of(context).size.width * 0.4,
                        buttonColor: nav),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
