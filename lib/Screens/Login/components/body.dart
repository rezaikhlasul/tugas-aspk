import 'package:bits/Screens/HomeKonsumen/components/bottomnavigationbar.dart';
import 'package:bits/Screens/Login/components/background.dart';
import 'package:bits/Screens/SignUp/signup_screen.dart';
import 'package:bits/Screens/UMKM/bnb.dart';
import 'package:bits/components/buttons/auth/button_auth.dart';
import 'package:bits/components/buttons/auth/text_field_container_auth.dart';
import 'package:bits/components/or_divider/or_divider.dart';
import 'package:bits/constants.dart';
import 'package:bits/service/authService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  final auth = FirebaseAuth.instance;
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // provides total size of screen

    return SingleChildScrollView(
      child: BackgroundLogin(
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "Masuk",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: kPrimaryColor,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    TextFieldContainerAuth(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _email = value.trim();
                          });
                        },
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: kPrimaryColor,
                            ),
                            hintText: "Email"),
                      ),
                    ),
                    TextFieldContainerAuth(
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _password = value.trim();
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: kPrimaryColor,
                            ),
                            hintText: "Kata sandi"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          RoundedAuthButton(
                            text: "Masuk",
                            press: () async {
                              await _auth
                                  .signInWithEmailAndPassword(_email, _password)
                                  .then((user) => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return BNBUMKM();
                                          },
                                        ),
                                      ));
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Belum memiliki akun ?",
                                  style: TextStyle(color: Colors.black87),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return SignUpScreen();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Daftar",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          OrDivider(),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                FirebaseAuthIcon(
                                  iconSrc: "assets/icons/google-plus.svg",
                                  press: () {},
                                ),
                                FirebaseAuthIcon(
                                  iconSrc: "assets/icons/facebook.svg",
                                  press: () {},
                                ),
                                FirebaseAuthIcon(
                                  iconSrc: "assets/icons/twitter.svg",
                                  press: () {},
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirebaseAuthIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const FirebaseAuthIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryColor),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 15,
          width: 15,
        ),
      ),
    );
  }
}
