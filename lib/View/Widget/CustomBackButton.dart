import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton(
      {super.key,
      required this.funcation,
      required this.color,
      required this.iconcolor});
  final VoidCallback funcation;
  final Color color;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: funcation,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Icon(
          Icons.arrow_back,
          color: iconcolor,
          size: 30,
        ),
      ),
    );
  }
}
