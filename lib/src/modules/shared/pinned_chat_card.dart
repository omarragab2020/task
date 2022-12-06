import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tassk/src/model/user_model.dart';

import '../../utils/constant.dart';

class PinnedChatCard extends StatelessWidget {
  final UserModel model;

  const PinnedChatCard(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Card(
          color: Color(0xffF7F7F7),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          ExactAssetImage(model.image ?? defaultImage),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(child: Text('${model.title}')),
                  ],
                ),
                const SizedBox(height: 16),
                Text('${model.description}')
              ],
            ),
          )),
    );
  }
}
