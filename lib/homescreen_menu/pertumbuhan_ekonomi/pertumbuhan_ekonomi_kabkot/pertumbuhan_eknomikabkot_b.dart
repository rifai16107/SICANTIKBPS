// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertumbuhanEknomiKabkotB extends StatefulWidget {
  const PertumbuhanEknomiKabkotB({Key? key}) : super(key: key);

  @override
  State<PertumbuhanEknomiKabkotB> createState() =>
      _PertumbuhanEknomiKabkotBState();
}

RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();

class _PertumbuhanEknomiKabkotBState extends State<PertumbuhanEknomiKabkotB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiPertumbuhanEknomikabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab1 =
                  "01. " + isiPertumbuhanEknomikabkot[index = 0].wilayah;
              String kab2 =
                  "02. " + isiPertumbuhanEknomikabkot[index = 1].wilayah;
              String kab3 =
                  "03. " + isiPertumbuhanEknomikabkot[index = 2].wilayah;
              String kab4 =
                  "04. " + isiPertumbuhanEknomikabkot[index = 3].wilayah;
              String kab5 =
                  "05. " + isiPertumbuhanEknomikabkot[index = 4].wilayah;
              String kab6 =
                  "06. " + isiPertumbuhanEknomikabkot[index = 5].wilayah;
              String kab7 =
                  "07. " + isiPertumbuhanEknomikabkot[index = 6].wilayah;
              String kab8 =
                  "08. " + isiPertumbuhanEknomikabkot[index = 7].wilayah;
              String kab9 =
                  "09. " + isiPertumbuhanEknomikabkot[index = 8].wilayah;
              String kab10 =
                  "10. " + isiPertumbuhanEknomikabkot[index = 9].wilayah;
              String kab11 =
                  "11. " + isiPertumbuhanEknomikabkot[index = 10].wilayah;
              String kab12 =
                  "12. " + isiPertumbuhanEknomikabkot[index = 11].wilayah;
              String kab13 =
                  "13. " + isiPertumbuhanEknomikabkot[index = 12].wilayah;
              String kab14 =
                  "14. " + isiPertumbuhanEknomikabkot[index = 13].wilayah;
              String kab15 =
                  "15. " + isiPertumbuhanEknomikabkot[index = 14].wilayah;
              String kab16 =
                  "16. " + isiPertumbuhanEknomikabkot[index = 15].wilayah;
              String kab17 =
                  "17. " + isiPertumbuhanEknomikabkot[index = 16].wilayah;
              String kab18 =
                  "18. " + isiPertumbuhanEknomikabkot[index = 17].wilayah;
              String kab19 =
                  "19. " + isiPertumbuhanEknomikabkot[index = 18].wilayah;
              String kab20 =
                  "20. " + isiPertumbuhanEknomikabkot[index = 19].wilayah;
              String kab21 =
                  "21. " + isiPertumbuhanEknomikabkot[index = 20].wilayah;
              String kab22 =
                  "22. " + isiPertumbuhanEknomikabkot[index = 21].wilayah;
              String kab23 =
                  "23. " + isiPertumbuhanEknomikabkot[index = 22].wilayah;
              String kab24 =
                  "24. " + isiPertumbuhanEknomikabkot[index = 23].wilayah;
              String kab25 =
                  "25. " + isiPertumbuhanEknomikabkot[index = 24].wilayah;
              String kab26 =
                  "26. " + isiPertumbuhanEknomikabkot[index = 25].wilayah;
              String kab27 =
                  "27. " + isiPertumbuhanEknomikabkot[index = 26].wilayah;
              String kab28 =
                  "28. " + isiPertumbuhanEknomikabkot[index = 27].wilayah;
              String kab29 =
                  "29. " + isiPertumbuhanEknomikabkot[index = 28].wilayah;
              String kab30 =
                  "71. " + isiPertumbuhanEknomikabkot[index = 29].wilayah;
              String kab31 =
                  "72. " + isiPertumbuhanEknomikabkot[index = 30].wilayah;
              String kab32 =
                  "73. " + isiPertumbuhanEknomikabkot[index = 31].wilayah;
              String kab33 =
                  "74. " + isiPertumbuhanEknomikabkot[index = 32].wilayah;
              String kab34 =
                  "75. " + isiPertumbuhanEknomikabkot[index = 33].wilayah;
              String kab35 =
                  "76. " + isiPertumbuhanEknomikabkot[index = 34].wilayah;
              String prov =
                  " " + isiPertumbuhanEknomikabkot[index = 35].wilayah;

              double pdrb1 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 0].pdrb_adhk2);
              double pdrb2 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 1].pdrb_adhk2);
              double pdrb3 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 2].pdrb_adhk2);
              double pdrb4 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 3].pdrb_adhk2);
              double pdrb5 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 4].pdrb_adhk2);
              double pdrb6 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 5].pdrb_adhk2);
              double pdrb7 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 6].pdrb_adhk2);
              double pdrb8 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 7].pdrb_adhk2);
              double pdrb9 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 8].pdrb_adhk2);
              double pdrb10 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 9].pdrb_adhk2);
              double pdrb11 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 10].pdrb_adhk2);
              double pdrb12 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 11].pdrb_adhk2);
              double pdrb13 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 12].pdrb_adhk2);
              double pdrb14 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 13].pdrb_adhk2);
              double pdrb15 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 14].pdrb_adhk2);
              double pdrb16 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 15].pdrb_adhk2);
              double pdrb17 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 16].pdrb_adhk2);
              double pdrb18 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 17].pdrb_adhk2);
              double pdrb19 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 18].pdrb_adhk2);
              double pdrb20 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 19].pdrb_adhk2);
              double pdrb21 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 20].pdrb_adhk2);
              double pdrb22 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 21].pdrb_adhk2);
              double pdrb23 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 22].pdrb_adhk2);
              double pdrb24 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 23].pdrb_adhk2);
              double pdrb25 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 24].pdrb_adhk2);
              double pdrb26 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 25].pdrb_adhk2);
              double pdrb27 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 26].pdrb_adhk2);
              double pdrb28 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 27].pdrb_adhk2);
              double pdrb29 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 28].pdrb_adhk2);
              double pdrb30 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 29].pdrb_adhk2);
              double pdrb31 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 30].pdrb_adhk2);
              double pdrb32 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 31].pdrb_adhk2);
              double pdrb33 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 32].pdrb_adhk2);
              double pdrb34 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 33].pdrb_adhk2);
              double pdrb35 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 34].pdrb_adhk2);
              double pdrb36 = double.parse(
                  isiPertumbuhanEknomikabkot[index = 35].pdrb_adhk2);

              double pe1 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 0].pe2);
              double pe2 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 1].pe2);
              double pe3 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 2].pe2);
              double pe4 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 3].pe2);
              double pe5 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 4].pe2);
              double pe6 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 5].pe2);
              double pe7 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 6].pe2);
              double pe8 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 7].pe2);
              double pe9 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 8].pe2);
              double pe10 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 9].pe2);
              double pe11 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 10].pe2);
              double pe12 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 11].pe2);
              double pe13 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 12].pe2);
              double pe14 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 13].pe2);
              double pe15 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 14].pe2);
              double pe16 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 15].pe2);
              double pe17 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 16].pe2);
              double pe18 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 17].pe2);
              double pe19 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 18].pe2);
              double pe20 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 19].pe2);
              double pe21 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 20].pe2);
              double pe22 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 21].pe2);
              double pe23 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 22].pe2);
              double pe24 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 23].pe2);
              double pe25 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 24].pe2);
              double pe26 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 25].pe2);
              double pe27 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 26].pe2);
              double pe28 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 27].pe2);
              double pe29 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 28].pe2);
              double pe30 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 29].pe2);
              double pe31 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 30].pe2);
              double pe32 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 31].pe2);
              double pe33 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 32].pe2);
              double pe34 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 33].pe2);
              double pe35 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 34].pe2);
              double pe36 =
                  double.parse(isiPertumbuhanEknomikabkot[index = 35].pe2);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.065,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.only(
                                right: 20, top: 3, bottom: 3),
                            child: const Text(
                              "Kabupaten/Kota",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 0, top: 3, bottom: 3),
                            child: const Text(
                              "PDRB ADHK",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 3, bottom: 3),
                            child: const Text(
                              "Pertumbuhan        Ekonomi",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //),
                  Expanded(
                    //flex:16,
                    child: SingleChildScrollView(
                      //child: Flexible(
                      //flex: 20,
                      //fit: FlexFit.tight,
                      //child: SizedBox(
                      //width: screenWidth,
                      //height: screenHeight,
                      child: Column(
                        children: [
                          // Cilacap
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab1,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Banyumas
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab2,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Purbalingga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab3,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Banjarnegara
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab4,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kebumen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab5,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Purworejo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab6,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Wonosobo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab7,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab8,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Boyolali
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab9,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Klaten
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab10,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Sukoharjo

                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab11,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Wonogiri
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab12,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Karanganyar
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab13,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Sragen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab14,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Grobogan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab15,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Blora
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab16,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Rembang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab17,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Pati
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab18,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kudus
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab19,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Jepara
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab20,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Demak
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab21,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab22,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Temanggung
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab23,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kendal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab24,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Batang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab25,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab26,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Pemalang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab27,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab28,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Brebes
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab29,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kota Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      kab30,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kota Surakarta
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab31,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kota Salatiga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab32,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kota Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab33,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kota Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      kab34,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kota Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.30 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab35,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.40 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pdrb35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pe35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Total
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.050,
                            color: Colors.green,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      prov,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.36 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(pdrb36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.25 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(pe36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 0,
                            ),
                            child: const Text(
                              " Keterangan :",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 14,
                              bottom: 0,
                            ),
                            child: const Text(
                              "Tahun 2022 merupakan angka sementara.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 14,
                              bottom: 0,
                            ),
                            child: const Text(
                              "Tahun 2023 merupakan angka sangat sementara.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 14,
                              bottom: 0,
                            ),
                            child: const Text(
                              "Pertumbuhan Ekonomi di hitung dari laju Pertumbuhan PDRB ADHK. Untuk kota dengan Industri Migas PDRB ADHK yang digunakan adalah PDRB ADHK Dengan Migas",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 60,
                            ),
                            child: const Text(
                              " Sumber Data : BPS Kabupaten Cilacap, BPS Provinsi Jawa Tengah",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('Database Error');
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}
