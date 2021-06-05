import 'package:bits/components/buttons/button_primary.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class PoinBertambah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Center(
                    child: Text(
                  "Selamat Poinmu bertambah!",
                  style: TextStyle(fontSize: 24),
                )),
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(50),
                        height: size.height * 0.5,
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/poinbertambah.png"))),
                      ),
                      Container(
                        width: size.width * 0.8,
                        child: RoundedButtonPrimary(
                          text: "Beranda",
                          press: () {
                            Navigator.pop(context);
                          },
                          color: kPrimaryColor,
                          textColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
