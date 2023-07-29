import 'package:get/get.dart';

import '../../View/Screens/Auth/login/Login.dart';
import '../../View/Screens/Auth/sign_up/sign_up.dart';

class StartController extends GetxController {
  signUp() {
    Get.bottomSheet(SignUp(),
        enableDrag: false,
        enterBottomSheetDuration: const Duration(milliseconds: 600),
        isScrollControlled: true,
        exitBottomSheetDuration: const Duration(milliseconds: 600));
  }

  login() {
    Get.bottomSheet(LoginScreen(),
        enableDrag: false,
        enterBottomSheetDuration: const Duration(milliseconds: 600),
        isScrollControlled: true,
        exitBottomSheetDuration: const Duration(milliseconds: 600));
  }
}
