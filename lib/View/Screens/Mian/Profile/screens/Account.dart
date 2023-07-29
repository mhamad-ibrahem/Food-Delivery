import 'package:delivery_app/View/Screens/Mian/Main.dart';
import 'package:delivery_app/View/Widget/CustomText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Constant/colors.dart';
import '../../../../../Controller/Auth/AuthController.dart';
import '../../../../../Core/Services/ServicesFuncation.dart';
import '../../../../Widget/CustomButton.dart';
import '../../../../Widget/CustomForm.dart';
import '../../../../Widget/SizedBoxHeight.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});
  final AuthController controller = AuthController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBoxHieght(height: 0.03),
        Center(
          child: Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.23,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  // borderRadius: BorderRadius.circular(13),
                  shape: BoxShape.circle),
              child: Image.asset(
                'Assets/images/profile/profile2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 120, top: 120),
              width: MediaQuery.of(context).size.width * 0.15,
              height: MediaQuery.of(context).size.height * 0.09,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: co),
              child: const Icon(
                Icons.add_a_photo_outlined,
                color: orange,
              ),
            )
          ]),
        ),
        SizedBoxHieght(height: 0.03),
        GetBuilder<AuthController>(
          builder: (controller) => Form(
            key: controller.formstate2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBoxHieght(
                    height: 0.04,
                  ),
                  FittedBox(
                      child: Text(
                    'Name*'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  )),
                  CustomForm(
                    cursorColor: orange,
                    controller: controller.name,
                    obscureText: false,
                    validator: (val) {
                      // return validate(val!, 20, 3);
                    },
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    minLines: 1,
                    text: 'EnterName'.tr,
                    fillColor: blacke,
                    prefixIcon: const Icon(
                      Icons.account_circle,
                      color: orange,
                    ),
                  ),
                  SizedBoxHieght(
                    height: 0.02,
                  ),
                  FittedBox(
                      child: Text(
                    'email'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  )),
                  CustomForm(
                    cursorColor: orange,
                    controller: controller.email,
                    obscureText: false,
                    validator: (val) {
                      return validate(val!, 30, 12);
                    },
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    minLines: 1,
                    fillColor: blacke,
                    text: 'enterEmail'.tr,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: orange,
                    ),
                  ),
                  SizedBoxHieght(
                    height: 0.02,
                  ),
                  FittedBox(
                      child: Text(
                    'password'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  )),
                  GetBuilder<AuthController>(
                    builder: (controller) => CustomForm(
                      cursorColor: orange,
                      controller: controller.password,
                      obscureText: controller.obscure2,
                      validator: (val) {
                        // return validate(val!, 18, 6);
                      },
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      minLines: 1,
                      fillColor: blacke,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: orange,
                      ),
                      text: 'enterPassword'.tr,
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.changeObscure2();
                        },
                        icon: controller.obscure2 == true
                            ? const Icon(
                                Icons.visibility,
                                color: orange,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: orange,
                              ),
                      ),
                    ),
                  ),
                  SizedBoxHieght(
                    height: 0.02,
                  ),
                  FittedBox(
                      child: Text(
                    'Confirm Password*'.tr,
                    style: Theme.of(context).textTheme.headline2,
                  )),
                  GetBuilder<AuthController>(
                    builder: (controller) => CustomForm(
                      cursorColor: orange,
                      controller: controller.password,
                      obscureText: controller.obscure2,
                      validator: (val) {
                        // return validate(val!, 18, 6);
                      },
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      minLines: 1,
                      fillColor: blacke,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: orange,
                      ),
                      text: 'Re-enter your password'.tr,
                      suffixIcon: IconButton(
                        onPressed: () {
                          controller.changeObscure2();
                        },
                        icon: controller.obscure2 == true
                            ? const Icon(
                                Icons.visibility,
                                color: orange,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: orange,
                              ),
                      ),
                    ),
                  ),
                  // SizedBoxHieght(
                  //   height: 0.02,
                  // ),
                  //   Text('Number*'.tr,style:Get.textTheme.headline2,),
                  // CustomForm(
                  //   cursorColor: orange,
                  //   controller: controller.name,
                  //   obscureText: false,
                  //   validator: (val) {
                  //     return validate(val!, 20, 3);
                  //   },
                  //   textAlign: TextAlign.start,
                  //   maxLines: 1,
                  //   minLines: 1,
                  //   text: 'EnterNumber'.tr,
                  //   fillColor: blacke,
                  //   prefixIcon: Icon(
                  //     Icons.phone,
                  //     color: orange,
                  //   ),
                  // ),
                  SizedBoxHieght(
                    height: 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBoxHieght(height: 0.03),
        Center(
          child: CustomButton(
              buttonWidth: MediaQuery.of(context).size.width * 0.8,
              buttonBody: 'Save'.tr,
              buttonColor: nav,
              onTap: () {
                Get.defaultDialog(
                  backgroundColor: Get.theme.primaryColor,
                  title: 'Der Mohamad'.tr,
                  titleStyle: Theme.of(context).textTheme.headline2,
                  contentPadding: const EdgeInsets.all(30),
                  titlePadding: const EdgeInsets.only(top: 30),
                  content: Text(
                    'Do you want to save this changes ? '.tr,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  confirm: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Get.offAll(() => MainScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 800));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.green,
                      child: FittedBox(
                        child: Text(
                          'yes'.tr,
                          style: const TextStyle(color: whitee),
                        ),
                      ),
                    ),
                  ),
                  cancel: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: MaterialButton(
                      onPressed: () {
                        Get.offAll(() => MainScreen(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 800));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      color: Colors.red,
                      child: FittedBox(
                        child: Text(
                          'No'.tr,
                          style: const TextStyle(color: whitee),
                        ),
                      ),
                    ),
                  ),
                );
                // Get.off(() => MainScreen(),
                //     transition: Transition.fade,
                //     duration: Duration(milliseconds: 800));
              }),
        ),
        SizedBoxHieght(height: 0.03),
      ]),
    )));
  }
}
