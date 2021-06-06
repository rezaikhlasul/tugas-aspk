class UserModel {
  final String uid;
  final String namaLengkap;

  UserModel({this.uid, this.namaLengkap});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(namaLengkap: json['namaLengkap']);
  }

  Map<String, dynamic> toMap() {
    return {
      'namaLengkap': namaLengkap,
    };
  }
}
