import 'package:barcode_widget/barcode_widget.dart';
import 'package:delivery_app/Controller/LocalizationController/LocalizationController.dart';
import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Widget/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../Core/Constant/size.dart';
import '../../../../../Widget/CustomButton.dart';
import 'custom/switch_tile.dart';

class SettingsScreen extends GetView<LocalizationController> {
  SettingsScreen({super.key});
  final LocalizationController controller =
      Get.put(LocalizationController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Settings'.tr,
      widget: Padding(
        padding: const EdgeInsets.all(20),
        child: GetBuilder<LocalizationController>(
          builder: (controller) => Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SwitchTile(
                        title: 'Notification'.tr,
                        isSwitched: controller.notificationSwitch,
                        onChange: (val) {
                          controller.enableNotification(val);
                        },
                      ),
                      SwitchTile(
                        title: 'Dark Mode'.tr,
                        isSwitched: controller.switch2,
                        onChange: (val2) {
                          controller.changeTheme(val2);
                        },
                      ),
                      SwitchTile(
                        title: 'Change Language'.tr,
                        isSwitched: controller.switche3,
                        onChange: (val3) {
                          controller.changeLanguage(val3, 'ar', 'en');
                        },
                      ),
                      BarcodeWidget(
                        barcode: Barcode.qrCode(
                          errorCorrectLevel: BarcodeQRCorrectionLevel.high,
                        ),
                        data: 'https://pub.dev/packages/barcode_widget',
                        width: 200,
                        height: 250,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        controller.qrCode,
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                buttonBody: 'Scan code',
                onTap: () {
                  controller.scanQrQode();
                },
                buttonWidth: AppSize.width * 0.8,
                buttonColor: orange,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
