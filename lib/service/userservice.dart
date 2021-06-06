import 'package:bits/Model/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  FirebaseFirestore _db = FirebaseFirestore.instance;
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

  //get
  Stream<List<UserModel>> getUser() {
    return _db.collection('user').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => UserModel.fromJson(doc.data())));
  }

  //upsert
  Future<void> setUsers(UserModel user) {
    var option = SetOptions(merge: true);
    return _db.collection('user').doc(user.uid).set(user.toMap(), option);
  }
}
