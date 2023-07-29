import 'package:delivery_app/Core/Constant/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Constant/colors.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold(
      {super.key, required this.title, required this.widget, this.isBack});
  final String title;
  final Widget widget;
  final bool? isBack;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            title,
            style: appBarStyle(),
          ),
          leading: isBack != null
              ? IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: orange,
                  ))
              : null,
        ),
        body: widget,
      ),
    );
  }
}
