import 'package:bits/Screens/KonsumenReza/koin_screen.dart';
import 'package:bits/Screens/UMKM/detail_hasil.dart';
import 'package:bits/Screens/UMKM/tambah_produk.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class HomeUMKM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryLightColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: size.width * 0.8,
            height: 45,
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TambahProduk();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Tambah Produk",
                    overflow: TextOverflow.visible,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ),
          Container(
            width: size.width * 0.8,
            height: 45,
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailHasilProduk();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Detail Hasil",
                    overflow: TextOverflow.visible,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ),
          Container(
            width: size.width * 0.8,
            height: 45,
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return KoinDetail();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Cek Koin",
                    overflow: TextOverflow.visible,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
