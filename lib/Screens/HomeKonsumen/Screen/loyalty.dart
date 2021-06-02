import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Loyalty extends StatelessWidget {
  const Loyalty({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Loyalty",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[C1()],
          ),
        ),
      ),
    );
  }
}

class C1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 370,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Loyaltycard3.png"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(
                        left: 60,
                        top: 30,
                      ),
                      child: Text(
                        "Silver",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        left: 60,
                        top: 20,
                      ),
                      child: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        left: 60,
                      ),
                      child: Text(
                        "aspkkelompok_1",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Keuntungan Member Silver",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: kPrimaryColor, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: size.height * 0.4,
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: size.height * 0.14,
                        width: size.width * 0.275,
                        child: SvgPicture.asset(
                          "assets/icons/Konsumen/fa_solid_coins.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Mendapatkan koin 2x lipat",
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: size.width * 0.6,
                    child: Divider(
                      color: kPrimaryColor,
                      thickness: 2,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        height: size.height * 0.14,
                        width: size.width * 0.275,
                        child: SvgPicture.asset(
                          "assets/icons/Konsumen/bx_bxs_discount.svg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Mendapatkan diskon 5%",
                          style: TextStyle(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Keuntungan Member Lainnya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: kPrimaryColor, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: size.height * 0.35,
              child: Column(
                children: <Widget>[
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.05,
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Member Gold",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.remove),
                                  Text(
                                    "Mendapatkan koin 2x lipat",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.remove),
                                  Text(
                                    "Mendapatkan diskon 7%",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.05,
                    color: Colors.grey,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Member Platinum",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.remove),
                                  Text(
                                    "Mendapatkan koin 3x lipat",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(Icons.remove),
                                  Text(
                                    "Mendapatkan diskon 7%",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Syarat & Ketentuan Member Silver",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: kPrimaryColor, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: size.height * 0.17,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Melakukan 5x review produk",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Mengundang 2(dua) teman",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              Container(
                                width: size.width * 0.66,
                                child: Text(
                                  "Telah melakukan pendaftaran selama 2 minggu",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Syarat & Ketentuan Member Lainnya",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: kPrimaryColor, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: size.height * 0.45,
              child: Column(
                children: <Widget>[
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.05,
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Member Gold",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Melakukan 5x review produk",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Mengundang 2(dua) teman",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              Container(
                                width: size.width * 0.66,
                                child: Text(
                                  "Telah melakukan pendaftaran selama 2 minggu",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 1,
                    height: size.height * 0.05,
                    color: Colors.grey,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Member Platinum",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Melakukan 5x review produk",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.remove),
                              Text(
                                "Mengundang 2(dua) teman",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              Container(
                                width: size.width * 0.66,
                                child: Text(
                                  "Telah melakukan pendaftaran selama 2 minggu",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            )
          ],
        ),
      ],
    );
  }
}
