import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Screens/Categories/CategoriesScreen.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Controller/Home/home_controller.dart';
import '../../../../../Core/Constant/size.dart';

class Categories extends StatelessWidget {
  Categories({super.key, required this.onTap});
  HomeController controller = Get.find();
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: controller.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
              onTap: onTap,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.23,
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Get.theme.primaryColor,
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                            image:
                                AssetImage(controller.categories[index].image),
                            fit: BoxFit.contain)),
                  ),
                  SizedBoxHieght(height: 0.01),
                  SizedBox(
                    height: 15,
                    width: AppSize.width * 0.15,
                    child: FittedBox(
                        child: Text(
                      controller.categories[index].categories,
                      style: Get.textTheme.headline3,
                    )),
                  )
                ],
              ),
            ));
  }
}
