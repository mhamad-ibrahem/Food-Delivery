import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../Core/Constant/size.dart';

class TopPageStart extends StatelessWidget {
  const TopPageStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSize.hieght * 0.5,
          width: AppSize.width,
          child: Lottie.asset('Assets/images/Start/lightDeliviery.json',
              fit: BoxFit.fill),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.045,
            width: MediaQuery.of(context).size.width,
            child: FittedBox(
                child: Text(
              'start1'.tr,
              style: Get.textTheme.headline1,
            ))),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.045,
          width: MediaQuery.of(context).size.width,
          child: FittedBox(
              child: Text(
            'start2'.tr,
            style: Get.textTheme.headline1,
          )),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
