import 'package:delivery_app/Core/Constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'statusRequest.dart';

class HandilingDataView extends StatelessWidget {
  const HandilingDataView(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: CircularProgressIndicator(
            color: orange,
          ))
        : statusRequest == StatusRequest.faliure
            ? const Center(child: Text("Faliur"))
            : statusRequest == StatusRequest.offlineFaliure
                ? const Center(child: Text("Offline"))
                : statusRequest == StatusRequest.serverFaliure
                    ? const Center(child: Text("Faliur"))
                    : widget;
  }
}

class HandilingDataRequest extends StatelessWidget {
  const HandilingDataRequest(
      {super.key, required this.statusRequest, required this.widget});
  final StatusRequest statusRequest;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                color: orange,
              ),
            ],
          ))
        : statusRequest == StatusRequest.faliure
            ? const Center(child: Text("Faliur"))
            : statusRequest == StatusRequest.offlineFaliure
                ? const Center(child: Text("Offline"))
                : statusRequest == StatusRequest.serverFaliure
                    ? const Center(child: Text("Faliur"))
                    : widget;
  }
}
