import 'package:bits/Screens/Welcome/components/background.dart';
import 'package:bits/components/buttons/auth/button_auth.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // provides total size of screen

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 50, top: size.height * 0.08),
            child: SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
          ),
          Container(
            child: Text(
              "Selamat datang di BITS",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                RoundedAuthButton(
                  text: "Login",
                  press: () {},
                ),
                RoundedAuthButton(
                  text: "Sign Up",
                  color: kPrimaryLightColor,
                  textColor: Colors.black87,
                  press: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
