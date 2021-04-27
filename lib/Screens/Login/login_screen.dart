import 'package:bits/Screens/Login/components/body.dart';
import 'package:bits/provider/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: Body(),
      ),
    );
  }
}
