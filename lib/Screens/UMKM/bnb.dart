import 'package:bits/Screens/UMKM/detail_hasil.dart';
import 'package:bits/Screens/UMKM/tambah_produk.dart';
import 'package:bits/Screens/UMKM/umkm_screen.dart';
import 'package:flutter/material.dart';
import 'package:bits/Screens/UMKM/Profile.dart';

class BNBUMKM extends StatefulWidget {
  @override
  _BNBUMKMState createState() => _BNBUMKMState();
}

int _selectedIndex = 0;

class _BNBUMKMState extends State<BNBUMKM> {
  List<Widget> _umkmOptions = <Widget>[HomeUMKM(), ProfileScreenUMKM()];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _umkmOptions.elementAt(_selectedIndex),
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
          mini: false,
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TambahProduk();
                },
              ),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
