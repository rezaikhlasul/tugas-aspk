import 'package:bits/Screens/HomeKonsumen/Screen/pengaturan_akun.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import "package:bits/Screens/UMKM/bnb.dart";

class ProfileScreenUMKM extends StatefulWidget {
  @override
  _ProfileScreenUMKMState createState() => _ProfileScreenUMKMState();
}

class _ProfileScreenUMKMState extends State<ProfileScreenUMKM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BNBUMKM();
              }));
            }),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.settings_outlined,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Pengaturan_Akun();
                }));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CAProfile(),
              ProfileText1(),
              ProfileWidget1(),
              ProfileWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}
