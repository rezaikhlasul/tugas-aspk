import 'package:bits/Screens/HomeKonsumen/components/widget.dart';
import 'package:bits/constants.dart';

import 'package:flutter/material.dart';

class Rekomendasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.3,
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
  List<Container> daftarListProduk1 = new List();

  var produk = [
    {
      "gambar": "assets/images/Konsumen1.jpg",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/Konsumen2.jpg",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/circle_avatar.png",
      "nama": "Nama Produk",
      "rating": "Rating Produk",
      "kategori": "Kategori Produk",
      "harga": "Harga Produk",
      "lokasi": "Lokasi Produk",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
  ];

  _buatlist1() async {
    for (var i = 0; i < produk.length; i++) {
      final produknya = produk[i];
      final String gambar = produknya["gambar"];
      final String nama = produknya["nama"];
      daftarListProduk1.add(
        Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailProduk(
                          gambar: produknya["gambar"],
                          nama: produknya["nama"],
                          rating: produknya["rating"],
                          kategori: produknya["kategori"],
                          harga: produknya["harga"],
                          lokasi: produknya["lokasi"],
                          deskripsi: produknya["deskripsi"],
                        );
                      },
                    ),
                  );
                },
                child: Container(
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
                                image: AssetImage(gambar), fit: BoxFit.cover)),
                      ),
                    )),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 150,
                child: Text(nama,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _buatlist1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: daftarListProduk1,
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
