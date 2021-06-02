import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/icons.dart';

class CAHomeKonsumen extends StatefulWidget {
  @override
  _CAHomeKonsumenState createState() => _CAHomeKonsumenState();
}

class _CAHomeKonsumenState extends State<CAHomeKonsumen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: <Widget>[
      Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
            color: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/images/circle_avatar.png",
              ),
              radius: 50,
            ),
          ),
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Halo ASPK",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      Text("koin"),
                    ],
                  ),
                ]),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.only(top: 30),
        alignment: Alignment.topRight,
        child: Icon(Icons.notifications_none),
      )
    ]));
  }
}
