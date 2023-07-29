import 'package:delivery_app/View/Widget/SizedBoxWodth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/colors.dart';
import '../../../Widget/CustomButton.dart';
import '../../../Widget/CustomIconBytton.dart';
import '../../../Widget/CustomText.dart';
import '../../../Widget/SizedBoxHeight.dart';
import '../feed_back/Feedback.dart';

class DileveryDetails extends StatelessWidget {
  const DileveryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.43,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Get.theme.primaryColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        children: [
          SizedBoxHieght(height: 0.01),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    borderRadius: BorderRadius.circular(13)),
                // height: MediaQuery.of(context).size.height * 0.1,
                child: Image.asset(
                  'Assets/images/profile/profile2.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBoxWidth(width: 0.02),
              Column(
                children: [
                  FittedBox(
                      child: Text(
                    'Ronald Remond'.tr,
                    style: Get.textTheme.headline4,
                  )),
                  SizedBoxHieght(height: 0.02),
                  Row(
                    children: [
                      const Icon(
                        Icons.timer,
                        color: orange,
                      ),
                      SizedBoxWidth(width: 0.01),
                      FittedBox(
                          child: Text(
                        '25 minutes on the way'.tr,
                        style: Get.textTheme.headline3,
                      )),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Get.theme.primaryColor,
                    height: MediaQuery.of(context).size.height * 0.075,
                    margin: const EdgeInsets.only(
                        top: 20, right: 20, bottom: 20, left: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: MaterialButton(
                        onPressed: () {},
                        color: orange,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.email,
                                    color: whitee,
                                  ),
                                  SizedBoxWidth(width: 0.01),
                                  FittedBox(
                                    child: CustomText(
                                        text: 'Message'.tr,
                                        size: 17,
                                        color: whitee,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: CustomIconButton(
                      fun: () {},
                      iconet: const Icon(
                        Icons.phone,
                        color: whitee,
                      ),
                      color: nav))
            ],
          ),
          CustomButton(
              buttonBody: 'Next'.tr,
              buttonColor: nav,
              buttonWidth: MediaQuery.of(context).size.width * 0.8,
              onTap: () {
                Get.off(() => FeedbackScreen(),
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 700));
              })
        ],
      ),
    );
  }
}
