import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/Controller/LocalizationController/LocalizationController.dart';
import 'package:delivery_app/Core/Constant/route.dart';
import 'package:delivery_app/Core/Localization/Localization.dart';
import 'package:delivery_app/Core/Theme/Theme.dart';
import 'package:delivery_app/rout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Core/Binding/Bindings.dart';
import 'Core/Services/Services.dart';

late SharedPreferences shared_preferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  shared_preferences = await SharedPreferences.getInstance();
  await initialServices();
  await Hive.initFlutter();
  userBox = await Hive.openBox('UserBox');
  themeBox = await Hive.openBox('ThemeBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final LocalizationController localizationController =
      Get.put(LocalizationController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("ar"),
      translations: Localization(),
      debugShowCheckedModeBanner: false,
      theme: localizationController.saveTheme == false
          ? Themes.lightTheme
          : Themes.darkTheme,
      initialRoute: AppRoute.start,
      // home: FeedbackScreen(),
      getPages: routes,
      initialBinding: MyBindings(),
    );
  }
}
