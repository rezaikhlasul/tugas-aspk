import 'package:flutter/material.dart';

class TX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: size.width * 0.7,
      color: Colors.white,
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
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: size.height * 0.05,
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
