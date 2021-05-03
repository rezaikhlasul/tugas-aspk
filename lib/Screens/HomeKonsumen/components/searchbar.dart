import 'package:flutter/material.dart';

class SBHomeKonsumen extends StatefulWidget {
  @override
  _SBHomeKonsumenState createState() => _SBHomeKonsumenState();
}

class _SBHomeKonsumenState extends State<SBHomeKonsumen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.lightGreen[100],
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Masukkan nama produk atau lokasi",
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 12),
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 20,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
