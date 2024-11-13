//ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pertanian_ikan.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianIkan extends StatefulWidget {
  const PertanianIkan({Key? key}) : super(key: key);

  @override
  State<PertanianIkan> createState() => _PertanianIkanState();
}

RepositoryPertanianIkan repositorypertanian = RepositoryPertanianIkan();

class _PertanianIkanState extends State<PertanianIkan> {
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

              String perairan1 = isipertanian[index = 0].jenis_perairan;
              String perairan2 = isipertanian[index = 1].jenis_perairan;
              String perairan3 = isipertanian[index = 2].jenis_perairan;
              String perairan4 = isipertanian[index = 3].jenis_perairan;
              String perairan5 = isipertanian[index = 4].jenis_perairan;
              String perairan6 = isipertanian[index = 5].jenis_perairan;
              String perairan7 = isipertanian[index = 6].jenis_perairan;
              String perairan8 = isipertanian[index = 7].jenis_perairan;

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
                                      "Jenis Perairan",
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
                                flex: 3,
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
                                flex: 3,
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
                                flex: 3,
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

                          Row(
                            children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 1,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  padding: const EdgeInsets.only(
                                      left: 2, top: 4, bottom:1),
                                  child: const Text(
                                    "1. Perikanan Tangkap",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // 1. Perairan Laut
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan1,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_1, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_1, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_1, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 2. Sungai
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan2,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_2, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_2, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_2, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 3. Rawa
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan3,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_3, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_3, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_3, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //4. Genangan air lainnya
                          Container(
                            height: screenHeight * 0.055,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan4,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_4, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_4, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_4, 1),
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

                          Row(
                            children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 5,
                                child: Container(
                                  height: screenHeight * 0.05,
                                  padding: const EdgeInsets.only(
                                      left: 2, top: 4, bottom:1),
                                  child: const Text(
                                    "2. Perikanan Budidaya",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //5. Tambak
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan5,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_5, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_5, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_5, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //6. Kolam
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan6,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_6, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_6, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_6, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //7. Karamba
                          Container(
                            height: screenHeight * 0.035,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan7,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_7, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_7, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_7, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 8. Minapadi
                          Container(
                            height: screenHeight * 0.035,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 12),
                                    child: Text(
                                      perairan8,
                                      style: const TextStyle(fontSize: 13),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn1_8, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn2_8, 1),
                                    style: const TextStyle(fontSize: 13),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Text(
                                    Format.convertTo(prod_thn3_8, 1),
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
                              " Sumber Data : Dinas Perikanan Kabupaten Cilacap",
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
