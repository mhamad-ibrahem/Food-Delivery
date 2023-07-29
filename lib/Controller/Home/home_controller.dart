import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/View/Screens/Details/DetailsScreen.dart';
import 'package:get/get.dart';

import '../../Data/Data Source/Static/home/best_product.dart';
import '../../Data/Data Source/Static/home/categories_data.dart';
import '../../Data/Model/BestProductModel.dart';
import '../../Data/Model/CategoriesModel.dart';
import '../../View/Screens/Categories/CategoriesScreen.dart';

class HomeController extends GetxController {
  List<BestProductModel> bestProduct = bestProductList;
  List<CategoriesModel> categories = categoriesList;

  goToCategories() {
    Get.toNamed(AppRoute.categories);
  }

  goToDetails() {
    Get.toNamed(
      AppRoute.details,
    );
  }

  goToNotification() {
    Get.toNamed(
      AppRoute.notifiacation,
    );
  }

  goToCart() {
    Get.toNamed(
      AppRoute.cart,
    );
  }

  goToAllProduct() {
    Get.toNamed(
      AppRoute.allProduct,
    );
  }
}
