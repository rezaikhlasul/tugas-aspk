import 'package:bits/Screens/HomeKonsumen/Screen/list_riwayat.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/pengaturan_akun.dart';
import 'package:bits/Screens/HomeKonsumen/components/bottomnavigationbar.dart';
import 'package:bits/Screens/HomeKonsumen/homekonsumen_screen.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreenKonsumen extends StatefulWidget {
  @override
  _ProfileScreenKonsumenState createState() => _ProfileScreenKonsumenState();
}

class _ProfileScreenKonsumenState extends State<ProfileScreenKonsumen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BNBHomeKonsumen();
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
              ProfileText(),
              RiwayatReview(),
              ProfileWidget1(),
              ProfileWidget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class CAProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
        color: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/circle_avatar.png",
          ),
          radius: 50,
        ));
  }
}

class ProfileText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Aspk Kelompok 1",
                      style: TextStyle(fontSize: 15, color: Colors.black)))),
          Center(
            child: Container(
              width: 170,
              height: 40,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text("Member Silver",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    IconButton(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.only(left: 10, bottom: 20),
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () {})
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileText1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Aspk Kelompok 1",
                      style: TextStyle(fontSize: 15, color: Colors.black)))),
        ],
      ),
    );
  }
}

class ProfileWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                                  "assets/icons/Konsumen/loyalty.svg"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Loyalty",
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
                    child: Text("Member Silver",
                        style: TextStyle(fontSize: 15, color: Colors.black))),
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
                  height: 50,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: SvgPicture.asset(
                                  "assets/icons/Konsumen/terakhir_dilihat.svg"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Terakhir Dilihat",
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
                  height: 50,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: SvgPicture.asset(
                                  "assets/icons/Konsumen/koin.svg"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Koin",
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
                  height: 50,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                        decoration: BoxDecoration(color: Colors.white),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: SvgPicture.asset(
                                  "assets/icons/Konsumen/undang_teman.svg"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Undang Teman",
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
  }
}

class ProfileWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 70,
            child: InkWell(
                child: Column(
              children: <Widget>[
                SvgPicture.asset("assets/icons/Konsumen/pusat_bantuan.svg"),
                Text("Pusat Bantuan")
              ],
            )),
          ),
          SizedBox(
            height: 70,
            child: InkWell(
                child: Column(
              children: <Widget>[
                SvgPicture.asset("assets/icons/Konsumen/pengaturan1.svg"),
                Text("Pengaturan Akun")
              ],
            )),
          ),
          SizedBox(
            height: 70,
            child: InkWell(
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
