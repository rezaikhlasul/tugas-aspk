import 'package:bits/Model/produk.dart';
import 'package:bits/service/firebase_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  final firestoreService = FirestoreService();

  String _produkid;
  String _namaProduk;
  String _harga;
  String _deskripsi;
  String _lokasi;
  String _kategori;
  String _gambar;
  var uuid = Uuid();

  //Getter
  String get namaProduk => _namaProduk;
  Stream<List<Produk>> get products => firestoreService.getProduct();

  //Setters
  set changeNamaProduk(String namaProduk) {
    _namaProduk = namaProduk;
    notifyListeners();
  }

  set changeHarga(String harga) {
    _harga = harga;
    notifyListeners();
  }

  set changeDeskripsi(String deskripsi) {
    _deskripsi = deskripsi;
    notifyListeners();
  }

  set changeLokasi(String lokasi) {
    _lokasi = lokasi;
    notifyListeners();
  }

  set changeKategori(String kategori) {
    _kategori = kategori;
    notifyListeners();
  }

  set changeGambar(String gambar) {
    _gambar = gambar;
    notifyListeners();
  }

  //loadAll
  loadAll(Produk produk) {
    if (produk != null) {
      _namaProduk = produk.namaProduk;
      _harga = produk.harga;
      _deskripsi = produk.deskripsi;
      _lokasi = produk.lokasi;
      _kategori = produk.kategori;
      _gambar = produk.gambar;
      _produkid = produk.produkid;
    } else {
      _namaProduk = null;
      _harga = null;
      _deskripsi = null;
      _lokasi = null;
      _kategori = null;
      _gambar = null;
      _produkid = null;
    }
  }

  saveProduct() {
    if (_produkid == null) {
      var newProduct = Produk(
          namaProduk: _namaProduk,
          harga: _harga,
          deskripsi: _deskripsi,
          lokasi: _lokasi,
          kategori: _kategori,
          gambar: _gambar,
          produkid: uuid.v1());
      firestoreService.setProduct(newProduct);
    } else {
      var updateProduct = Produk(
          namaProduk: _namaProduk,
          harga: _harga,
          deskripsi: _deskripsi,
          lokasi: _lokasi,
          kategori: _kategori,
          gambar: _gambar,
          produkid: _produkid);
      firestoreService.setProduct(updateProduct);
    }
  }
}
