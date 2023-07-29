import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Screens/Categories/CategoriesBody.dart';
import 'package:delivery_app/View/Widget/CustomForm.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:delivery_app/View/Widget/SizedBoxWodth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Get.theme.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                          'Assets/images/Home/Categories/fastFood.png'),
                      fit: BoxFit.contain)),
              child: Column(
                children: [
                  CustomForm(
                      cursorColor: orange,
                      controller: controller,
                      obscureText: false,
                      validator: (val) {},
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      minLines: 1,
                      fillColor: blacke,
                      text: 'search....'.tr,
                      prefixIcon: Icon(
                        Icons.search,
                        color: orange,
                      )),
                ],
              ),
            ),
            SizedBoxHieght(height: 0.02),
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.47,
                child: CategoriesBody())
          ],
        ),
      ),
    ));
  }
}
