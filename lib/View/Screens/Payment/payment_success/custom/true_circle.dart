import 'package:flutter/material.dart';

import '../../../../../Core/Constant/colors.dart';

class TrueCircle extends StatelessWidget {
  const TrueCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -4,
      child: Container(
        margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.29,
          right: MediaQuery.of(context).size.width * 0.27,
        ),
        width: MediaQuery.of(context).size.width * 0.3,
        height: MediaQuery.of(context).size.height * 0.18,
        decoration: const BoxDecoration(
          color: orange,
          shape: BoxShape.circle,
        ),
        child: const Icon(
          Icons.done_rounded,
          color: whitee,
          size: 90,
        ),
      ),
    );
  }
}
