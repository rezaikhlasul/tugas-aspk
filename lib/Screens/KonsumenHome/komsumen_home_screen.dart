import 'package:bits/constants.dart';
import 'package:bits/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KonsumenHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Konsumen Home",
                style: TextStyle(
                  color: kPrimaryHardColor,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CircleAvatar(
                maxRadius: 25,
                backgroundImage: NetworkImage(user.photoURL),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Halo " + user.displayName,
                style: TextStyle(
                  color: kPrimaryHardColor,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logout();
                },
                child: Text("LogOut"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
