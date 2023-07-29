import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Widget/CustomButton.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

import '../../../../Controller/Payment/view_map_controller.dart';

class ViewMapScreen extends StatelessWidget {
  ViewMapScreen({super.key});
  ViewMapController controllers = Get.put(ViewMapController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: controllers.kGooglePlex == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: orange,
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: GoogleMap(
                        mapType: MapType.normal,
                        markers: controllers.marker,
                        initialCameraPosition: controllers.kGooglePlex!,
                        onMapCreated: (GoogleMapController controller) {
                          controllers.googleMapController = (controller);
                        },
                      ),
                    ),
                    SizedBoxHieght(height: 0.04),
                    CustomButton(
                      buttonBody: 'Delivery Details'.tr,
                      buttonColor: nav,
                      buttonWidth: MediaQuery.of(context).size.width * 0.8,
                      onTap: () {
                        controllers.goToFeedBack();
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
