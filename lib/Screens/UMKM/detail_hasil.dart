import 'package:bits/Screens/UMKM/components/chartbar.dart';
import 'package:bits/components/buttons/button_primary.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

import 'components/linecharts2.dart';

class DetailHasilProduk extends StatelessWidget {
  DetailHasilProduk(
      {this.gambar,
      this.nama,
      this.kategori,
      this.rating,
      this.deskripsi,
      this.harga,
      this.lokasi});
  final String gambar, nama, kategori, rating, deskripsi, harga, lokasi;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text("Detail Hasil"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      height: size.height * 0.3,
                      width: size.width * 0.8,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: AssetImage(gambar)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(3, 3))
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                    ),
                    Text(
                      nama,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(25),
                      width: size.width * 0.8,
                      child: Column(
                        children: [
                          Container(
                            width: size.width,
                            child: Text(
                              "Deskripsi Product",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: size.width * 0.8,
                            child: Text(
                              deskripsi,
                              maxLines: null,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: size.width,
                            child: Column(
                              children: [
                                Container(
                                  width: size.width,
                                  child: Text(
                                    "Harga",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.8,
                                  child: Text(harga),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: size.width,
                            child: Column(
                              children: [
                                Container(
                                  width: size.width,
                                  child: Text(
                                    "Lokasi",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.8,
                                  child: Text(lokasi),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: size.width,
                            child: Column(
                              children: [
                                Container(
                                  width: size.width,
                                  child: Text(
                                    "Ulasan",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Column(
                              children: [
                                LineChartSample2(),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                      "Rata-rata penilaian keseluruhan konsumen terhadap produk " +
                                          nama),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                BarChartSample3(),
                                Container(
                                  margin: EdgeInsets.only(top: 2),
                                  child: Text(
                                      "Rata-rata penilaian keseluruhan konsumen terhadap katergori parameter kemasan produk " +
                                          nama),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          RoundedButtonPrimary(
                            color: kPrimaryColor,
                            text: "DOWNLOAD",
                            textColor: Colors.white,
                            press: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
