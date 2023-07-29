import 'package:delivery_app/Core/Constant/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Core/Constant/colors.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: orange,
          borderRadius: BorderRadius.circular(13),
          image: const DecorationImage(
              image: AssetImage('Assets/images/Home/FoodBanner.jpg'),
              fit: BoxFit.fill)),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Get.theme.primaryColor),
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSize.width * 0.03,
              top: AppSize.hieght * 0.01,
              right: AppSize.width * 0.03,
              bottom: AppSize.hieght * 0.01,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60,
                  height: 20,
                  child: FittedBox(
                      child: Text(
                    'Hie Mister'.tr,
                    style: Get.textTheme.headline4,
                  )),
                ),
                // SizedBoxHieght(height: 0.005),
                SizedBox(
                  height: 15,
                  width: 100,
                  child: FittedBox(
                      child: Text(
                    'You have 13 discount ticket!'.tr,
                    style: Get.textTheme.headline3,
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
