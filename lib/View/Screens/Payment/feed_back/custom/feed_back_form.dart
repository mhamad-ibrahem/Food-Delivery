import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../Core/Constant/colors.dart';

class FeedBackForm extends StatelessWidget {
  const FeedBackForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.22,
      padding: const EdgeInsets.only(left: 25, top: 15, right: 25, bottom: 15),
      decoration: BoxDecoration(
          color: Get.theme.primaryColor,
          borderRadius: BorderRadius.circular(11)),
      child: TextFormField(
        style: Get.textTheme.headline5,
        cursorColor: orange,
        onChanged: (val) {},
        onSaved: (val) {},
        validator: (val) {},
        textAlign: TextAlign.start,
        maxLines: 5,
        minLines: 1,
        decoration: InputDecoration(
          fillColor: blacke,
          hintText: 'Give your feedback...'.tr,
          hintStyle: Get.textTheme.headline3,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
