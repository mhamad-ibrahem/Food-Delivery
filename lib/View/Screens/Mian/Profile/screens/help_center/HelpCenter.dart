import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../Core/Constant/colors.dart';
import '../../../../../Widget/CustomBackButton.dart';
import '../../../../../Widget/CustomText.dart';
import '../../../Main.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Help Center'.tr,
      widget: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'FAQ'.tr,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBoxHieght(height: 0.01),
              ListTile(
                title: Text(
                  'How I Can Bay A Product'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: orange,
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                title: Text(
                  'How Long Is My Diliviery Time'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: orange,
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                title: Text(
                  'How I Can Pay For Product '.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: orange,
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                title: Text(
                  'How I Can Restore My Account'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: orange,
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              ListTile(
                title: Text(
                  'How Made This Apllication'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: orange,
                  ),
                  onPressed: () {},
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Divider(
                  thickness: 1,
                ),
              ),
              SizedBoxHieght(
                height: 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Contact us'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              SizedBoxHieght(height: 0.03),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_outlined,
                    color: orange,
                  ),
                ),
                title: Text(
                  'Chat with us'.tr,
                  style: Get.textTheme.headline4,
                ),
                subtitle: Text(
                  'You can chat with us here'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.email,
                    color: orange,
                  ),
                ),
                title: Text(
                  'Send email'.tr,
                  style: Theme.of(context).textTheme.headline4,
                ),
                subtitle: Text(
                  'Send your proplem here'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    color: orange,
                  ),
                ),
                title: Text(
                  'Customer service'.tr,
                  style: Theme.of(context).textTheme.headline4,
                ),
                subtitle: Text(
                  'Call us if you need more support'.tr,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
