import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/material/icons.dart';

class CAHomeKonsumen extends StatefulWidget {
  @override
  _CAHomeKonsumenState createState() => _CAHomeKonsumenState();
}

class _CAHomeKonsumenState extends State<CAHomeKonsumen> {
  String namaLengkap;

  String get log => null;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _fetch(),
      builder: (context, snapshot) {
        return Container(
            child: Stack(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
                color: Colors.white,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/dummy_avatar.jpg",
                  ),
                  radius: 50,
                ),
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Halo, " + namaLengkap,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.monetization_on),
                          Text("2050 koin"),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            alignment: Alignment.topRight,
            child: Icon(Icons.notifications_none),
          )
        ]));
      },
    );
  }

  _fetch() async {
    final userData = await FirebaseAuth.instance.currentUser;
    if (userData != null)
      await FirebaseFirestore.instance
          .collection('user')
          .doc(userData.uid)
          .get()
          .then((ds) {
        namaLengkap = ds.data()['namaLengkap'];
      }).catchError((e) {
        print(e);
      });
    print(namaLengkap);
  }
}
