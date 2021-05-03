import 'package:bits/Screens/HomeKonsumen/components/listview.dart';
import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:bits/Screens/HomeKonsumen/components/background.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:bits/Screens/HomeKonsumen/components/circleavatar.dart';
import 'package:flutter/src/material/bottom_navigation_bar_theme.dart';
import 'package:bits/Screens/HomeKonsumen/components/BottomNavigationBar.dart';

class BodyHomeKonsumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundHomeKonsumen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
              child: Container(
            color: Colors.white,
            child: CAHomeKonsumen(),
            alignment: Alignment.centerLeft,
          )),
          Flexible(
              child: Container(
            margin: EdgeInsets.only(left: 10),
            color: Colors.white,
            width: 200,
            height: 50,
            alignment: Alignment.centerLeft,
            child: Text(
              "Temukan Produk UMKM Yang Kamu Butuhkan !",
              textAlign: TextAlign.justify,
              maxLines: 2,
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w300,
                  fontSize: 17),
            ),
          )),
          Flexible(
              child: Container(
            color: Colors.white,
            child: SBHomeKonsumen(),
          )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: ListViewHomeKonsumen1(),
              )),
          Flexible(
              flex: 2,
              child: Container(
                color: Colors.purple,
                child: ListViewHomeKonsumen2(),
              )),
        ],
      ),
    );
  }
}
