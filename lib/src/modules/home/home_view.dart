import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tassk/src/modules/full_snack/full_snack.dart';
import 'package:tassk/src/modules/pinned_chats/pinnedChatScreen.dart';
import 'package:tassk/src/modules/recent_chat/recent_chats_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                Get.to(() => const PinnedChatScreen());
              },
              child: const Text("Pinned Chats Screen")),
          TextButton(
              onPressed: () {
                Get.to(() => const RecentChatsScreen());
              },
              child: const Text("Recent Chats Screen")),
          TextButton(
              onPressed: () {
                Get.to(() => const FullSnackScreen());
              },
              child: const Text("Full Snack Screen")),
        ],
      ),
    );
  }
}
