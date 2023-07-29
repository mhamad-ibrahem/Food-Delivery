import 'package:flutter/material.dart';
class SizedBoxHieght extends StatelessWidget {
  SizedBoxHieght({required this.height});
  final double height;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height * height ,
      
    );
  }
}