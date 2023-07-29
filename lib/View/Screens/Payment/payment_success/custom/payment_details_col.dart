import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Widget/SizedBoxHeight.dart';

class PaymentDetailsCol extends StatelessWidget {
  const PaymentDetailsCol(
      {super.key,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4});
  final String title1;
  final String title2;
  final String title3;
  final String title4;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: Get.textTheme.headline3,
        ),
        SizedBox(height: 20),
        Text(
          title2,
          style: Get.textTheme.headline3,
        ),
        SizedBox(height: 20),
        Text(
          title3,
          style: Get.textTheme.headline3,
        ),
        SizedBox(height: 20),
        Text(
          title4,
          style: Get.textTheme.headline3,
        ),
      ],
    );
  }
}
