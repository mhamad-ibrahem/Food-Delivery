import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/colors.dart';
import '../../Widget/CustomText.dart';
import '../../Widget/SizedBoxHeight.dart';
import '../../Widget/SizedBoxWodth.dart';

class CategoriesBody extends StatelessWidget {
  const CategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 2,
        itemBuilder: ((context, index) => GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, top: 10),
                          width: MediaQuery.of(context).size.width * 0.25,
                          height: MediaQuery.of(context).size.height * 0.12,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'Assets/images/Home/Categories/fastFood.png')),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                              child: Text(
                            'Pizza'.tr,
                            style: Get.textTheme.headline4,
                          )),
                          SizedBoxHieght(height: 0.01),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              SizedBoxWidth(width: 0.005),
                              Text(
                                '4.3',
                                style: Get.textTheme.headline3,
                              ),
                            ],
                          ),
                          SizedBoxHieght(height: 0.02),
                          Row(
                            children: [
                              FittedBox(
                                  child: Text(
                                'Dominoz Pizza'.tr,
                                style: Get.textTheme.headline3,
                              )),
                              SizedBoxWidth(width: 0.1),
                              const CustomText(
                                  text: '45 \$',
                                  size: 16,
                                  color: orange,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.bold),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
