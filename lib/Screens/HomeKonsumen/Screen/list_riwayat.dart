import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class RiwayatReviewKonsumen extends StatelessWidget {
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
              image: "assets/images/Konsumen1.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen2.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen1.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen2.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen1.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen2.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen1.jpg",
            ),
            MenuRiwayat(
              image: "assets/images/Konsumen2.jpg",
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
        child: SizedBox(
          height: 30,
          width: 100,
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
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
