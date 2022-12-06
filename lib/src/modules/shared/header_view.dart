import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({required this.txt, required this.child, Key? key})
      : super(key: key);

  final String txt;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: const EdgeInsets.fromLTRB(15,50,15,15),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: ListTile(
          title: Text(txt,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              )),
          trailing: child),
    );
  }
}
