import 'package:delivery_app/Controller/Payment/feed_back_controller.dart';
import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Widget/custom_scaffold.dart';
import 'custom/bottom_page.dart';
import 'custom/feed_back_form.dart';
import 'custom/top_page.dart';

class FeedbackScreen extends StatelessWidget {
  FeedbackScreen({super.key});
  FeedBackController controller = Get.put(FeedBackController());
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Order Completed'.tr,
      widget: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopPageFeedBack(),
              const FeedBackForm(),
              SizedBoxHieght(height: 0.1),
              CustomButton(
                  buttonColor: nav,
                  buttonBody: 'Send feedback'.tr,
                  buttonWidth: MediaQuery.of(context).size.width * 0.8,
                  onTap: () {
                    controller.sendFeedBack();
                  }),
              const SizedBox(
                height: 20,
              ),
              BottomPageFeedBack(),
            ],
          ),
        ),
      ),
    );
  }
}
