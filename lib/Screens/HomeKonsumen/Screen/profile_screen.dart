import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: [],
      ),
      body: Container(
        child: Column(
          children: <Widget>[CAProfile()],
        ),
      ),
    );
  }
}

class CAProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 30, 20, 10),
        color: Colors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/circle_avatar.png",
          ),
          radius: 50,
        ));
  }
}
