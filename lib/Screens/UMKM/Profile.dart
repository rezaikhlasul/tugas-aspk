import 'package:bits/Screens/HomeKonsumen/Screen/hubungi_bits.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/pengaturan_akun.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/pusat_bantuan.dart';
import 'package:bits/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import "package:bits/Screens/UMKM/bnb.dart";
import 'package:bits/Screens/UMKM/pengaturan.dart';
import 'package:flutter_svg/svg.dart';

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
                  return Pengaturan_UMKM();
                }));
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              CAProfileUMKM(),
              ProfileTextUMKM(),
              ProfileWidgetUMKM1(),
              ProfileWidgetUMKM2(),
            ],
          ),
        ),
      ),
    );
  }
}

class CAProfileUMKM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
        color: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/dummy_avatar.jpg",
          ),
          radius: 50,
        ));
  }
}

class ProfileTextUMKM extends StatefulWidget {
  @override
  _ProfileTextUMKMState createState() => _ProfileTextUMKMState();
}

class _ProfileTextUMKMState extends State<ProfileTextUMKM> {
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

class ProfileWidgetUMKM1 extends StatefulWidget {
  @override
  _ProfileWidgetUMKM1State createState() => _ProfileWidgetUMKM1State();
}

class _ProfileWidgetUMKM1State extends State<ProfileWidgetUMKM1> {
  String namaLengkap;
  String email;
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
        email = userData.email;
      }).catchError((e) {
        print(e);
      });
    print(namaLengkap);
  }
}

class ProfileWidgetUMKM2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 80,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return PusatBantuan();
                      },
                    ),
                  );
                },
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/Konsumen/pusat_bantuan.svg"),
                    Text("Pusat Bantuan")
                  ],
                )),
          ),
          SizedBox(
            height: 80,
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Pengaturan_UMKM();
                  }));
                },
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/Konsumen/pengaturan1.svg"),
                    Text("Pengaturan Akun")
                  ],
                )),
          ),
          SizedBox(
            height: 80,
            child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Hubungi_Bits();
                  }));
                },
                child: Column(
                  children: <Widget>[
                    SvgPicture.asset("assets/icons/Konsumen/Hubungi_bits.svg"),
                    Text("Hubungi Bits")
                  ],
                )),
          )
        ],
      ),
    );
  }
}
