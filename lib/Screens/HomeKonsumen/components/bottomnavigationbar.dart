import 'package:bits/Screens/HomeKonsumen/homekonsumen_screen.dart';
import 'package:flutter/material.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';

class BNBHomeKonsumen extends StatefulWidget {
  @override
  _BNBHomeKonsumenState createState() => _BNBHomeKonsumenState();
}

int _selectedIndex = 0;

class _BNBHomeKonsumenState extends State<BNBHomeKonsumen> {
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      backgroundColor: Colors.white,
      selectedFontSize: 15,
      unselectedFontSize: 12,
      iconSize: 25,
      items: [
        BottomNavigationBarItem(
          title: Text('Beranda'),
          icon: Icon(
            Icons.home_outlined,
          ),
        ),
        BottomNavigationBarItem(
          title: Text('Saya'),
          icon: Icon(Icons.person_outlined),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTap,
    );
  }
}