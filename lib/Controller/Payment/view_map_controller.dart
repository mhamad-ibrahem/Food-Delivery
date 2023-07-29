import 'dart:async';

import 'package:delivery_app/Core/Constant/route.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../View/Screens/Payment/view_map/delivery_details.dart';

class ViewMapController extends GetxController {
  CameraPosition? kGooglePlex;
  GoogleMapController? googleMapController;
  late Position currentLocation;
  StreamSubscription<Position>? positionStream;
  var lat;
  var long;

  Future getPermission() async {
    bool services;
    LocationPermission per;

    services = await Geolocator.isLocationServiceEnabled();
    print(services);
    if (services == false) {
      print('cant open map');
    }
    per = await Geolocator.checkPermission();
    if (per == LocationPermission.denied) {
      per = await Geolocator.requestPermission();
      if (per == LocationPermission.always) {}
    }
  }

  Future<void> getLatLang() async {
    currentLocation =
        await Geolocator.getCurrentPosition().then((value) => value);
    lat = currentLocation.latitude;
    long = currentLocation.longitude;
    kGooglePlex = const CameraPosition(
      target: LatLng(34.885828, 35.884597),
      zoom: 15.4746,
    );
    print(lat);
    print(long);
    print(currentLocation);
    // return currentLocation!;
  }

  setImageMarker() async {
    //make an image marker
    marker.add(Marker(
        visible: true,
        markerId: const MarkerId('2'),
        position: const LatLng(34.889349, 35.883199),
        onTap: () {},
        icon: await BitmapDescriptor.fromAssetImage(
            ImageConfiguration.empty, 'Assets/images/Start/deliveryMotor.png'),
        onDrag: (val) {},
        infoWindow: InfoWindow(title: 'Dilevey Gay', onTap: () {})));
  }

  @override
  void onInit() {
    getPermission();
    positionStream ==
        Geolocator.getPositionStream().listen((Position? position) {
          print(position == null
              ? 'Unknown'
              : '${position.latitude.toString()}, ${position.longitude.toString()}');
        });
    getLatLang();
    setImageMarker();
    super.onInit();
  }

  Set<Marker> marker = {
    Marker(
        visible: true,
        markerId: const MarkerId('1'),
        position: const LatLng(34.885828, 35.884597),
        onTap: () {},
        onDrag: (val) {},
        infoWindow: InfoWindow(
            title: 'Raia Caffe',
            onTap: () {})) //good for make marker for our resturant
  };
  showDeliveryDetails() {
    Get.bottomSheet(
      backgroundColor: Get.theme.primaryColor,
      enableDrag: false,
      ignoreSafeArea: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      enterBottomSheetDuration: const Duration(milliseconds: 600),
      isScrollControlled: true,
      exitBottomSheetDuration: const Duration(milliseconds: 600),
      const DileveryDetails(),
    );
  }

  goToFeedBack() {
    Get.offAllNamed(AppRoute.feedBack);
  }
}
