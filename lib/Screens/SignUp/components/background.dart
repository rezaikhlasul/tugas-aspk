import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.03),
            height: size.height * 0.3,
            child: SvgPicture.asset("assets/icons/signup.svg"),
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
