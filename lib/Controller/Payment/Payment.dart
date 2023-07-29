import 'package:delivery_app/Controller/Cart/CartController.dart';
import 'package:delivery_app/Core/Constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View/Screens/Payment/payment_success/PaymentScuccess.dart';

class PaymentController extends GetxController {
  CartContoller cartcontoller = Get.find();

  int deliveryPrice = 5;
  late int totalPrice;
  late int cartPrice;
  String? activeColor;
  List<String> paymentList = [
    'Assets/images/Payment/Visa.png',
    'Assets/images/Payment/Ovo.png',
    'Assets/images/Payment/gopay.png'
  ];
  getTotalPrice() {
    totalPrice = cartcontoller.totalPrice + deliveryPrice;
  }

  getCartPrice() {
    cartPrice = cartcontoller.totalPrice;
  }

  changeColor(String selctedColor) {
    activeColor = selctedColor;
    print(activeColor);
    update();
  }

  goToPaymentSuccess() {
    print(activeColor);
    if (activeColor != null) {
      print('======================');
      Get.to(() => PaymentSuccess(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 700));
    }
  }

  goToViewMap() {
    Get.toNamed(AppRoute.viewMap);
  }

  @override
  void onInit() {
    getTotalPrice();
    getCartPrice();
    super.onInit();
  }
}
