import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class BackgroundSignUp extends StatelessWidget {
  final Widget child;
  const BackgroundSignUp({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * 0.2,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Container(
              margin: EdgeInsets.only(left: size.width * 0.07),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Buat Akun Baru",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.5,
              )),
          child,
        ],
      ),
    );
  }
}
