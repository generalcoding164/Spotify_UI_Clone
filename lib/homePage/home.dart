import 'package:flutter/material.dart';
import 'package:spotify_copyui/colorConst.dart';

import 'backBone.dart';
import 'navBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customDarkGrey,
      body: SafeArea(
        child: Stack(
          children: [
            // Main Body

            BackBone(),

            // Navigation Bar
            Align(
              alignment: Alignment.bottomCenter,
              child: NavBar(),
            ),
          ],
        ),
      ),
    );
  }
}
