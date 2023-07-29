import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/Data/Model/BestProductModel.dart';
import 'package:get/get.dart';

class CartContoller extends GetxController {
  List<BestProductModel> cartList = [
    BestProductModel(
        id: 'd2',
        name: 'Pizza'.tr,
        image: 'Assets/images/Home/BestFood/Pizza.png',
        categories: 'Fast Food'.tr,
        description: '',
        price: '40',
        rate: '4.7',
        resturant: 'Dominoz Pizza'.tr,
        quantity: 1),
    BestProductModel(
        id: 'd3',
        name: 'Cheese Burger'.tr,
        image: 'Assets/images/Home/BestFood/Cheese Burger.png',
        categories: 'Fast Food'.tr,
        description: '',
        price: '50',
        rate: '4.7',
        resturant: 'Makdonald'.tr,
        quantity: 1),
  ];

  int totalPrice = 0;
  increaseQuantity(int index) {
    totalPrice +=
        (int.parse(cartList[index].price)) * (cartList[index].quantity);
    cartList[index].quantity++;
    update();
  }

  decriseQuantity(int index) {
    print(cartList.length);
    cartList[index].quantity--;
    totalPrice -=
        (int.parse(cartList[index].price)) * (cartList[index].quantity);
    if (cartList[index].quantity == 0) {
      cartList.removeAt(index);
      print(cartList.length);
    }

    update();
  }

  goToPayment() {
    Get.toNamed(AppRoute.payment);
  }
}
