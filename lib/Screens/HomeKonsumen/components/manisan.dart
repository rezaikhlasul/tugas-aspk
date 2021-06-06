import 'package:bits/Screens/HomeKonsumen/components/searchbar.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class SBManisan extends StatefulWidget {
  @override
  _SBManisanState createState() => _SBManisanState();
}

class _SBManisanState extends State<SBManisan> {
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
            Expanded(child: ListKategoriManisan())
          ],
        ),
      ),
    );
  }
}

class ListKategoriManisan extends StatefulWidget {
  @override
  _ListKategoriManisanState createState() => _ListKategoriManisanState();
}

class _ListKategoriManisanState extends State<ListKategoriManisan> {
  List<Container> daftarListProduk = new List();

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
              Hero(
                tag: ['nama'],
                child: Material(
                  child: SizedBox(
                    width: 150,
                    height: 200,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailProdukManisan(
                            gambar: produknya['gambar'],
                            nama: produknya['nama'],
                            kategori: produknya['kategori'],
                            rating: produknya['rating'],
                            deskripsi: produknya['deskripsi'],
                            harga: produknya['harga'],
                            lokasi: produknya['lokasi'],
                          );
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(gambar), fit: BoxFit.cover),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
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
        children: daftarListProduk,
      ),
    );
  }
}

class DetailProdukManisan extends StatelessWidget {
  DetailProdukManisan(
      {this.gambar,
      this.nama,
      this.kategori,
      this.rating,
      this.deskripsi,
      this.harga,
      this.lokasi});
  final String gambar, nama, kategori, rating, deskripsi, harga, lokasi;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(gambar), fit: BoxFit.fitHeight),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            Container(
              child: Text(
                nama,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(kategori,
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ),
            Container(
              child: Text(rating,
                  style: TextStyle(fontSize: 15, color: Colors.red)),
            )
          ],
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 30),
              width: size.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            "Deskripsi Produk",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          )),
                          Container(
                              child: Text(deskripsi,
                                  maxLines: null,
                                  style: TextStyle(color: Colors.white))),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            "Harga",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          )),
                          Container(
                              child: Text(
                            harga,
                            style: TextStyle(color: Colors.white),
                          )),
                        ]),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            child: Text(
                          "Lokasi",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                        Container(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  lokasi,
                                  style: TextStyle(color: Colors.white),
                                ))),
                      ]),
                ],
              ),
            ),
          ),
        ))
      ]),
    );
  }
}
