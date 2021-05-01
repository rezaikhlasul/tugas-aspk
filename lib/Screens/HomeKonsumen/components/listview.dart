import 'package:flutter/material.dart';

class ListViewHomeKonsumen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Text(
          "Kategori",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 20),
        ),
      ],
    );
  }
}

class ListViewHomeKonsumen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network(null, fit: BoxFit.fill),
                  ListTile(
                    title: Text("KeripikPisang"),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network(null, fit: BoxFit.fill),
                  ListTile(
                    title: Text("ipikPis"),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network(null, fit: BoxFit.fill),
                  ListTile(
                    title: Text("Keripik"),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network(null, fit: BoxFit.fill),
                  ListTile(
                    title: Text("Pisang"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
