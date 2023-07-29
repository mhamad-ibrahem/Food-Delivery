import 'package:delivery_app/Controller/Home/home_controller.dart';
import 'package:delivery_app/Data/Model/BestProductModel.dart';
import 'package:delivery_app/View/Screens/Details/DetailsScreen.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Core/Constant/colors.dart';

class BestProduct extends StatelessWidget {
  BestProduct({
    super.key,
  });
  HomeController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: controller.bestProduct.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                controller.goToDetails();
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                height: MediaQuery.of(context).size.height * 0.39,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.1),
                          Colors.black.withOpacity(0.9)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 1]),
                    image: DecorationImage(
                        image: AssetImage(controller.bestProduct[index].image),
                        fit: BoxFit.contain)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBoxHieght(height: 0.013),
                      Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.white10.withOpacity(0.1)),
                        child: FittedBox(
                          child: CustomText(
                              text: controller.bestProduct[index].name,
                              size: 17,
                              color: whitee,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBoxHieght(height: 0.18),
                      Container(
                        padding: const EdgeInsets.all(13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.white10.withOpacity(0.1)),
                        child: FittedBox(
                          child: CustomText(
                              text: controller.bestProduct[index].resturant,
                              size: 14,
                              color: whitee,
                              textAlign: TextAlign.start,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBoxHieght(height: 0.018),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.white10.withOpacity(0.1)),
                            child: FittedBox(
                              child: CustomText(
                                  text:
                                      controller.bestProduct[index].categories,
                                  size: 17,
                                  color: whitee,
                                  textAlign: TextAlign.start,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          FittedBox(
                            child: CustomText(
                                text:
                                    '${controller.bestProduct[index].price} \$',
                                size: 20,
                                color: orange,
                                textAlign: TextAlign.start,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
