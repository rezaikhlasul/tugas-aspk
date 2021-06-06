import 'package:accordion/accordion.dart';
import 'package:bits/Screens/HomeKonsumen/components/searchbar_pusatbantuan.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class PusatBantuan extends StatelessWidget {
  const PusatBantuan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Pusat Bantuan",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: <Widget>[
            SearchBarPusatBantuan(),
            Expanded(
              child: Container(
                width: size.width,
                child: Accordion(
                  contentBackgroundColor: kPrimaryLightColor,
                  headerBorderRadius: 0,
                  maxOpenSections: 1,
                  headerTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                  rightIcon: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Colors.white,
                  ),
                  children: [
                    AccordionSection(
                      isOpen: true,
                      headerText: 'Apa perbedaan role konsumen dan UMKM ?',
                      content: Text(
                          'Konsumen memiliki fitur untuk mereview dan mencari produk UMKM. Sementara itu, pada role UMKM terdapat fitur memasukkan produk yang akan di review dan melihat  datahasil review yang telah diolah oleh aplikasi. '),
                    ),
                    AccordionSection(
                        isOpen: true,
                        headerText: 'Bagaimana Mengunduh data hasil review ?',
                        content: Text(
                            "Pilih produk yang terdaftar pada akun UMKM. Klik tombol downlaod")),
                    AccordionSection(
                        isOpen: true,
                        headerText: 'Bagaimana cara melakukan review Produk ?',
                        content: Text(
                            "Scan QRCode pada kemasan UMKM mitra, kemudian kamu akan diarahkan ke halaman screen untuk melakukan review terhadap produk yang kamu scan tadi. Review yang kamu berikan akan membantu UMKM terus memperbaiki kualitas produknya.")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
