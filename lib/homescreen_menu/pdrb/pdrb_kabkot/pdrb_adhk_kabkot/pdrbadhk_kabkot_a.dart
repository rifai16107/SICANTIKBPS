// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PdrbadhkKabkotA extends StatefulWidget {
  const PdrbadhkKabkotA({Key? key}) : super(key: key);

  @override
  State<PdrbadhkKabkotA> createState() => _PdrbadhkKabkotAState();
}

RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();

class _PdrbadhkKabkotAState extends State<PdrbadhkKabkotA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorypdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrbkabkot = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                // PDRB Adhk Kabkot tahun 2019
                String thn1 = isipdrbkabkot[index = 0].tahun.substring(0, 4);

                String kab1 = " 01. " + isipdrbkabkot[index = 0].wilayah;
                String kab2 = " 02. " + isipdrbkabkot[index = 1].wilayah;
                String kab3 = " 03. " + isipdrbkabkot[index = 2].wilayah;
                String kab4 = " 04. " + isipdrbkabkot[index = 3].wilayah;
                String kab5 = " 05. " + isipdrbkabkot[index = 4].wilayah;
                String kab6 = " 06. " + isipdrbkabkot[index = 5].wilayah;
                String kab7 = " 07. " + isipdrbkabkot[index = 6].wilayah;
                String kab8 = " 08. " + isipdrbkabkot[index = 7].wilayah;
                String kab9 = " 09. " + isipdrbkabkot[index = 8].wilayah;
                String kab10 = " 10. " + isipdrbkabkot[index = 9].wilayah;
                String kab11 = " 11. " + isipdrbkabkot[index = 10].wilayah;
                String kab12 = " 12. " + isipdrbkabkot[index = 11].wilayah;
                String kab13 = " 13. " + isipdrbkabkot[index = 12].wilayah;
                String kab14 = " 14. " + isipdrbkabkot[index = 13].wilayah;
                String kab15 = " 15. " + isipdrbkabkot[index = 14].wilayah;
                String kab16 = " 16. " + isipdrbkabkot[index = 15].wilayah;
                String kab17 = " 17. " + isipdrbkabkot[index = 16].wilayah;
                String kab18 = " 18. " + isipdrbkabkot[index = 17].wilayah;
                String kab19 = " 19. " + isipdrbkabkot[index = 18].wilayah;
                String kab20 = " 20. " + isipdrbkabkot[index = 19].wilayah;
                String kab21 = " 21. " + isipdrbkabkot[index = 20].wilayah;
                String kab22 = " 22. " + isipdrbkabkot[index = 21].wilayah;
                String kab23 = " 23. " + isipdrbkabkot[index = 22].wilayah;
                String kab24 = " 24. " + isipdrbkabkot[index = 23].wilayah;
                String kab25 = " 25. " + isipdrbkabkot[index = 24].wilayah;
                String kab26 = " 26. " + isipdrbkabkot[index = 25].wilayah;
                String kab27 = " 27. " + isipdrbkabkot[index = 26].wilayah;
                String kab28 = " 28. " + isipdrbkabkot[index = 27].wilayah;
                String kab29 = " 29. " + isipdrbkabkot[index = 28].wilayah;
                String kab30 = " 71. " + isipdrbkabkot[index = 29].wilayah;
                String kab31 = " 72. " + isipdrbkabkot[index = 30].wilayah;
                String kab32 = " 73. " + isipdrbkabkot[index = 31].wilayah;
                String kab33 = " 74. " + isipdrbkabkot[index = 32].wilayah;
                String kab34 = " 75. " + isipdrbkabkot[index = 33].wilayah;
                String kab35 = " 76. " + isipdrbkabkot[index = 34].wilayah;

                double pdrb1_1 = double.parse(
                  isipdrbkabkot[index = 0].pdrb_adhk1,
                );
                double pdrb1_2 = double.parse(
                  isipdrbkabkot[index = 1].pdrb_adhk1,
                );
                double pdrb1_3 = double.parse(
                  isipdrbkabkot[index = 2].pdrb_adhk1,
                );
                double pdrb1_4 = double.parse(
                  isipdrbkabkot[index = 3].pdrb_adhk1,
                );
                double pdrb1_5 = double.parse(
                  isipdrbkabkot[index = 4].pdrb_adhk1,
                );
                double pdrb1_6 = double.parse(
                  isipdrbkabkot[index = 5].pdrb_adhk1,
                );
                double pdrb1_7 = double.parse(
                  isipdrbkabkot[index = 6].pdrb_adhk1,
                );
                double pdrb1_8 = double.parse(
                  isipdrbkabkot[index = 7].pdrb_adhk1,
                );
                double pdrb1_9 = double.parse(
                  isipdrbkabkot[index = 8].pdrb_adhk1,
                );
                double pdrb1_10 = double.parse(
                  isipdrbkabkot[index = 9].pdrb_adhk1,
                );
                double pdrb1_11 = double.parse(
                  isipdrbkabkot[index = 10].pdrb_adhk1,
                );
                double pdrb1_12 = double.parse(
                  isipdrbkabkot[index = 11].pdrb_adhk1,
                );
                double pdrb1_13 = double.parse(
                  isipdrbkabkot[index = 12].pdrb_adhk1,
                );
                double pdrb1_14 = double.parse(
                  isipdrbkabkot[index = 13].pdrb_adhk1,
                );
                double pdrb1_15 = double.parse(
                  isipdrbkabkot[index = 14].pdrb_adhk1,
                );
                double pdrb1_16 = double.parse(
                  isipdrbkabkot[index = 15].pdrb_adhk1,
                );
                double pdrb1_17 = double.parse(
                  isipdrbkabkot[index = 16].pdrb_adhk1,
                );
                double pdrb1_18 = double.parse(
                  isipdrbkabkot[index = 17].pdrb_adhk1,
                );
                double pdrb1_19 = double.parse(
                  isipdrbkabkot[index = 18].pdrb_adhk1,
                );
                double pdrb1_20 = double.parse(
                  isipdrbkabkot[index = 19].pdrb_adhk1,
                );
                double pdrb1_21 = double.parse(
                  isipdrbkabkot[index = 20].pdrb_adhk1,
                );
                double pdrb1_22 = double.parse(
                  isipdrbkabkot[index = 21].pdrb_adhk1,
                );
                double pdrb1_23 = double.parse(
                  isipdrbkabkot[index = 22].pdrb_adhk1,
                );
                double pdrb1_24 = double.parse(
                  isipdrbkabkot[index = 23].pdrb_adhk1,
                );
                double pdrb1_25 = double.parse(
                  isipdrbkabkot[index = 24].pdrb_adhk1,
                );
                double pdrb1_26 = double.parse(
                  isipdrbkabkot[index = 25].pdrb_adhk1,
                );
                double pdrb1_27 = double.parse(
                  isipdrbkabkot[index = 26].pdrb_adhk1,
                );
                double pdrb1_28 = double.parse(
                  isipdrbkabkot[index = 27].pdrb_adhk1,
                );
                double pdrb1_29 = double.parse(
                  isipdrbkabkot[index = 28].pdrb_adhk1,
                );
                double pdrb1_30 = double.parse(
                  isipdrbkabkot[index = 29].pdrb_adhk1,
                );
                double pdrb1_31 = double.parse(
                  isipdrbkabkot[index = 30].pdrb_adhk1,
                );
                double pdrb1_32 = double.parse(
                  isipdrbkabkot[index = 31].pdrb_adhk1,
                );
                double pdrb1_33 = double.parse(
                  isipdrbkabkot[index = 32].pdrb_adhk1,
                );
                double pdrb1_34 = double.parse(
                  isipdrbkabkot[index = 33].pdrb_adhk1,
                );
                double pdrb1_35 = double.parse(
                  isipdrbkabkot[index = 34].pdrb_adhk1,
                );

                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.060,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Container(
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                  vertical: 10,
                                ),
                                color: Colors.orange,
                                child: const Center(
                                  child: Text(
                                    "Kabupaten/Kota",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Container(
                                height: screenHeight * 0.06,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                  vertical: 10,
                                ),
                                color: Colors.orange,
                                child: Center(
                                  child: Text(
                                    thn1,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              // Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_2, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Banjarnegara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_4, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_5, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_6, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_7, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_8, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_9, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_10, 2),
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_11, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_12, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_13, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_14, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_15, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_16, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_17, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_18, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_19, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_20, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_21, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_22, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_23, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_24, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_25, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_26, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_27, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_28, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_29, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_30, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_31, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_32, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // 33 Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_33, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_34, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.034,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 3,
                                        ),
                                        child: Text(
                                          kab35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Text(
                                        Format.convertTo(pdrb1_35, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    const Flexible(
                                      fit: FlexFit.tight,
                                      flex: 1,
                                      child: Text(
                                        "    ",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Color.fromARGB(235, 71, 65, 65),
                                thickness: 2,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(top: 4, left: 4),
                                child: const Text(
                                  " Sumber Data : BPS Provinsi Jawa Tengah",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('Database Error');
          } else {
            return const Center(
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
