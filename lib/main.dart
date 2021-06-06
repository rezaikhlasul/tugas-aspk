import 'package:bits/Screens/HomeKonsumen/components/bottomnavigationbar.dart';
import 'package:bits/Screens/Login/login_screen.dart';
import 'package:bits/Screens/UMKM/bnb.dart';
import 'package:bits/constants.dart';
import 'package:bits/providers/product_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BITS',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
