import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tassk/src/controller/user_controller.dart';
import 'package:tassk/src/modules/shared/bottom_navigation.dart';
import 'package:tassk/src/modules/shared/header_view.dart';

import '../shared/chat_tile.dart';
import '../shared/chat_type_view.dart';
import '../shared/pinned_chat_card.dart';

class PinnedChatScreen extends GetView<UserController> {
  const PinnedChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const HeaderView(
                  txt: 'Pinned Chats',
                  child: CircleAvatar(
                    backgroundImage: ExactAssetImage(
                      'assets/images/image1.png',
                    ),
                    maxRadius: 20,
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: Obx(() {
                      return GridView.count(
                        primary: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                        children: controller.userList
                            .sublist(0, 4)
                            .map((e) => PinnedChatCard(e))
                            .toList(),
                      );
                    })),
                SizedBox(height: 8),
                Container(
                  height: 4,
                  width: 30,
                  color: Colors.grey[200],
                ),
                const HeaderView(
                  txt: 'Recent Chats',
                  child: Icon(Icons.search),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    ChatTypeView(
                        txt: 'All Chats',
                        color: Color(0xff2F80ED),
                        styleColor: Colors.white),
                    ChatTypeView(
                        txt: 'personal',
                        color: Colors.white,
                        styleColor: Colors.grey),
                    ChatTypeView(
                        txt: 'Work',
                        color: Colors.white,
                        styleColor: Colors.grey),
                    ChatTypeView(
                        txt: 'Groups',
                        color: Colors.white,
                        styleColor: Colors.grey),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                    flex: 6,
                    child: ListView(
                      children: const [
                        ChatTile(
                            img: 'assets/images/2.png',
                            name: 'Darlene Steward',
                            msg: 'Pls take a look at the images.',
                            msgCount: 5,
                            time: '18.13'),
                        ChatTile(
                            img: 'assets/images/1.png',
                            name: 'Fullsnack Designers',
                            msg: 'Hello guys, we have discussed ',
                            time: '16.13'),
                        ChatTile(
                            img: 'assets/images/3.png',
                            name: 'Lee Williamson',
                            msg: 'Yes, that’s gonna work, hopefully. ',
                            time: '6.13'),
                        ChatTile(
                            img: 'assets/images/4.png',
                            name: 'Ronald Mccoy',
                            msg: 'Thanks dude 😉',
                            time: '6.13'),
                      ],
                    ))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add_circle),
          ),
          bottomNavigationBar: BottomNavigationBarView()),
    );
  }
}
