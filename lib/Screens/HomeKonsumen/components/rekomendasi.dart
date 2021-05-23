import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:bits/Screens/HomeKonsumen/homekonsumen_screen.dart';
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
          image: "assets/images/circle_avatar.png",
          teks: "Makanan Ringan",
        ),
        MenuRekomendasi(
          image: "assets/images/circle_avatar.png",
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
        MenuRekomendasi(
          image: "assets/images/circle_avatar.png",
          teks: "Makanan Ringan",
        ),
        MenuRekomendasi(
          image: "assets/images/circle_avatar.png",
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
                color: Colors.lightGreen[50],
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Container(
                  height: 138,
                  width: 100,
                  child: Center(
                      child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  )),
                )),
          ),
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[SBHomeKonsumen(), ListProdukRekomendasi()],
          ),
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
  List<Container> daftarListProduk = List();

  var produk = [
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
        child: Card(
          child: Row(
            children: [
              Image.asset(
                "img/$gambar",
                fit: BoxFit.cover,
              ),
              Column(
                children: <Widget>[
                  Text(
                    produknya["nama"],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    produknya["rating"],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    produknya["kategori"],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    produknya["harga"],
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    produknya["lokasi"],
                    style: TextStyle(fontSize: 15),
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
        children: daftarListProduk,
      ),
    );
  }
}
