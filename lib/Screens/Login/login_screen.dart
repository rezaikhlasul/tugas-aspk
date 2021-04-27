import 'package:bits/Screens/KonsumenHome/komsumen_home_screen.dart';
import 'package:bits/Screens/Login/components/body.dart';
import 'package:bits/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);

              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return KonsumenHome(); //Screen ketika berhasil login
              } else {
                return Body();
              }
            }),
      ),
    );
  }

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );
}
