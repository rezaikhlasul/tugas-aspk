import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchBarPusatBantuan extends StatefulWidget {
  @override
  _SearchBarPusatBantuanState createState() => _SearchBarPusatBantuanState();
}

class _SearchBarPusatBantuanState extends State<SearchBarPusatBantuan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
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
                    hintText: "Masukkan pertanyaan anda",
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
