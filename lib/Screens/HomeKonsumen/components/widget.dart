import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:bits/Screens/HomeKonsumen/homekonsumen_screen.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class SBrekomendasi extends StatefulWidget {
  @override
  _SBrekomendasiState createState() => _SBrekomendasiState();
}

class _SBrekomendasiState extends State<SBrekomendasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekomendasi"),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            SBHomeKonsumen(),
            Expanded(child: ListProdukRekomendasi())
          ],
        ),
      ),
    );
  }
}

class ListProdukRekomendasi extends StatefulWidget {
  @override
  _ListProdukRekomendasiState createState() => _ListProdukRekomendasiState();
}

class _ListProdukRekomendasiState extends State<ListProdukRekomendasi> {
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
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 250,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailProduk();
                    }));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(gambar), fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
      child: GridView.count(
        crossAxisCount: 1,
        children: daftarListProduk,
      ),
    );
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
