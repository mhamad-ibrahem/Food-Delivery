import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Screens/Mian/Favorite/FavoriteScreen.dart';
import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Widget/CustomBackButton.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/CustomIconBytton.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/SizedBoxWodth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomBackButton(
                            funcation: () {
                              Get.offAll(() => MainScreen(),
                                  transition: Transition.fade,
                                  duration: const Duration(milliseconds: 800));
                            },
                            color: Colors.black.withOpacity(0.7),
                            iconcolor: whitee,
                          ),
                          CustomIconButton(
                            fun: () {
                              Get.snackbar(
                                  titleText: FittedBox(
                                    child: Text(
                                      'Der Mohamad'.tr,
                                      style: Get.textTheme.headline4,
                                    ),
                                  ),
                                  duration: const Duration(seconds: 3),
                                  backgroundColor: Get.theme.primaryColor,
                                  borderRadius: 13,
                                  borderWidth: 2,
                                  borderColor: Get.theme.primaryColor,
                                  margin: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.height *
                                          0.02,
                                      left: MediaQuery.of(context).size.width *
                                          0.05,
                                      right: MediaQuery.of(context).size.width *
                                          0.05), onTap: (val) {
                                Get.off(() => FavoriteScreen(),
                                    transition: Transition.fade,
                                    duration:
                                        const Duration(milliseconds: 700));
                              },
                                  messageText: FittedBox(
                                    child: Text(
                                      'This meal add to favorite '.tr,
                                      style: Get.textTheme.headline3,
                                    ),
                                  ),
                                  '',
                                  '');
                            },
                            iconet: const Icon(
                              Icons.favorite_border_rounded,
                              color: whitee,
                              size: 30,
                            ),
                            color: Colors.black.withOpacity(0.7),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: const BoxDecoration(
                    // color: orange,
                    image: DecorationImage(
                        image: AssetImage(
                            'Assets/images/Home/BestFood/Cheese Burger.png'),
                        fit: BoxFit.contain)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FittedBox(
                      child: Text(
                        'Cheese Burger'.tr,
                        style: Get.textTheme.headline2,
                      ),
                    ),
                    SizedBoxHieght(height: 0.02),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_purple500_sharp,
                          color: Colors.amber,
                        ),
                        SizedBoxWidth(width: 0.005),
                        FittedBox(
                          child: Text(
                            '4.5',
                            style: Get.textTheme.headline3,
                          ),
                        ),
                        SizedBoxWidth(width: 0.005),
                        FittedBox(
                          child: Text(
                            '( 432 Reviews )'.tr,
                            style: Get.textTheme.headline3,
                          ),
                        ),
                      ],
                    ),
                    SizedBoxHieght(height: 0.03),
                    FittedBox(
                      child: CustomText(
                          text: 'Description'.tr,
                          size: 16,
                          color: orange,
                          textAlign: TextAlign.start,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(top: 10),
                      // height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Get.theme.primaryColor),
                      child: Text(
                        'Spaicy Burger with chesse and tomato with some onion and pickled cucumber and beef meat from makdonald '
                            .tr,
                        style: Get.textTheme.headline3,
                      ),
                    ),
                    SizedBoxHieght(height: 0.03),
                    FittedBox(
                        child: Text(
                      'See more from\nmakdonald'.tr,
                      style: Get.textTheme.headline4,
                    )),
                    SizedBoxHieght(height: 0.02),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.14,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: ((context, index) => Container(
                                margin: const EdgeInsets.only(
                                    right: 10, top: 15, bottom: 15),
                                width: MediaQuery.of(context).size.width * 0.23,
                                height:
                                    MediaQuery.of(context).size.height * 0.08,
                                decoration: BoxDecoration(
                                  color: Get.theme.primaryColor,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                              ))),
                    ),
                    SizedBoxHieght(height: 0.02),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              FittedBox(
                                  child: Text(
                                'Price'.tr,
                                style: Get.textTheme.headline4,
                              )),
                              SizedBoxHieght(height: 0.02),
                              const CustomText(
                                  text: '40 \$',
                                  size: 18,
                                  color: orange,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.bold),
                              SizedBoxHieght(height: 0.04),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: CustomButton(
                              buttonBody: ' Add to cart'.tr,
                              onTap: () {},
                              buttonWidth:
                                  MediaQuery.of(context).size.width * 0.4,
                              buttonColor: nav),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
