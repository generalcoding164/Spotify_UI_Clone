// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:spotify_copyui/colorConst.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  double radius = 12;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      iconSize: 25,
      backgroundColor: navBgColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromARGB(255, 216, 216, 216),
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          backgroundColor: navBgColor,
          icon: const Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: "Search",
        ),
        const BottomNavigationBarItem(
          icon: Icon(
            Icons.queue_music_rounded,
          ),
          label: "Library",
        ),
        BottomNavigationBarItem(
          backgroundColor: navBgColor,
          icon: Padding(
            padding: const EdgeInsets.only(top: 3),
            child: CircleAvatar(
              radius: radius + 1.5,
              backgroundColor: Colors.green,
              child: CircleAvatar(
                radius: radius,
                backgroundImage: const AssetImage("assets/images/MyPic.JPG"),
              ),
            ),
          ),
          label: "Library",
        ),
      ],
    );
  }
}
