import 'package:delivery_app/Data/Model/BestProductModel.dart';
import 'package:get/get.dart';

class FavoriteContoller extends GetxController {
  List<BestProductModel> favoriteList = [
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

  removeAll() {
    favoriteList.clear();
    update();
    //  print(favoriteList[index]);
  }

  deleteFromFavorite(index) {
    favoriteList.removeAt(index);
    update();
    print(favoriteList);
  }
}
