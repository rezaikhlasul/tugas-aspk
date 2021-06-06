import 'package:bits/Screens/HomeKonsumen/components/manisan.dart';
import 'package:bits/constants.dart';
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
              nama: "Makanan Ringan",
              image: "assets/images/makanan_ringan.png",
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SBManisan();
                }));
              },
              child: MenuKategori(
                nama: "Manisan",
                image: "assets/images/manisan.png",
              ),
            ),
            MenuKategori(
              nama: "Olahan Aci",
              image: "assets/images/olahan_aci.png",
            ),
            MenuKategori(
              nama: "Olahan Kerupuk",
              image: "assets/images/Olahan_Kerupuk.png",
            ),
            MenuKategori(
              nama: "Makanan Ringan",
              image: "assets/images/makanan_ringan.png",
            ),
            MenuKategori(
              nama: "Manisan",
              image: "assets/images/manisan.png",
            ),
            MenuKategori(
              nama: "Olahan Aci",
              image: "assets/images/olahan_aci.png",
            ),
            MenuKategori(
              nama: "Olahan Kerupuk",
              image: "assets/images/Olahan_Kerupuk.png",
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MenuKategori extends StatelessWidget {
  MenuKategori({this.image, this.nama});

  String image;
  String nama;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, bottom: 5),
            child: Card(
                color: kPrimaryLightColor,
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
                    fit: BoxFit.cover,
                  )),
                )),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: size.width * 0.25,
            child: Text(nama,
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
