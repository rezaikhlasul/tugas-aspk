import 'package:bits/Screens/SplashScreen/splash_screen.dart';
import 'package:bits/Screens/UMKM/home_umkm.dart';
import 'package:bits/Screens/UMKM/tambah_produk.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BITS',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomeUMKM(),
    );
  }
}
