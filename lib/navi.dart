import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class navi extends StatelessWidget {
  const navi({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black),
        //  backgroundColor: Colors.amber,
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.black,
        ),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mic_none_outlined, color: Colors.black),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
        label: "",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.mail_outline, color: Colors.black),
        label: "",
      ),
    ]);
  }
}
