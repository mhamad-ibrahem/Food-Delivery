import 'package:flutter/material.dart';
class CustomIconButton extends StatelessWidget {
   CustomIconButton({required this.fun,required this.iconet, required this.color});
 final VoidCallback fun;
 final Widget iconet;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fun,
      child: Container(
        child: iconet,
         
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}