import 'package:flutter/material.dart';

class ListViewHomeKonsumen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "Kategori",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20),
        ),
      ],
    );
  }
}

class ListViewHomeKonsumen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image(
            image: AssetImage("assets/images/Manisan.png"),
            width: 100,
          ),
          ListTile(
            title: Text("Manisan"),
          )
        ],
      ),
    );
  }
}
