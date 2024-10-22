//ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pertanian_ternak.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianTernak extends StatefulWidget {
  const PertanianTernak({Key? key}) : super(key: key);

  @override
  State<PertanianTernak> createState() => _PertanianTernakState();
}

RepositoryPertanianTernak repositorypertanian = RepositoryPertanianTernak();

class _PertanianTernakState extends State<PertanianTernak> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
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

              String ternak1 = "  1. " + isipertanian[index = 0].jenis_ternak;
              String ternak2 = "  2. " + isipertanian[index = 1].jenis_ternak;
              String ternak3 = "  3. " + isipertanian[index = 2].jenis_ternak;
              String ternak4 = "  4. " + isipertanian[index = 3].jenis_ternak;
              String ternak5 = "  5. " + isipertanian[index = 4].jenis_ternak;
              String ternak6 = "  6. " + isipertanian[index = 5].jenis_ternak;
              String ternak7 = "  7. " + isipertanian[index = 6].jenis_ternak;
              String ternak8 = "  8. " + isipertanian[index = 7].jenis_ternak;
              String ternak9 = "  9. " + isipertanian[index = 8].jenis_ternak;
              String ternak10 = "  10. " + isipertanian[index = 9].jenis_ternak;
              String ternak11 =
                  "  11. " + isipertanian[index = 10].jenis_ternak;
              String ternak12 =
                  "  12. " + isipertanian[index = 11].jenis_ternak;
              String ternak13 =
                  "  13. " + isipertanian[index = 12].jenis_ternak;
              String ternak14 =
                  "  14. " + isipertanian[index = 13].jenis_ternak;
              String ternak15 =
                  "  15. " + isipertanian[index = 14].jenis_ternak;

              double prod_thn1_1 =
                  double.parse(isipertanian[index = 0].prod_thn1);
              double prod_thn1_2 =
                  double.parse(isipertanian[index = 1].prod_thn1);
              double prod_thn1_3 =
                  double.parse(isipertanian[index = 2].prod_thn1);
              double prod_thn1_4 =
                  double.parse(isipertanian[index = 3].prod_thn1);
              double prod_thn1_5 =
                  double.parse(isipertanian[index = 4].prod_thn1);
              double prod_thn1_6 =
                  double.parse(isipertanian[index = 5].prod_thn1);
              double prod_thn1_7 =
                  double.parse(isipertanian[index = 6].prod_thn1);
              double prod_thn1_8 =
                  double.parse(isipertanian[index = 7].prod_thn1);
              double prod_thn1_9 =
                  double.parse(isipertanian[index = 8].prod_thn1);
              double prod_thn1_10 =
                  double.parse(isipertanian[index = 9].prod_thn1);
              double prod_thn1_11 =
                  double.parse(isipertanian[index = 10].prod_thn1);
              double prod_thn1_12 =
                  double.parse(isipertanian[index = 11].prod_thn1);
              double prod_thn1_13 =
                  double.parse(isipertanian[index = 12].prod_thn1);
              double prod_thn1_14 =
                  double.parse(isipertanian[index = 13].prod_thn1);
              double prod_thn1_15 =
                  double.parse(isipertanian[index = 14].prod_thn1);

              double prod_thn2_1 =
                  double.parse(isipertanian[index = 0].prod_thn2);
              double prod_thn2_2 =
                  double.parse(isipertanian[index = 1].prod_thn2);
              double prod_thn2_3 =
                  double.parse(isipertanian[index = 2].prod_thn2);
              double prod_thn2_4 =
                  double.parse(isipertanian[index = 3].prod_thn2);
              double prod_thn2_5 =
                  double.parse(isipertanian[index = 4].prod_thn2);
              double prod_thn2_6 =
                  double.parse(isipertanian[index = 5].prod_thn2);
              double prod_thn2_7 =
                  double.parse(isipertanian[index = 6].prod_thn2);
              double prod_thn2_8 =
                  double.parse(isipertanian[index = 7].prod_thn2);
              double prod_thn2_9 =
                  double.parse(isipertanian[index = 8].prod_thn2);
              double prod_thn2_10 =
                  double.parse(isipertanian[index = 9].prod_thn2);
              double prod_thn2_11 =
                  double.parse(isipertanian[index = 10].prod_thn2);
              double prod_thn2_12 =
                  double.parse(isipertanian[index = 11].prod_thn2);
              double prod_thn2_13 =
                  double.parse(isipertanian[index = 12].prod_thn2);
              double prod_thn2_14 =
                  double.parse(isipertanian[index = 13].prod_thn2);
              double prod_thn2_15 =
                  double.parse(isipertanian[index = 14].prod_thn2);

              double prod_thn3_1 =
                  double.parse(isipertanian[index = 0].prod_thn3);
              double prod_thn3_2 =
                  double.parse(isipertanian[index = 1].prod_thn3);
              double prod_thn3_3 =
                  double.parse(isipertanian[index = 2].prod_thn3);
              double prod_thn3_4 =
                  double.parse(isipertanian[index = 3].prod_thn3);
              double prod_thn3_5 =
                  double.parse(isipertanian[index = 4].prod_thn3);
              double prod_thn3_6 =
                  double.parse(isipertanian[index = 5].prod_thn3);
              double prod_thn3_7 =
                  double.parse(isipertanian[index = 6].prod_thn3);
              double prod_thn3_8 =
                  double.parse(isipertanian[index = 7].prod_thn3);
              double prod_thn3_9 =
                  double.parse(isipertanian[index = 8].prod_thn3);
              double prod_thn3_10 =
                  double.parse(isipertanian[index = 9].prod_thn3);
              double prod_thn3_11 =
                  double.parse(isipertanian[index = 10].prod_thn3);
              double prod_thn3_12 =
                  double.parse(isipertanian[index = 11].prod_thn3);
              double prod_thn3_13 =
                  double.parse(isipertanian[index = 12].prod_thn3);
              double prod_thn3_14 =
                  double.parse(isipertanian[index = 13].prod_thn3);
              double prod_thn3_15 =
                  double.parse(isipertanian[index = 14].prod_thn3);

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
                                flex: 5,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Jenis Ternak",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 2,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 2,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn2,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 2,
                                child: Container(
                                  height: screenHeight * 0.06,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn3,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // 1. Sapi Perah
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak1,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_1, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_1, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_1, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 2. Sapi Potong
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak2,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_2, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_2, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_2, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 3. Kerbau
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak3,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_3, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_3, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_3, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //4. Kambing
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak4,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_4, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_4, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_4, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //5. Domba
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak5,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_5, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_5, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_5, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //6. Kuda
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak6,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_6, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_6, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_6, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //7. Babi
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak7,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_7, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_7, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_7, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 8. Kelinci
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak8,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_8, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_8, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_8, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //9. Ayam Kampung
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak9,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_9, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_9, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_9, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 10. Ayam Ras Petelur
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak10,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_10, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_10, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_10, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //11. Ayam Pedaging
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak11,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_11, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_11, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_11, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //12. Itik
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak12,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_12, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_12, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_12, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 13 Itik manila
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak13,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_13, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_13, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_13, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Angsa
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak14,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_14, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_14, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_14, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Puyuh
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      ternak15,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn1_15, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn2_15, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(prod_thn3_15, 0),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            thickness: 2,
                          ),

                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                            ),
                            child: const Text(
                              " Sumber Data : Dinas Pertanian Kabupaten Cilacap",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.normal),
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
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}
