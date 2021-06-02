import 'package:flutter/material.dart';

class TX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 170),
      margin: EdgeInsets.only(left: 10),
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Text(
        "Temukan Produk UMKM Yang Kamu Butuhkan !",
        textAlign: TextAlign.justify,
        maxLines: 2,
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class TXU extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 170),
      margin: EdgeInsets.only(left: 10),
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: Text(
        "Lihat Ulasan Produkmu !",
        textAlign: TextAlign.justify,
        maxLines: 2,
        style: TextStyle(
            color: Colors.green, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
