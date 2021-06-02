import 'dart:ui';

import 'package:bits/Screens/UMKM/detail_hasil.dart';
import 'package:bits/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'components/container_tukar_barang.dart';

class KoinDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "KOIN",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Koin yang kamu kumpulkan sebanyak:",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.monetization_on,
                                            size: 35,
                                            color: Colors.amber,
                                          ),
                                          Text(
                                            "2050",
                                            style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.amber),
                                          ),
                                          Text(
                                            "Koin",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.amber),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(top: 10),
                          width: size.width * 0.8,
                          child: Text(
                            "Terus Lakukan Review Produk Agar Koinmu Terus Bertambah!",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: TukarBarang(),
            ),
          ],
        ),
      ),
    );
  }
}

class TukarBarang extends StatefulWidget {
  @override
  _TukarBarangState createState() => _TukarBarangState();
}

class _TukarBarangState extends State<TukarBarang> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Tukarkan Poinmu",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
              child: ListView(
                children: <Widget>[
                  ContainerTukarBarang(
                    assets: "assets/images/kerupukslondok.png",
                    ontap: () {},
                    namaproduk: "Kerupuk Solondo",
                    alamat: "Jalan Kemuning No.54",
                    jlhKoin: "50 Koin",
                  ),
                  ContainerTukarBarang(
                    assets: "assets/images/baso_aci.png",
                    ontap: () {},
                    namaproduk: "Baso Aci jamin enak",
                    alamat: "Jalan Makanan No.51",
                    jlhKoin: "150 Koin",
                  ),
                  ContainerTukarBarang(
                    assets: "assets/images/kerupukslondok.png",
                    ontap: () {},
                    namaproduk: "Kerupuk Solondo",
                    alamat: "Jalan Kemuning No.54",
                    jlhKoin: "50 Koin",
                  ),
                  ContainerTukarBarang(
                    assets: "assets/images/kerupukslondok.png",
                    ontap: () {},
                    namaproduk: "Kerupuk Solondo",
                    alamat: "Jalan Kemuning No.54",
                    jlhKoin: "50 Koin",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
