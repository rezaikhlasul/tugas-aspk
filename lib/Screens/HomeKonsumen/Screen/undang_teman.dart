import 'package:bits/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Undang_Teman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            "Undang Teman",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[TTeman(), BTeman()],
          ),
        ));
  }
}

class TTeman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30),
      height: 80,
      alignment: Alignment.centerLeft,
      child: Text(
        "Share dengan teman dan keluarga !",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
      ),
    );
  }
}

class BTeman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset(
                            "assets/icons/Konsumen/logos_whatsapp.svg"),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("WhatsApp"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset(
                            "assets/icons/Konsumen/logos_facebook.svg"),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Facebook"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: SvgPicture.asset(
                              "assets/icons/Konsumen/cib_line.svg")),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Line"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset(
                            "assets/icons/Konsumen/logos_twitter.svg"),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Twitter"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: SvgPicture.asset(
                            "assets/icons/Konsumen/logos_telegram.svg"),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Telegram"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  child: Column(
                    children: <Widget>[
                      Container(
                          child: SvgPicture.asset(
                              "assets/icons/Konsumen/messanger.svg")),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text("Pesan"),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
