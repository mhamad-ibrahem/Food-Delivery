import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Screens/Mian/Favorite/FavoriteBody.dart';
import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Widget/CustomBackButton.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/CustomIconBytton.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Controller/Favorite/FavoriteController.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});
  final FavoriteContoller contoller =
      Get.put(FavoriteContoller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              FittedBox(
                child: CustomText(
                    text: 'Favorite'.tr,
                    size: 25,
                    color: orange,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold),
              ),
              SizedBoxHieght(height: 0.03),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6,
                child: FavoriteBody(),
              ),
              const Spacer(),
              CustomButton(
                  buttonBody: 'Remove all'.tr,
                  buttonColor: nav,
                  buttonWidth: MediaQuery.of(context).size.width * 0.8,
                  onTap: () {
                    contoller.removeAll();
                  }),
              // SizedBoxHieght(height: 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
