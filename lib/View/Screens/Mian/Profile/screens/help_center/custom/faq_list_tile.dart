import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../Core/Constant/colors.dart';

class FaqListTile extends StatelessWidget {
  const FaqListTile({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.arrow_forward,
          color: orange,
        ),
        onPressed: () {},
      ),
    );
  }
}
