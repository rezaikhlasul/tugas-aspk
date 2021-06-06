import 'package:bits/Screens/UMKM/detail_hasil.dart';
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
      "nama": "Kerupuk Pisang Gerigi",
      "kategori": "Keripik",
      "rating": "4.5",
      "harga": "Rp 65.000",
      "lokasi": "Jalan Kenangan Dia No.2",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/Konsumen2.jpg",
      "nama": "Manisan Buah Niang Niang",
      "rating": "4.5",
      "kategori": "Manisan",
      "harga": "Rp 120.000",
      "lokasi": "Jalan Kenangan Kita NO.1",
      "deskripsi":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc varius eleifend volutpat. Aliquam nec consequat enim. Nulla ultrices tincidunt mi quis fermentum. Etiam luctus, diam sit amet convallis dictum, ligula lorem facilisis odio, eget aliquam felis ante eu nulla. Donec sagittis sem dui, nec pulvinar magna aliquam sit amet. Maecenas. "
    },
    {
      "gambar": "assets/images/baso_aci.png",
      "nama": "Basi Aci Pasti Enak",
      "rating": "4.5",
      "kategori": "Olahan Aci",
      "harga": "Rp 20.000",
      "lokasi": "Jalan Kenangan Kita NO.99",
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
              SizedBox(
                width: 150,
                height: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailHasilProduk(
                        gambar: produknya['gambar'],
                        nama: produknya['nama'],
                        kategori: produknya['kategori'],
                        deskripsi: produknya['deskripsi'],
                        harga: produknya['harga'],
                        lokasi: produknya['lokasi'],
                      );
                      ;
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
