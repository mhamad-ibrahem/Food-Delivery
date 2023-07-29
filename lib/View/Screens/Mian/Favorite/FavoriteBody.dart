import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Widget/CustomIconBytton.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/SizedBoxWodth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Controller/Favorite/FavoriteController.dart';

class FavoriteBody extends StatelessWidget {
  UniqueKey dismissibleKey = UniqueKey();
  final FavoriteContoller contoller =
      Get.put(FavoriteContoller(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoriteContoller>(
      builder: (controller) => ListView.builder(
          itemCount: controller.favoriteList.length,
          itemBuilder: (context, index) => Dismissible(
                key: dismissibleKey,
                onDismissed: (derication) =>
                    contoller.deleteFromFavorite(index),
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  padding: const EdgeInsets.only(top: 15, left: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.27,
                              height: MediaQuery.of(context).size.height * 0.16,
                              child: Image.asset(
                                controller.favoriteList[index].image,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 10, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                  child: Text(
                                controller.favoriteList[index].categories.tr,
                                style: Get.textTheme.headline3,
                              )),
                              SizedBoxHieght(height: 0.015),
                              FittedBox(
                                  child: Text(
                                controller.favoriteList[index].name.tr,
                                style: Get.textTheme.headline4,
                              )),
                              SizedBoxHieght(height: 0.023),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      text:
                                          '${controller.favoriteList[index].price} \$',
                                      size: 20,
                                      color: orange,
                                      textAlign: TextAlign.start,
                                      fontWeight: FontWeight.w600),
                                  SizedBoxWidth(width: 0.1),
                                  IconButton(
                                    onPressed: () {
                                      controller.deleteFromFavorite(index);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: orange,
                                      size: 30,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}
