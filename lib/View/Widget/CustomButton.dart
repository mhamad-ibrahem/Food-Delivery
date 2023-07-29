import 'package:flutter/material.dart';
import '../../Core/Constant/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonBody,
    required this.onTap,
    required this.buttonWidth,
    required this.buttonColor,
  }) : super(key: key);
  final double buttonWidth;
  final VoidCallback? onTap;
  final String buttonBody;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: buttonColor,
      disabledColor: Colors.grey.shade600,
      disabledTextColor: whitee,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: SizedBox(
        width: buttonWidth,
        child: Center(
          child: Text(
            buttonBody,
            style: const TextStyle(
                color: whitee, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
