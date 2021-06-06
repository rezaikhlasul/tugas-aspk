import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:bits/Screens/HomeKonsumen/components/BottomNavigationBar.dart';
import 'package:bits/Screens/HomeKonsumen/components/Kategori.dart';

import 'package:bits/Screens/HomeKonsumen/components/background.dart';
import 'package:bits/Screens/HomeKonsumen/components/body.dart';
import 'package:bits/Screens/HomeKonsumen/components/circleavatar.dart';
import 'package:bits/Screens/HomeKonsumen/components/rekomendasi.dart';
import 'package:bits/Screens/HomeKonsumen/components/rekomendasi_produk.dart';
import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:bits/Screens/HomeKonsumen/components/textbiasa.dart';
import 'package:bits/Screens/Login/login_screen.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';

class HomeKonsumen extends StatefulWidget {
  @override
  _HomeKonsumenState createState() => _HomeKonsumenState();
}

class _HomeKonsumenState extends State<HomeKonsumen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CAHomeKonsumen(),
              TX(),
              SBHomeKonsumen(),
              SizedBox(
                height: 50,
              ),
              Kategori(),
              RekomendasiProduk()
            ],
          ),
        ),
      ),
    );
  }
}
