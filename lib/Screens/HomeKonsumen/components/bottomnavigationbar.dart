import 'package:bits/Screens/HomeKonsumen/Screen/pertanyaan_survey.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/scanbarcode.dart';
import 'package:bits/Screens/HomeKonsumen/homekonsumen_screen.dart';
import 'package:flutter/material.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';

class BNBHomeKonsumen extends StatefulWidget {
  @override
  _BNBHomeKonsumenState createState() => _BNBHomeKonsumenState();
}

int _selectedIndex = 0;

class _BNBHomeKonsumenState extends State<BNBHomeKonsumen> {
  List<Widget> _widgetOptions = <Widget>[
    HomeKonsumen(),
    ProfileScreenKonsumen()
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.white,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
            label: 'Beranda',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Saya',
            icon: Icon(Icons.person_outlined),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      floatingActionButton: FloatingActionButton(
          mini: true,
          child: Icon(
            Icons.qr_code_scanner_sharp,
          ),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Scanbarcode();
                },
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
