import 'package:flutter/material.dart';

import '../Constant/colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whitee,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      headline1:
          TextStyle(fontSize: 28, color: nav, fontWeight: FontWeight.w600),
      headline2:
          TextStyle(fontSize: 20, color: nav, fontWeight: FontWeight.w700),
      headline3:
          TextStyle(fontSize: 13, color: lblack, fontWeight: FontWeight.w500),
      headline4:
          TextStyle(fontSize: 18, color: blacke, fontWeight: FontWeight.w600),
      headline5:
          TextStyle(fontSize: 15, color: blacke, fontWeight: FontWeight.w500),
      headline6:
          TextStyle(fontSize: 34, color: nav, fontWeight: FontWeight.w600),
    ),
    primaryIconTheme: const IconThemeData(color: blacke),
    primaryColor: Colors.grey.shade100,
  );
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: blacke,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      headline1:
          TextStyle(fontSize: 28, color: whitee, fontWeight: FontWeight.w600),
      headline2:
          TextStyle(fontSize: 20, color: whitee, fontWeight: FontWeight.w700),
      headline3: TextStyle(
          fontSize: 13, color: Colors.white54, fontWeight: FontWeight.w500),
      headline4:
          TextStyle(fontSize: 17, color: whitee, fontWeight: FontWeight.w600),
      headline5:
          TextStyle(fontSize: 15, color: whitee, fontWeight: FontWeight.w500),
      headline6:
          TextStyle(fontSize: 34, color: nav, fontWeight: FontWeight.w600),
    ),
    primaryIconTheme: const IconThemeData(color: whitee),
    backgroundColor: blacke,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: blacke,
    ),
    primaryColor: const Color.fromARGB(255, 34, 34, 34),
  );
}
