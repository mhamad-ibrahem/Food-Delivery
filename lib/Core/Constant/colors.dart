import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

const Color whitee = Colors.white; //background color
const Color blacke = Colors.black; //text color
const Color nav = Color.fromARGB(255, 3, 9, 46); //button color and som text
const Color lblack = Colors.black54; //text color
const Color orange = Color.fromARGB(255, 252, 81, 8); //primary color
const Color co = Color(0xffffd8c4);
const Color red = Colors.red;
const Color green = Colors.green;

//box
late Box<dynamic> userBox;
late Box<dynamic> themeBox;
const String linkServer = 'http://10.0.2.2/TestApi';

//Auth
const String linkSignUp = '$linkServer/Auth/signup.php'; //link of signUp
const String linkLogin = '$linkServer/Auth/login.php'; // link of login
