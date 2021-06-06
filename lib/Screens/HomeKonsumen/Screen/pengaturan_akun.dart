import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:bits/Screens/Login/login_screen.dart';
import 'package:bits/service/authService.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pengaturan_Konsumen extends StatelessWidget {
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
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Simpan",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CAProfileKonsumen(),
              PengaturanText1(),
              PengaturanWidget1()
            ],
          ),
        ),
      ),
    );
  }
}

class PengaturanText1 extends StatefulWidget {
  @override
  _PengaturanText1State createState() => _PengaturanText1State();
}

class _PengaturanText1State extends State<PengaturanText1> {
  String namaLengkap;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetch(),
      builder: (context, snapshot) {
        return Container(
          child: Column(
            children: <Widget>[
              Center(
                  child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(namaLengkap,
                          style:
                              TextStyle(fontSize: 15, color: Colors.black)))),
            ],
          ),
        );
      },
    );
  }

  _fetch() async {
    final userData = await FirebaseAuth.instance.currentUser;
    if (userData != null)
      await FirebaseFirestore.instance
          .collection('user')
          .doc(userData.uid)
          .get()
          .then((ds) {
        namaLengkap = ds.data()['namaLengkap'];
      }).catchError((e) {
        print(e);
      });
    print(namaLengkap);
  }
}

class PengaturanWidget1 extends StatefulWidget {
  @override
  _PengaturanWidget1State createState() => _PengaturanWidget1State();
}

class _PengaturanWidget1State extends State<PengaturanWidget1> {
  String namaLengkap, kelamin;
  String email;
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetch(),
      builder: (context, snapshot) {
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/email.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25, top: 15),
                        alignment: Alignment.centerRight,
                        child: Text(email,
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/telepon.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "No.Telepon",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25, top: 15),
                        alignment: Alignment.centerRight,
                        child: Text("08********98",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/jenis_kelamin.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Jenis Kelamin",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25, top: 15),
                        alignment: Alignment.centerRight,
                        child: Text(kelamin,
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/kata_sandi.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Kata Sandi",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/tgl_lahir.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Tanggal Lahir",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25, top: 15),
                        alignment: Alignment.centerRight,
                        child: Text("10-10-2000",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/lokasi.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Lokasi",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(right: 25, top: 15),
                        alignment: Alignment.centerRight,
                        child: Text("Dramagon",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black))),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 45,
                      child: InkWell(
                        onTap: () async {
                          await _auth.signOut();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginScreen();
                              },
                            ),
                          );
                        },
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: SvgPicture.asset(
                                      "assets/icons/Konsumen/keluar.svg"),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Keluar",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 12),
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _fetch() async {
    final userData = await FirebaseAuth.instance.currentUser;
    if (userData != null)
      await FirebaseFirestore.instance
          .collection('user')
          .doc(userData.uid)
          .get()
          .then((ds) {
        namaLengkap = ds.data()['namaLengkap'];
        kelamin = ds.data()['kelamin'];
        email = userData.email;
      }).catchError((e) {
        print(e);
      });
    print(namaLengkap);
  }
}
