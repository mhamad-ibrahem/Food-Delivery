import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomVertivicationForm extends StatelessWidget {
  const CustomVertivicationForm({super.key, required this.onSaved});
  final Function(String?) onSaved;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.18,
      decoration: BoxDecoration(
        color: Get.theme.primaryColor,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: Colors.grey.shade400,width: 1)
      ),
      child: Center(
        child: TextFormField(
          keyboardType: TextInputType.number,
          style: Get.textTheme.headline5,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Get.theme.primaryColor),
              borderRadius: BorderRadius.circular(13),
            ),
            // disabledBorder: OutlineInputBorder(
            // borderSide: const BorderSide(width: 6, color: Colors.black),
            // borderRadius: BorderRadius.circular(13),),
          ),
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onSaved: onSaved,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ),
      ),
    );
  }
}
