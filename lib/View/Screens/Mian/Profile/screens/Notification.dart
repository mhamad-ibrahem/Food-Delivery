import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/SizedBoxWodth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../Widget/CustomBackButton.dart';
import '../../../../Widget/CustomText.dart';
import '../../Main.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});
  final UniqueKey key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FittedBox(
                  child: CustomText(
                      text: 'Notification'.tr,
                      size: 25,
                      color: orange,
                      textAlign: TextAlign.start,
                      fontWeight: FontWeight.bold),
                ),
                SizedBoxHieght(height: 0.04),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) => Dismissible(
                            key: key,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height:
                                  MediaQuery.of(context).size.height * 0.085,
                              padding: const EdgeInsets.only(left: 20),
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.notification_important,
                                    color: orange,
                                  ),
                                  SizedBoxWidth(width: 0.01),
                                  FittedBox(
                                      child: Text(
                                    'new product add to cart'.tr,
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ))
                                ],
                              ),
                            ),
                          )),
                ),
                SizedBoxHieght(height: 0.1),
                CustomButton(
                    buttonBody: 'Remove all'.tr,
                    buttonColor: nav,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
