import 'package:delivery_app/Core/Services/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../Core/Theme/Theme.dart';

class LocalizationController extends GetxController {
  Locale? language;
  Services services = Get.find();
  bool switche3 = false;
  bool switch2 = false;
  bool? saveTheme;
  bool notificationSwitch = false;
  var qrCode = '';
  changeLanguage(bool val, String codeLanguage, String codeLanguage2) {
    switche3 = val; //to cange switch ui
    if (switche3 == true) {
      Locale locale = Locale(codeLanguage);
      services.sharedPreferences.setString('language', codeLanguage);
      Get.updateLocale(locale);
    } else {
      Locale locale = Locale(codeLanguage2);
      services.sharedPreferences.setString('language', codeLanguage2);
      Get.updateLocale(locale);
    }
    update();
  }

  enableNotification(bool val) {
    notificationSwitch = val;
    update();
  }

  changeTheme(bool val2) {
    switch2 = val2;
    if (switch2 == false) {
      Get.changeTheme(Themes.lightTheme);
    }

    if (switch2 == true) {
      Get.changeTheme(Themes.darkTheme);
    }
    services.sharedPreferences.setBool('dark', switch2);
    saveTheme = services.sharedPreferences.getBool('dark');
    print('============================$saveTheme');
    print('============================$switch2');
    update();
  }

  @override
  void onInit() {
    // String? sharedprefLanguage =
    //     services.sharedPreferences.getString('language');
    // if (sharedprefLanguage == 'ar') {
    //   language = const Locale('ar');
    // } else if (sharedprefLanguage == 'en') {
    //   language = const Locale('en');
    // } else {
    //   language = Locale(Get.deviceLocale!.languageCode);
    // }
    language = const Locale('en');

    services.sharedPreferences.getBool('dark') != null
        ? saveTheme = services.sharedPreferences.getBool('dark')
        : saveTheme = false;
    print('==========================================$saveTheme');
    if (saveTheme != null) {
      switch2 = saveTheme!;
    }
    super.onInit();
  }

  scanQrQode() async {
    try {
      // var status = await Permission.camera.request();
      // if (status.isGranted) {
      final code = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      qrCode = code;
      update();
      return qrCode;
      // }
    } on PlatformException {
      qrCode = 'Falied to get qr code for this device';
      // AppToasts.errorToast(qrCode);
    }
  }
}
