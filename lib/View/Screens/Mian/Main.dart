import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/Main/MainController.dart';

class MainScreen extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => Scaffold(
        body: controller.currentScreen,
        bottomNavigationBar: BottomNavigat(context),
      ),
    );
  }

  Widget BottomNavigat(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) => BottomNavigationBar(
          currentIndex: controller.navigatorValue,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: orange,
          unselectedItemColor: Theme.of(context).primaryColor,
          onTap: (current) {
            controller.changeSelectedValue(current);
          },
          items: [
            BottomNavigationBarItem(
              icon: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Icon(Icons.home),
              ),
              label: 'Home'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Icon(Icons.search),
              ),
              label: 'Search'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Icon(Icons.favorite),
              ),
              label: 'Favorite'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Icon(Icons.person),
              ),
              label: 'Profile'.tr,
            ),
          ]),
    );
  }
}
