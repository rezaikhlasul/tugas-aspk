import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CAUMKM extends StatelessWidget {
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
                      SvgPicture.asset("assets/icons/UMKM/produk.svg"),
                      Text("produk"),
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
