import 'package:bits/Screens/HomeKonsumen/components/widget.dart';
import 'package:bits/constants.dart';

import 'package:flutter/material.dart';

class Rekomendasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 220,
        width: double.infinity,
        child: Column(children: <Widget>[
          RekomendasiTitle(),
          Expanded(child: ListRekomendasi())
        ]));
  }
}

class ListRekomendasi extends StatefulWidget {
  @override
  _ListRekomendasiState createState() => _ListRekomendasiState();
}

class _ListRekomendasiState extends State<ListRekomendasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        MenuRekomendasi(
          image: "assets/images/Konsumen1.jpg",
          teks: "Makanan Ringan",
        ),
        MenuRekomendasi(
          image: "assets/images/Konsumen2.jpg",
          teks: "Manisan",
        ),
        MenuRekomendasi(
          image: "assets/images/Konsumen1.jpg",
          teks: "Olahan Aci",
        ),
        MenuRekomendasi(
          image: "assets/images/Konsumen2.jpg",
          teks: "Olahan Krupuk",
        ),
        MenuRekomendasi(
          image: "assets/images/Konsumen1.jpg",
          teks: "Makanan Ringan",
        ),
        MenuRekomendasi(
          image: "assets/images/Konsumen2.jpg",
          teks: "Manisan",
        ),
        MenuRekomendasi(
          image: "assets/images/circle_avatar.png",
          teks: "Olahan Aci",
        ),
        MenuRekomendasi(
          image: "assets/images/circle_avatar.png",
          teks: "Olahan Krupuk",
        ),
      ]),
    );
  }
}

class MenuRekomendasi extends StatelessWidget {
  MenuRekomendasi({this.image, this.teks});

  String image;
  String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 10),
              child: Card(
                color: kPrimaryLightColor,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Container(
                  height: 138,
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
              )),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: 150,
            child: Text(teks,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400)),
          ),
        ],
      ),
    );
  }
}

class RekomendasiTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Rekomendasi",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextButton(
              child: Text(
                "Lihat Semua",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                    fontWeight: FontWeight.w300),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SBrekomendasi();
                }));
              }),
        ],
      ),
    );
  }
}
