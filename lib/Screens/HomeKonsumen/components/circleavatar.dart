import 'package:flutter/material.dart';

class CAHomeKonsumen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          color: Colors.white,
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "",
            ),
            radius: 100,
          ),
        ),
        Column(children: <Widget>[
          Text(
            "Halo ASPK",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ]),
      ],
    ));
  }
}
