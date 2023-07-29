import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../Controller/LocalizationController/LocalizationController.dart';

class SwitchTile extends StatelessWidget {
  SwitchTile(
      {super.key,
      this.onChange,
      required this.title,
      required this.isSwitched});
  LocalizationController controller = Get.find();
  final void Function(bool)? onChange;
  final String title;
  final bool isSwitched;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: isSwitched,
      onChanged: onChange,
      activeColor: orange,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
