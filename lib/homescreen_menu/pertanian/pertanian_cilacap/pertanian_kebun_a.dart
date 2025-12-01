//ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pertanian_kebun.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianKebunA extends StatefulWidget {
  const PertanianKebunA({Key? key}) : super(key: key);

  @override
  State<PertanianKebunA> createState() => _PertanianKebunAState();
}

RepositoryPertanianKebun repositorypertanian = RepositoryPertanianKebun();

class _PertanianKebunAState extends State<PertanianKebunA> {
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
        future: repositorypertanian.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipertanian = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String thn1 = isipertanian[index = 0].tahun.substring(0, 4);
                String thn2 = isipertanian[index = 0].tahun.substring(5, 9);
                String thn3 = isipertanian[index = 0].tahun.substring(10, 14);

                String tanaman1 =
                    "  1. " + isipertanian[index = 0].jenis_tanaman;
                String tanaman2 =
                    "  2. " + isipertanian[index = 1].jenis_tanaman;
                String tanaman3 =
                    "  3. " + isipertanian[index = 2].jenis_tanaman;
                String tanaman4 =
                    "  4. " + isipertanian[index = 3].jenis_tanaman;
                String tanaman5 =
                    "  5. " + isipertanian[index = 4].jenis_tanaman;
                String tanaman6 =
                    "  6. " + isipertanian[index = 5].jenis_tanaman;
                String tanaman7 =
                    "  7. " + isipertanian[index = 6].jenis_tanaman;
                String tanaman8 =
                    "  8. " + isipertanian[index = 7].jenis_tanaman;
                String tanaman9 =
                    "  9. " + isipertanian[index = 8].jenis_tanaman;
                String tanaman10 =
                    "  10. " + isipertanian[index = 9].jenis_tanaman;
                String tanaman11 =
                    "  11. " + isipertanian[index = 10].jenis_tanaman;
                String tanaman12 =
                    "  12. " + isipertanian[index = 11].jenis_tanaman;
                String tanaman13 =
                    "  13. " + isipertanian[index = 12].jenis_tanaman;

                String luas_satuan1 = isipertanian[index = 0].luas_satuan;
                String luas_satuan2 = isipertanian[index = 1].luas_satuan;
                String luas_satuan3 = isipertanian[index = 2].luas_satuan;
                String luas_satuan4 = isipertanian[index = 3].luas_satuan;
                String luas_satuan5 = isipertanian[index = 4].luas_satuan;
                String luas_satuan6 = isipertanian[index = 5].luas_satuan;
                String luas_satuan7 = isipertanian[index = 6].luas_satuan;
                String luas_satuan8 = isipertanian[index = 7].luas_satuan;
                String luas_satuan9 = isipertanian[index = 8].luas_satuan;
                String luas_satuan10 = isipertanian[index = 9].luas_satuan;
                String luas_satuan11 = isipertanian[index = 10].luas_satuan;
                String luas_satuan12 = isipertanian[index = 11].luas_satuan;
                String luas_satuan13 = isipertanian[index = 12].luas_satuan;

                double luas_thn1_1 = double.parse(
                  isipertanian[index = 0].luas_thn1,
                );
                double luas_thn1_2 = double.parse(
                  isipertanian[index = 1].luas_thn1,
                );
                double luas_thn1_3 = double.parse(
                  isipertanian[index = 2].luas_thn1,
                );
                double luas_thn1_4 = double.parse(
                  isipertanian[index = 3].luas_thn1,
                );
                double luas_thn1_5 = double.parse(
                  isipertanian[index = 4].luas_thn1,
                );
                double luas_thn1_6 = double.parse(
                  isipertanian[index = 5].luas_thn1,
                );
                double luas_thn1_7 = double.parse(
                  isipertanian[index = 6].luas_thn1,
                );
                double luas_thn1_8 = double.parse(
                  isipertanian[index = 7].luas_thn1,
                );
                double luas_thn1_9 = double.parse(
                  isipertanian[index = 8].luas_thn1,
                );
                double luas_thn1_10 = double.parse(
                  isipertanian[index = 9].luas_thn1,
                );
                double luas_thn1_11 = double.parse(
                  isipertanian[index = 10].luas_thn1,
                );
                double luas_thn1_12 = double.parse(
                  isipertanian[index = 11].luas_thn1,
                );
                double luas_thn1_13 = double.parse(
                  isipertanian[index = 12].luas_thn1,
                );

