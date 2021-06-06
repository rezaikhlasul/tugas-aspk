import 'package:bits/Model/produk.dart';
import 'package:bits/Screens/HomeKonsumen/components/widget.dart';
import 'package:bits/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class ListProdukLengkap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return StreamBuilder<List<Produk>>(
        stream: productProvider.products,
        builder: (context, snapshot) {
          return Container(
              child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return Container(
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
                                        return DetailProduk(
                                          nama: snapshot.data[index].namaProduk,
                                          deskripsi:
                                              snapshot.data[index].deskripsi,
                                          harga: snapshot.data[index].harga,
                                          lokasi: snapshot.data[index].lokasi,
                                          gambar: snapshot.data[index].gambar,
                                          kategori:
                                              snapshot.data[index].kategori,
                                        );
                                      }));
                                    },
                                    child: Container(
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  snapshot.data[index].gambar),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
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
                                    snapshot.data[index].namaProduk,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "4.5",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    snapshot.data[index].kategori,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "Rp " + snapshot.data[index].harga,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    snapshot.data[index].lokasi,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }));
        });
  }
}
