import 'package:flutter/material.dart';

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.2,
        width: double.infinity,
        child: Column(children: <Widget>[
          KategoriTitle(),
          Expanded(child: ListKategori())
        ]));
  }
}

class ListKategori extends StatefulWidget {
  @override
  _ListKategoriState createState() => _ListKategoriState();
}

class _ListKategoriState extends State<ListKategori> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MenuKategori(
              teks: "Makanan Ringan",
              image: "assets/images/Makanan_Ringan.png",
            ),
            MenuKategori(
              teks: "Manisan",
              image: "assets/images/Manisan.png",
            ),
            MenuKategori(
              teks: "Olahan Aci",
              image: "assets/images/Olahan_Aci.png",
            ),
            MenuKategori(
              teks: "Olahan Kerupuk",
              image: "assets/images/Olahan_Kerupuk.png",
            ),
            MenuKategori(
              teks: "Makanan Ringan",
              image: "assets/images/Makanan_Ringan.png",
            ),
            MenuKategori(
              teks: "Manisan",
              image: "assets/images/Manisan.png",
            ),
            MenuKategori(
              teks: "Olahan Aci",
              image: "assets/images/Olahan_Aci.png",
            ),
            MenuKategori(
              teks: "Olahan Kerupuk",
              image: "assets/images/Olahan_Kerupuk.png",
            ),
          ],
        ),
      ),
    );
  }
}

class MenuKategori extends StatelessWidget {
  MenuKategori({this.image, this.teks});

  String image;
  String teks;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 5),
            child: Card(
                color: Colors.lightGreen[50],
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Center(
                      child: Image.asset(
                    image,
                  )),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: size.width * 0.25,
            child: Text(teks,
                maxLines: 2,
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

class KategoriTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10),
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Text("Kategori",
            textAlign: TextAlign.justify,
            maxLines: 2,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)));
  }
}
