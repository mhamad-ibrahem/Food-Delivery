import 'package:delivery_app/View/Screens/Mian/Home/custom/BestProduct.dart';
import 'package:delivery_app/View/Screens/Mian/Home/custom/Categories.dart';
import 'package:delivery_app/View/Screens/Mian/Home/custom/best_selling_row.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Controller/Home/home_controller.dart';
import '../../../../Core/Constant/text_style.dart';
import 'custom/home_app_bar.dart';
import 'custom/home_banner.dart';

class HomeScreen extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                const SizedBox(height: 20),
                const HomeBanner(),
                SizedBoxHieght(height: 0.03),
                FittedBox(
                    child: Text(
                  'Categories'.tr,
                  style: appBarStyle(),
                )),
                SizedBoxHieght(height: 0.02),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width,
                    child: Categories(
                      onTap: () {
                        controller.goToCategories();
                      },
                    )),
                const SizedBox(height: 20),
                BestSellingRow(),
                SizedBoxHieght(height: 0.02),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.44,
                  width: MediaQuery.of(context).size.width,
                  child: BestProduct(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
