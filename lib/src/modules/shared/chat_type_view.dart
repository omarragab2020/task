import 'package:flutter/cupertino.dart';

class ChatTypeView extends StatelessWidget {
  const ChatTypeView({
    Key? key,
    required this.txt,
    required this.color,
    required this.styleColor,
  }) : super(key: key);

  final String txt;
  final Color color;
  final Color styleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 30,
      decoration: BoxDecoration(
          // color: Color(0xff2F80ED),
          color: color,
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: Text(
          txt,
          style: TextStyle(color: styleColor),
        ),
      ),
    );
  }
}
