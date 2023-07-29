import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {required this.text,
      required this.size,
      required this.color,
      @required this.textAlign,
      @required this.fontWeight});
  final String text;
  final double size;
  final Color color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        // fontFamily: 'Noto Naskh Arabic'
      ),
      textAlign: textAlign,
    );
  }
}
