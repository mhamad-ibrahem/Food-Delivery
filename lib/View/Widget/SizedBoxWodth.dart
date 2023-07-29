import 'package:flutter/material.dart';
class SizedBoxWidth extends StatelessWidget {
  SizedBoxWidth({required this.width});
  final double width;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.height * width ,
      
    );
  }
}