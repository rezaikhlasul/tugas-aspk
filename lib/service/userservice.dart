import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final String uid;
  UserService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('user');

  Future<void> updateUserData(String namaLengkap, String role, int poin) async {
    return await userCollection.doc(uid).set({
      'namaLengkap': namaLengkap,
      'role': role,
      'poin': poin,
    });
  }
}
