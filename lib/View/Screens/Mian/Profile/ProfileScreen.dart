import 'package:delivery_app/View/Screens/Mian/Cart/CartScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/custom/ProfileTile.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/screens/Account.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/screens/help_center/HelpCenter.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/screens/Notification.dart';
import 'package:delivery_app/View/Screens/Mian/Profile/screens/settings/Settings.dart';
import 'package:delivery_app/View/Screens/Start/strat_screen.dart';
import 'package:delivery_app/View/Widget/CustomIconBytton.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Constant/colors.dart';
import '../../../Widget/CustomBackButton.dart';
import '../../../Widget/CustomText.dart';
import '../../../../main.dart';
import '../Main.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBoxHieght(height: 0.03),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: BoxShape.circle),
                  child: Image.asset(
                    'Assets/images/profile/profile2.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBoxHieght(height: 0.03),
              FittedBox(
                  child: Text(
                'Mohamad Ibrahem'.tr,
                style: Theme.of(context).textTheme.headline4,
              )),
              SizedBoxHieght(height: 0.02),
              FittedBox(
                  child: Text(
                'Mohamad.ibrahem@gmail.com',
                style: Theme.of(context).textTheme.headline3,
              )),
              SizedBoxHieght(height: 0.02),
              SizedBoxHieght(height: 0.04),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView(
                  children: [
                    ProfileTile(
                      fun: () {
                        Get.to(() => AccountScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 700));
                      },
                      leading: const Icon(
                        Icons.edit,
                        color: Colors.green,
                      ),
                      title: 'Edit profil'.tr,
                    ),
                    ProfileTile(
                      fun: () {
                        Get.to(() => SettingsScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 700));
                      },
                      leading: const Icon(
                        Icons.settings,
                        color: orange,
                      ),
                      title: 'Settings'.tr,
                    ),
                    ProfileTile(
                      fun: () {
                        Get.to(() => const SupportScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 700));
                      },
                      leading: const Icon(
                        Icons.help,
                        color: Colors.blue,
                      ),
                      title: 'Help & Support'.tr,
                    ),
                    ProfileTile(
                      fun: () {
                        shared_preferences.clear();
                        Get.offAll(() => StartScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 700));
                      },
                      leading: const Icon(
                        Icons.exit_to_app,
                        color: Colors.amber,
                      ),
                      title: 'Log out'.tr,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
