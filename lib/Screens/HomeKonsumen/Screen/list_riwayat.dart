import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class RiwayatReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130,
        width: double.infinity,
        child: Column(children: <Widget>[
          RiwayatTitle(),
          Expanded(child: ListRiwayat())
        ]));
  }
}

class ListRiwayat extends StatefulWidget {
  @override
  _ListRiwayatState createState() => _ListRiwayatState();
}

class _ListRiwayatState extends State<ListRiwayat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      height: 40,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MenuRiwayat(
              image: "assets/images/Makanan_Ringan.png",
            ),
            MenuRiwayat(
              image: "assets/images/Manisan.png",
            ),
            MenuRiwayat(
              image: "assets/images/Olahan_Aci.png",
            ),
            MenuRiwayat(
              image: "assets/images/Olahan_Kerupuk.png",
            ),
            MenuRiwayat(
              image: "assets/images/Makanan_Ringan.png",
            ),
            MenuRiwayat(
              image: "assets/images/Manisan.png",
            ),
            MenuRiwayat(
              image: "assets/images/Olahan_Aci.png",
            ),
            MenuRiwayat(
              image: "assets/images/Olahan_Kerupuk.png",
            ),
          ],
        ),
      ),
    );
  }
}

class MenuRiwayat extends StatelessWidget {
  MenuRiwayat({this.image});

  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 5),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: Container(
            child: Center(
                child: Image.asset(
              image,
              scale: 1 / 2,
              fit: BoxFit.fill,
            )),
          )),
    );
  }
}

class RiwayatTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10),
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Text("Riwayat Review",
            textAlign: TextAlign.justify,
            maxLines: 2,
            style: TextStyle(color: Colors.black, fontSize: 15)));
  }
}
