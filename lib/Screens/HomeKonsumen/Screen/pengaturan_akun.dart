import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:flutter/material.dart';

class Pengaturan_Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengaturan Akun",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.normal),
        ),
        actions: <Widget>[
          TextButton(
              onPressed: () {},
              child: Text(
                "Simpan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CAProfile(),
          ],
        ),
      ),
    );
  }
}
