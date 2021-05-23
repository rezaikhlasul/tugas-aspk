import 'package:bits/Screens/HomeKonsumen/components/listview.dart';
import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:bits/Screens/HomeKonsumen/components/background.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:bits/Screens/HomeKonsumen/components/circleavatar.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:bits/Screens/HomeKonsumen/components/BottomNavigationBar.dart';

import 'Kategori.dart';
import 'rekomendasi.dart';
import 'textbiasa.dart';

class BodyHK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        CAHomeKonsumen(),
        TX(),
        SBHomeKonsumen(),
        Kategori(),
        Rekomendasi(),
      ],
    ));
  }
}
