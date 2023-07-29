import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:delivery_app/View/Widget/SizedBoxHeight.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Widget/CustomForm.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  CameraPosition? _kGooglePlex;
  GoogleMapController? googleMapController;
  //  CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(34.885947, 35.884616),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);
  late Position currentLocation;
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
    _kGooglePlex = CameraPosition(
      target: LatLng(34.885947, 35.884616),
      zoom: 10.4746,
    );
    print(lat);
    print(long);
    print(currentLocation);
    setState(() {});
    // return currentLocation!;
  }

  @override
  void initState() {
    getPermission();
    getLatLang();
    super.initState();
  }

  Set<Marker> marker = {
    Marker(
        visible: true,
        markerId: MarkerId('1'),
        position: LatLng(34.885828, 35.884597),
        onTap: () {},
        onDrag: (val) {},
        infoWindow: InfoWindow(
            title: 'Resturant',
            onTap: () {})) //good for make marker for our resturant
  };
  TextEditingController controller = TextEditingController();
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              _kGooglePlex == null
                  ? Column(
                      children: [
                        SizedBoxHieght(height: 0.2),
                        Center(
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.5,
                              color: Get.theme.primaryColor,
                              child: Center(
                                  child: Column(
                                children: [
                                  SizedBoxHieght(height: 0.03),
                                  FittedBox(
                                    child: Text(
                                      'Waiting...'.tr,
                                      style: Get.textTheme.headline3,
                                    ),
                                  ),
                                  SizedBoxHieght(height: 0.05),
                                  CircularProgressIndicator(),
                                ],
                              ))),
                        ),
                      ],
                    )
                  : Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.885,
                      child: GoogleMap(
                        onTap: (val) {},
                        markers: marker,
                        mapType: MapType.normal,
                        initialCameraPosition: _kGooglePlex!,
                        onMapCreated: (GoogleMapController controller) {
                          googleMapController = controller;
                        },
                      ),
                    ),
              Center(
                child: CustomForm(
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
              ),
            ]),
            // Center(
            //     child: MaterialButton(
            //   onPressed: () {
            //     //go to this postion
            //     LatLng gool = LatLng(34.885828, 35.884597);
            //     googleMapController!
            //         .animateCamera(CameraUpdate.newLatLng(gool));
            //   },
            //   color: nav,
            //   child: Text('Go to Raia'),
            // ))
          ],
        ),
      ),
    ));
  }
}
//35.884616  long
//34.885947 lat
//AIzaSyAs1BYHdbR_ZWGFmHyas4ZdeI_Z5EyBM5g

//34.885828
//35.884597
