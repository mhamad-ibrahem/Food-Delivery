import 'package:delivery_app/View/Screens/Mian/Favorite/FavoriteScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/ProfileScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Search/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../View/Screens/Mian/Cart/CartScreen.dart';
import '../../View/Screens/Mian/Home/HomeScreen.dart';

class MainController extends GetxController {
  int _navigatorValue = 0;
  get navigatorValue => _navigatorValue;

  Widget _currentScreen = HomeScreen();
  get currentScreen => _currentScreen;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    update();
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeScreen();

          break;
        }
      case 1:
        {
          _currentScreen = SearchScreen();
          break;
        }
      case 2:
        {
          _currentScreen = FavoriteScreen();
          break;
        }
      case 3:
        {
          _currentScreen = ProfileScreen();
          break;
        }
    }
  }
}
