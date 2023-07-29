import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/Controller/Search/SearchController.dart';
import 'package:delivery_app/View/Widget/CustomForm.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widget/custom_scaffold.dart';

class AllProductScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final SearchingController searchController = Get.put(SearchingController());

  AllProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'All Product'.tr,
      isBack: true,
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBoxHieght(height: 0.01),
              CustomForm(
                  onChange: (val) {
                    searchController.searshing(val);
                  },
                  cursorColor: orange,
                  controller: controller,
                  obscureText: false,
                  validator: (val) {
                    return null;
                  },
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  minLines: 1,
                  fillColor: blacke,
                  text: 'search....'.tr,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: orange,
                  )),
              SizedBoxHieght(height: 0.03),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: GetBuilder<SearchingController>(
                  builder: (controller) => GridView.builder(
                      itemCount: controller.searshingList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 6 / 8),
                      itemBuilder: ((context, index) => Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.45,
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                color: Get.theme.primaryColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.16,
                                  decoration: BoxDecoration(
                                      color: Get.theme.primaryColor,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          topRight: Radius.circular(12)),
                                      image: DecorationImage(
                                        image: AssetImage(controller
                                            .searshingList[index].image),
                                        fit: BoxFit.contain,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.searshingList[index].name.tr,
                                        style: Get.textTheme.headline4,
                                      ),
                                      SizedBoxHieght(height: 0.005),
                                      Text(
                                        controller
                                            .searshingList[index].resturant.tr,
                                        style: Get.textTheme.headline3,
                                      ),
                                      SizedBoxHieght(height: 0.005),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                              text:
                                                  '${controller.searshingList[index].price} \$',
                                              size: 16,
                                              color: orange,
                                              textAlign: TextAlign.center,
                                              fontWeight: FontWeight.bold),
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                controller
                                                    .searshingList[index].rate,
                                                style: Get.textTheme.headline3,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBoxHieght(height: 0.005),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
