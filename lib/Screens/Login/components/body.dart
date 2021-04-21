import 'package:bits/Screens/Login/components/background.dart';
import 'package:bits/Screens/SignUp/signup_screen.dart';
import 'package:bits/components/buttons/auth/button_auth.dart';
import 'package:bits/components/buttons/auth/text_field_container_auth.dart';
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
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.3,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  TextFieldContainerAuth(
                    label: "Email atau Nama Pengguna",
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: kPrimaryColor,
                          ),
                          hintText: "Email atau Nama Pengguna"),
                    ),
                  ),
                  TextFieldContainerAuth(
                    label: "Password",
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: kPrimaryColor,
                          ),
                          hintText: "Password"),
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
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUpScreen();
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
