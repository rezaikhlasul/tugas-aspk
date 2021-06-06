import 'package:bits/Model/produk.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  //get
  Stream<List<Produk>> getProduct() {
    return _db.collection('products').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => Produk.fromJson(doc.data())).toList());
  }

  //upsert
  Future<void> setProduct(Produk produk) {
    var option = SetOptions(merge: true);
    return _db
        .collection('products')
        .doc(produk.produkid)
        .set(produk.toMap(), option);
  }

  //delete
  Future<void> removeProduct(String produkid) {
    return _db.collection('products').doc(produkid).delete();
  }
}
