import 'package:bits/Screens/HomeKonsumen/components/BottomNavigationBar.dart';
import 'package:bits/Screens/HomeKonsumen/components/background.dart';
import 'package:bits/Screens/HomeKonsumen/components/body.dart';
import 'package:bits/Screens/HomeKonsumen/components/circleavatar.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';

class HomeKonsumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BodyHomeKonsumen(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF6F35A5),
          unselectedItemColor: Color(0xFF6F35A5),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          iconSize: 40,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              title: Text('Beranda'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text('Saya'),
              icon: Icon(Icons.person),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.qr_code_scanner), onPressed: () {}),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
