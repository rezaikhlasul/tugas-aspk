import 'package:accordion/accordion.dart';
import 'package:bits/Screens/HomeKonsumen/Screen/poin_bertambah.dart';
import 'package:bits/constants.dart';
import 'package:flutter/material.dart';

class PertanyaanSurvey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return PoinBertambah();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "Simpan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ))),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 125,
                        width: 125,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/Seblak_jank.jpg"))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Seblak Jank",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 7,
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 25,
                    ),
                    width: size.width,
                    child: Accordion(
                      headerBackgroundColor: kPrimaryHardColor,
                      contentBorderRadius: 10,
                      contentBackgroundColor: kPrimaryLightColor,
                      headerBorderRadius: 0,
                      maxOpenSections: 4,
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
                            headerText: 'ERGONOMI',
                            content: Column(
                              children: [
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini memiliki sifat mudah dipegang dan dibawa kemanapun",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini memiliki sifat mudah disimpan",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini memiliki sifat mudah dibuka dan ditutup kembali",
                                )
                              ],
                            )),
                        AccordionSection(
                            isOpen: true,
                            headerText: 'KOMUNIKASI',
                            content: Column(
                              children: [
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini menampilkan informasi perizinan (Label halal dan BPOM) dengan rinci",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini menampilkan informasi bahan baku dan nilai gizi dengan rinci",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini menampilkan informasi tanggal kadaluarsa",
                                )
                              ],
                            )),
                        AccordionSection(
                            isOpen: true,
                            headerText: 'ESTETIKA',
                            content: Column(
                              children: [
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini menampilkan labelling yang menarik",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini memiliki desain yang sesuai dengan karakter dari produk",
                                ),
                                PertanyaanJawaban(
                                  pertanyaan:
                                      "Kemasan ini memiliki desain yang sesuai dedngan target konsumennya",
                                )
                              ],
                            )),
                        AccordionSection(
                          isOpen: true,
                          headerText: "KEAMANAN PANGAN",
                          content: Column(
                            children: [
                              PertanyaanJawaban(
                                pertanyaan:
                                    "Kemasan ini mampu melindungi produk dari potensi kerusakan dan kontaminasi (melindungi dari paparan cahaya matahari, oksigen, dan uap air",
                              ),
                              PertanyaanJawaban(
                                pertanyaan:
                                    "Kemasan ini akan mampu menjaga sifat dan karakteristik produk yang disimpan",
                              ),
                              PertanyaanJawaban(
                                pertanyaan:
                                    "Kemasan ini memiliki seal penanganan yang baik",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class PertanyaanJawaban extends StatefulWidget {
  final String pertanyaan;
  const PertanyaanJawaban({
    Key key,
    this.pertanyaan,
  }) : super(key: key);

  @override
  _PertanyaanJawabanState createState() => _PertanyaanJawabanState();
}

class _PertanyaanJawabanState extends State<PertanyaanJawaban> {
  int value = null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(width: 2)),
      width: size.width,
      child: Column(
        children: <Widget>[
          Text(widget.pertanyaan),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: <Widget>[
                    Text("1"),
                    Radio(
                        value: 1,
                        groupValue: value,
                        onChanged: (val) {
                          value = val;
                          setState(() {});
                        }),
                    Radio(
                        value: 2,
                        groupValue: value,
                        onChanged: (val) {
                          value = val;
                          setState(() {});
                        }),
                    Radio(
                        value: 3,
                        groupValue: value,
                        onChanged: (val) {
                          value = val;
                          setState(() {});
                        }),
                    Radio(
                        value: 4,
                        groupValue: value,
                        onChanged: (val) {
                          value = val;
                          setState(() {});
                        }),
                    Radio(
                        value: 5,
                        groupValue: value,
                        onChanged: (val) {
                          value = val;
                          setState(() {});
                        }),
                    Text("5")
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
