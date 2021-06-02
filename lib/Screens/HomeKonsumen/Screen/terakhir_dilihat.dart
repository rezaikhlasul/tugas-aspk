import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Terakhir_Dilihat extends StatefulWidget {
  @override
  _Terakhir_DilihatState createState() => _Terakhir_DilihatState();
}

// ignore: camel_case_types
class _Terakhir_DilihatState extends State<Terakhir_Dilihat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Terakhir Dilihat"),
        ),
        body: Container(height: double.infinity, child: ListTerakhirDilihat()));
  }
}

class ListTerakhirDilihat extends StatefulWidget {
  @override
  _ListTerakhirDilihatState createState() => _ListTerakhirDilihatState();
}

class _ListTerakhirDilihatState extends State<ListTerakhirDilihat> {
  List<Container> daftarListDilihat = new List();

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
      daftarListDilihat.add(Container(
        padding: EdgeInsets.all(10),
        child: Card(
          color: kPrimaryLightColor,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 150,
                height: 200,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailProdukDilihat();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gambar), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
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
    return Container(
      child: ListView(
        children: daftarListDilihat,
      ),
    );
  }
}

class DetailProdukDilihat extends StatelessWidget {
  DetailProdukDilihat({this.nama, this.gambar});
  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 240,
            child: Image.asset(gambar),
          )
        ],
      ),
    );
  }
}
