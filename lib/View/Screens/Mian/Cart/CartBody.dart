import 'package:delivery_app/Controller/Cart/CartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Core/Constant/colors.dart';
import '../../../Widget/CustomText.dart';
import '../../../Widget/SizedBoxHeight.dart';
import '../../../Widget/SizedBoxWodth.dart';

class CartBody extends StatelessWidget {
  CartBody({super.key});
  final CartContoller controller = Get.put(CartContoller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartContoller>(
      builder: (controller) => ListView.builder(
        itemCount: controller.cartList.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
          ),
          decoration: BoxDecoration(
            color: Get.theme.primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.16,
                  child: Image.asset(
                    controller.cartList[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          controller.cartList[index].categories.tr,
                          style: Get.textTheme.headline3,
                        ),
                      ),
                      SizedBoxHieght(height: 0.015),
                      FittedBox(
                        child: Text(
                          controller.cartList[index].name.tr,
                          style: Get.textTheme.headline4,
                        ),
                      ),
                      SizedBoxHieght(height: 0.025),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: CustomText(
                                text: '${controller.cartList[index].price}\$',
                                size: 20,
                                color: orange,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.w600),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(24),
                                  color: whitee),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        controller.increaseQuantity(index);
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: blacke,
                                      )),
                                  FittedBox(
                                    child: CustomText(
                                        text:
                                            '${controller.cartList[index].quantity}',
                                        size: 13,
                                        color: blacke,
                                        textAlign: TextAlign.center,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        controller.decriseQuantity(index);
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                        color: blacke,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
