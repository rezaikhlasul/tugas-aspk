import 'package:bits/Screens/HomeKonsumen/Screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              CAProfile(),
              PengaturanText(),
              PengaturanWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class PengaturanText extends StatelessWidget {
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

class PengaturanWidget extends StatelessWidget {
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
                    child: Text("as*****gmail.com",
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
                    child: Text("Perempuan",
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
                                  "assets/icons/Konsumen/keluar.svg"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                "Keluar",
                                style:
                                    TextStyle(fontSize: 15, color: Colors.red),
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
