import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class ListProdukUMKM extends StatefulWidget {
  @override
  _ListProdukUMKMState createState() => _ListProdukUMKMState();
}

class _ListProdukUMKMState extends State<ListProdukUMKM> {
  List<Container> daftarListProduk = new List();

  var produk = [
    {
      "gambar": "assets/images/Konsumen1.jpg",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/Konsumen2.jpg",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk"
    },
  ];

  _buatlist() async {
    for (var i = 0; i < produk.length; i++) {
      final produknya = produk[i];
      final String gambar = produknya["gambar"];
      daftarListProduk.add(Container(
        padding: EdgeInsets.all(10),
        child: Card(
          color: kPrimaryLightColor,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailProduk();
                    }));
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 10, bottom: 5, top: 5, right: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gambar), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        produknya["nama"],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        produknya["rating"],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        produknya["kategori"],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        produknya["harga"],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        produknya["lokasi"],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(child: ListView(children: daftarListProduk));
  }
}

class DetailProduk extends StatelessWidget {
  DetailProduk({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(),
      ),
    );
  }
}
