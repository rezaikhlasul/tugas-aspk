import 'package:bits/Screens/HomeKonsumen/components/textbiasa.dart';
import 'package:flutter/material.dart';
import "package:bits/Screens/UMKM/circle_avatar.dart";
import 'package:bits/Screens/UMKM/listproduk.dart';

class HomeUMKM extends StatefulWidget {
  @override
  _HomeUMKMState createState() => _HomeUMKMState();
}

class _HomeUMKMState extends State<HomeUMKM> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[CAUMKM(), TXU(), Expanded(child: ListProdukUMKM())],
      ),
    );
  }
}
