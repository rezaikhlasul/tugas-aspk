import 'package:bits/Screens/UMKM/bnb.dart';
import 'package:bits/Screens/UMKM/home_umkm.dart';
import 'package:bits/components/buttons/button_primary.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DownloadCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text(
                      "SELAMAT PRODUKMU TELAH TERDAFTAR",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                          fontSize: 24),
                    ),
                    Text("Unduh Barcode untuk pemberian ulasan pada produk")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: SvgPicture.asset(
                  "assets/icons/qr-code.svg",
                  height: 250,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.8,
                    child: RoundedButtonPrimary(
                      text: "Download Barcode",
                      color: kPrimaryColor,
                      press: () {},
                    ),
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: RoundedButtonPrimary(
                      press: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return BNBUMKM();
                            },
                          ),
                        );
                      },
                      text: "Beranda",
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
