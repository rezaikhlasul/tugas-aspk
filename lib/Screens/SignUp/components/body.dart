import 'package:bits/Screens/Login/login_screen.dart';
import 'package:bits/Screens/SignUp/components/background.dart';
import 'package:bits/Screens/SignUp/components/dropdown_role.dart';
import 'package:bits/components/buttons/auth/button_auth.dart';
import 'package:bits/components/buttons/auth/text_field_container_auth.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: BackgroundSignUp(
        child: Container(
          margin: EdgeInsets.only(
              top: size.height * 0.21, bottom: size.height * 0.02),
          width: size.width * 0.9,
          height: size.height * 0.95,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                  flex: 3,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        TextFieldContainerAuth(
                          child: TextField(
                            decoration:
                                InputDecoration(hintText: "Nama Lengkap"),
                          ),
                        ),
                        TextFieldContainerAuth(
                          child: TextField(
                            decoration: InputDecoration(hintText: "Username"),
                          ),
                        ),
                        TextFieldContainerAuth(
                          child: TextField(
                            decoration: InputDecoration(hintText: "Email"),
                          ),
                        ),
                        TextFieldContainerAuth(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(hintText: "Kata Sandi"),
                          ),
                        ),
                        TextFieldContainerAuth(
                          child: TextField(
                            obscureText: true,
                            decoration:
                                InputDecoration(hintText: "Ulangi Kata Sandi"),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text("Daftar Sebagai"),
                            Container(
                              child: DropdownRole(), //pilihan role
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        RoundedAuthButton(
                          text: "Daftar",
                          press: () {},
                          color: kPrimaryColor,
                          textColor: Colors.white,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Sudah memiliki akun ?",
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
                                        return LoginScreen();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "Masuk",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
