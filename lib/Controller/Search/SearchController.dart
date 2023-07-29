import 'package:delivery_app/Data/Model/BestProductModel.dart';
import 'package:get/get.dart';

import '../../Data/Data Source/Static/home/best_product.dart';

class SearchingController extends GetxController {
  List<BestProductModel> searshingList = []; //list to show at final
  @override
  void onInit() {
    searshingList = bestProductList;
    super.onInit();
  }

  void searshing(String value) {
    List<BestProductModel> resultList = []; //filltering list
    if (value.isEmpty) {
      resultList =
          bestProductList; //if searshing value is empty return full list
    } else {
      resultList = bestProductList
          .where(
              (item) => item.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
    searshingList = resultList;
    update();
  }
}
