import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class ListProdukUMKM extends StatefulWidget {
  @override
  _ListProdukUMKMState createState() => _ListProdukUMKMState();
}

class _ListProdukUMKMState extends State<ListProdukUMKM> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 400,
      child: ListView(children: <Widget>[
        Container(
          child: Card(
            child: Wrap(
              children: [
                Image.asset("assets/image/Konsumen1.jpg"),
                ListTile(
                  title: Text("Makanan1"),
                )
              ],
            ),
          ),
        )
      ]),
    ));
  }
}
