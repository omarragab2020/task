import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {Key? key,
      required this.img,
      required this.name,
      required this.msg,
      required this.time,
      this.msgCount})
      : super(key: key);
  final String img;
  final String name;
  final String msg;
  final String time;
  final int? msgCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: ExactAssetImage(img),
            maxRadius: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(msg),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(time),
              const SizedBox(height: 10),
              if (msgCount != null)
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: const Color(0xff2F80ED),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    msgCount!.toString(),
                    style: TextStyle(color: Colors.white),
                  )),
                )
            ],
          )
        ],
      ),
    );
  }
}