                double luas_thn2_1 = double.parse(
                  isipertanian[index = 0].luas_thn2,
                );
                double luas_thn2_2 = double.parse(
                  isipertanian[index = 1].luas_thn2,
                );
                double luas_thn2_3 = double.parse(
                  isipertanian[index = 2].luas_thn2,
                );
                double luas_thn2_4 = double.parse(
                  isipertanian[index = 3].luas_thn2,
                );
                double luas_thn2_5 = double.parse(
                  isipertanian[index = 4].luas_thn2,
                );
                double luas_thn2_6 = double.parse(
                  isipertanian[index = 5].luas_thn2,
                );
                double luas_thn2_7 = double.parse(
                  isipertanian[index = 6].luas_thn2,
                );
                double luas_thn2_8 = double.parse(
                  isipertanian[index = 7].luas_thn2,
                );
                double luas_thn2_9 = double.parse(
                  isipertanian[index = 8].luas_thn2,
                );
                double luas_thn2_10 = double.parse(
                  isipertanian[index = 9].luas_thn2,
                );
                double luas_thn2_11 = double.parse(
                  isipertanian[index = 10].luas_thn2,
                );
                double luas_thn2_12 = double.parse(
                  isipertanian[index = 11].luas_thn2,
                );
                double luas_thn2_13 = double.parse(
                  isipertanian[index = 12].luas_thn2,
                );

                double luas_thn3_1 = double.parse(
                  isipertanian[index = 0].luas_thn3,
                );
                double luas_thn3_2 = double.parse(
                  isipertanian[index = 1].luas_thn3,
                );
                double luas_thn3_3 = double.parse(
                  isipertanian[index = 2].luas_thn3,
                );
                double luas_thn3_4 = double.parse(
                  isipertanian[index = 3].luas_thn3,
                );
                double luas_thn3_5 = double.parse(
                  isipertanian[index = 4].luas_thn3,
                );
                double luas_thn3_6 = double.parse(
                  isipertanian[index = 5].luas_thn3,
                );
                double luas_thn3_7 = double.parse(
                  isipertanian[index = 6].luas_thn3,
                );
                double luas_thn3_8 = double.parse(
                  isipertanian[index = 7].luas_thn3,
                );
                double luas_thn3_9 = double.parse(
                  isipertanian[index = 8].luas_thn3,
                );
                double luas_thn3_10 = double.parse(
                  isipertanian[index = 9].luas_thn3,
                );
                double luas_thn3_11 = double.parse(
                  isipertanian[index = 10].luas_thn3,
                );
                double luas_thn3_12 = double.parse(
                  isipertanian[index = 11].luas_thn3,
                );
                double luas_thn3_13 = double.parse(
                  isipertanian[index = 12].luas_thn3,
                );

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Jenis Tanaman",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Satuan",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn1,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn2,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn3,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // 1. Kelapa Dalam
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman1,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan1,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_1, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_1, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_1, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 2. Kelapa deres
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman2,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan2,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_2, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_2, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_2, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 3. Karet
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman3,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan3,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_3, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_3, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_3, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 4. Kopi
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman4,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan4,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_4, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_4, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_4, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 5. Kakao
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman5,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan5,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_5, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_5, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_5, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 6. Tebu
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman6,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan6,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_6, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_6, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_6, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 7. Panili
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman7,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan7,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_7, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_7, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_7, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 8. Tembakau
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman8,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan8,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_8, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_8, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_8, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 9. Aren
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman9,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan9,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_9, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_9, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_9, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 10. Cengkeh
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman10,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan10,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_10, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_10, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_10, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 11. Lada
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman11,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan11,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_11, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_11, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_11, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 12. Sereh
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
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
                                        tanaman12,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan12,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_12, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_12, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_12, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 13 Pala
                            Container(
                              height: screenHeight * 0.035,
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
                                        tanaman13,
                                        style: const TextStyle(fontSize: 13),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      luas_satuan13,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn1_13, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn2_13, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(luas_thn3_13, 2),
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Divider(thickness: 2),

                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 4, left: 4),
                              child: const Text(
                                " Sumber Data : Dinas Perkebunan Kabupaten Cilacap",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
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
