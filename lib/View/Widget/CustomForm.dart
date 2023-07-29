import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomForm extends StatelessWidget {
  final Color cursorColor;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?) validator;
  final TextAlign textAlign;
  final int maxLines;
  final int minLines;
  final Color? fillColor;
  final Widget prefixIcon;
  final Widget? suffixIcon;
  final String text;
  final Function(String)? onChange;
  const CustomForm(
      {super.key,
      required this.cursorColor,
      required this.controller,
      required this.obscureText,
      required this.validator,
      required this.textAlign,
      required this.maxLines,
      required this.minLines,
      @required this.fillColor,
      required this.text,
      required this.prefixIcon,
      this.suffixIcon,
      this.onChange});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      // padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.9,
      // height: MediaQuery.of(context).size.height *0.08,
      child: Center(
        child: TextFormField(
          style: Get.textTheme.headline5,
          cursorColor: cursorColor,
          onChanged: onChange,
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          textAlign: textAlign,
          maxLines: maxLines,
          minLines: minLines,
          decoration: InputDecoration(
            fillColor: Get.theme.primaryColor,
            hintText: text,
            hintStyle: Get.textTheme.headline3,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Get.theme.primaryColor, width: 1),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Get.theme.primaryColor, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Get.theme.primaryColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: Get.theme.primaryColor, width: 1)),
          ),
        ),
      ),
    );
  }
}
