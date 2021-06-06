import 'dart:ffi';

import 'package:flutter/foundation.dart';

class Produk {
  final String produkid;
  final String namaProduk;
  final String harga;
  final String deskripsi;
  final String lokasi;
  final String rating;
  final String gambar;
  final String kategori;

  Produk({
    this.produkid,
    this.namaProduk,
    this.harga,
    this.deskripsi,
    this.lokasi,
    this.rating,
    this.gambar,
    this.kategori,
  });

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
      produkid: json['produkid'],
      namaProduk: json['namaproduk'],
      harga: json['harga'],
      deskripsi: json['deskripsi'],
      lokasi: json['lokasi'],
      rating: json['rating'],
      gambar: json['gambar'],
      kategori: json['kategori'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'produkid': produkid,
      'namaproduk': namaProduk,
      'harga': harga,
      'deskripsi': deskripsi,
      'lokasi': lokasi,
      'rating': rating,
      'gambar': gambar,
      'kategori': kategori,
    };
  }
}
