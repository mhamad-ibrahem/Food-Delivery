import 'package:delivery_app/View/Screens/Start/custom/bottom_page.dart';
import 'package:delivery_app/View/Screens/Start/custom/top_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Controller/start/start_controller.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});
  StartController controller = Get.put(StartController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Expanded(flex: 3, child: TopPageStart()),
              Expanded(flex: 1, child: BottomPageStart())
            ],
          ),
        ),
      ),
    );
  }
}
