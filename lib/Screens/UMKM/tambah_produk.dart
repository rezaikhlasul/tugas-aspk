import 'package:bits/Model/produk.dart';
import 'package:bits/Screens/UMKM/Download_barcode.dart';
import 'package:bits/components/buttons/auth/button_auth.dart';
import 'package:bits/constants.dart';
import 'package:bits/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TambahProduk extends StatefulWidget {
  final Produk produk;

  TambahProduk({this.produk});

  @override
  _TambahProdukState createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  final produkController = TextEditingController();

  @override
  void dispose() {
    produkController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    final produkProvider = Provider.of<ProductProvider>(context, listen: false);
    produkProvider.loadAll(null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text("Tambah Produk"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25, 35, 25, 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "Upload Photo Product",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text("format gambar .jpg .jpeg .png"),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(5),
                                    backgroundColor: kPrimaryColor,
                                  ),
                                  child: Text(
                                    "Tambah Photo",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 5, 25, 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "Informasi Product",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              decoration:
                                  InputDecoration(labelText: "Nama Produk"),
                              onChanged: (String namaProduk) =>
                                  productProvider.changeNamaProduk = namaProduk,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              decoration:
                                  InputDecoration(labelText: "Kategori"),
                              onChanged: (String kategori) =>
                                  productProvider.changeKategori = kategori,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              decoration: InputDecoration(labelText: "Gambar"),
                              onChanged: (String gambar) =>
                                  productProvider.changeGambar = gambar,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 5, 25, 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(3, 3))
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                width: size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: <Widget>[
                          Text(
                            "Detail Produk",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            height: size.height * 0.3,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              decoration:
                                  InputDecoration(labelText: "Deskripsi"),
                              onChanged: (String deskripsi) =>
                                  productProvider.changeDeskripsi = deskripsi,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(labelText: "Harga"),
                              onChanged: (String harga) =>
                                  productProvider.changeHarga = harga,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 20),
                            width: size.width * 0.7,
                            decoration: BoxDecoration(
                                color: kPrimaryLightColor,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              decoration: InputDecoration(labelText: "Lokasi"),
                              onChanged: (String lokasi) =>
                                  productProvider.changeLokasi = lokasi,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width * 0.7,
                height: 45,
                margin: EdgeInsets.only(bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {
                        productProvider.saveProduct();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DownloadCode();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Simpan",
                        overflow: TextOverflow.visible,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
