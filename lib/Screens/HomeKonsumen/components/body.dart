import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:flutter/material.dart';

import 'package:bits/Screens/HomeKonsumen/components/circleavatar.dart';

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
