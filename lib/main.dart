import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tassk/src/controller/user_controller.dart';

import 'src/modules/home/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(UserController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
