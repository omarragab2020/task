import 'package:flutter/material.dart';

class BottomNavigationBarView extends StatelessWidget {
  const BottomNavigationBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xff2F80ED),
      unselectedItemColor: Colors.grey,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.messenger_sharp),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lock_clock),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          label: '',
        ),
      ],
    );
  }
}
