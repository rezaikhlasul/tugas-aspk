import 'package:flutter/material.dart';

class ContainerTukarBarang extends StatelessWidget {
  final String namaproduk, assets, jlhKoin, alamat;
  final Function ontap;

  const ContainerTukarBarang(
      {Key key,
      this.alamat,
      this.namaproduk,
      this.assets,
      this.jlhKoin,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(3, 3))
          ],
        ),
        height: 122,
        width: 316,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(assets))),
              margin: EdgeInsets.fromLTRB(11, 0, 11, 0),
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 11),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          namaproduk,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text(alamat),
                        Row(
                          children: [
                            Icon(Icons.monetization_on_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(jlhKoin),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
