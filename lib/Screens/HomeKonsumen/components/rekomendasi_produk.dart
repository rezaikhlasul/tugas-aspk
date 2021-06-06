import 'package:bits/Model/produk.dart';
import 'package:bits/Screens/HomeKonsumen/components/rekomendasi.dart';
import 'package:bits/Screens/HomeKonsumen/components/widget.dart';
import 'package:bits/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class RekomendasiProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final productProvider = Provider.of<ProductProvider>(context);
    return StreamBuilder<List<Produk>>(
        stream: productProvider.products,
        builder: (context, snapshot) {
          return Container(
            child: Column(
              children: [
                RekomendasiTitle(),
                SizedBox(
                  height: size.height * 0.35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return DetailProduk(
                                            nama:
                                                snapshot.data[index].namaProduk,
                                            deskripsi:
                                                snapshot.data[index].deskripsi,
                                            harga:
                                                snapshot.data[index].deskripsi,
                                            lokasi: snapshot.data[index].lokasi,
                                            kategori:
                                                snapshot.data[index].kategori,
                                            gambar: snapshot.data[index].gambar,
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  child: Expanded(
                                    child: Container(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Card(
                                          color: kPrimaryLightColor,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                const BorderRadius.all(
                                              Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Container(
                                            height: 138,
                                            width: 100,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(snapshot
                                                        .data[index].gambar),
                                                    fit: BoxFit.cover)),
                                          ),
                                        )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  width: 150,
                                  child: Text(snapshot.data[index].namaProduk,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        });
  }
}
