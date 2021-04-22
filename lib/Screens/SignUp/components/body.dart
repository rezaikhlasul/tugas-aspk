import 'package:bits/Screens/SignUp/components/background.dart';
import 'package:bits/components/buttons/auth/text_field_container_auth.dart';
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
                  flex: 4,
                  child: Container(
                    child: Column(
                      children: <Widget>[
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
                      ],
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
