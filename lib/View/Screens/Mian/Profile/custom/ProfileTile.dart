import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final VoidCallback fun;
  final String title;
  final Widget leading;

  const ProfileTile({
    required this.fun,
    required this.title,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(13)),
      child: ListTile(
          leading: leading,
          title: Container(
              alignment: Alignment.topLeft,
              width: MediaQuery.of(context).size.width * 0.4,
              height: 20,
              child: FittedBox(
                  child: Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ))),
          trailing: const Icon(
            Icons.arrow_forward,
            color: Colors.cyan,
          ),
          onTap: fun),
    );
  }
}
