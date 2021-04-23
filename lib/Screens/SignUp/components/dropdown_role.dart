import 'package:flutter/material.dart';

class DropdownRole extends StatefulWidget {
  @override
  _DropdownRoleState createState() => _DropdownRoleState();
}

class _DropdownRoleState extends State<DropdownRole> {
  String roleGroup = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Radio(
              value: "UMKM",
              groupValue: roleGroup,
              onChanged: (val) {
                roleGroup = val;
                setState(() {});
              }),
          Text("UMKM"),
          SizedBox(
            width: size.width * 0.1,
          ),
          Radio(
              value: "Konsumen",
              groupValue: roleGroup,
              onChanged: (val) {
                roleGroup = val;
                setState(() {});
              }),
          Text("Konsumen"),
        ],
      ),
    );
  }
}
