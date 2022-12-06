import 'package:flutter/material.dart';
import 'package:tassk/src/modules/shared/bottom_navigation.dart';
import 'package:tassk/src/modules/shared/chat_type_view.dart';
import 'package:tassk/src/modules/shared/header_view.dart';

import '../shared/chat_tile.dart';

class RecentChatsScreen extends StatelessWidget {
  const RecentChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const RecentChatsView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add_circle),
        ),
        bottomNavigationBar: const BottomNavigationBarView());
  }
}

class RecentChatsView extends StatelessWidget {
  const RecentChatsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const HeaderView(txt: 'Recent Chat', child: Icon(Icons.search)),
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
                  txt: 'Work', color: Colors.white, styleColor: Colors.grey),
              ChatTypeView(
                  txt: 'Groups', color: Colors.white, styleColor: Colors.grey),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: const [
                ChatTile(
                    img: 'assets/images/1.png',
                    name: 'Dalerene Steward',
                    msg: 'Pls take a look at the images.',
                    time: '18.31',
                    msgCount: 5),
                ChatTile(
                  img: 'assets/images/4.png',
                  name: 'Fullsnack Designers',
                  msg: 'Hello guys, we have discussed about ...',
                  time: '16.04',
                ),
                ChatTile(
                  img: 'assets/images/1.png',
                  name: 'Fullsnack Designers',
                  msg: 'Hello guys, we have discussed about ...',
                  time: '16.04',
                ),
                ChatTile(
                  img: 'assets/images/4.png',
                  name: 'Lee Williamson',
                  msg: 'Yes, that’s gonna work, hopefully. ',
                  time: '06.12',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
