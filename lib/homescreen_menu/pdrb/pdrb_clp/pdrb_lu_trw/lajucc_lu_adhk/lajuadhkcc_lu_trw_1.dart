// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//DIST PDRB ADHB 2022-2024

class RepositoryLajuadhkLuTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-laju';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelLajuadhkTrwLu.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

class ModelLajuadhkTrwLu {
  final int id;
  final String komponen;
  final String cc_trw1;
  final String cc_trw2;
  final String cc_trw3;
  final String cc_trw4;
  final String cc_total;
  final String tahun;

  ModelLajuadhkTrwLu(
      {required this.id,
      required this.komponen,
      required this.cc_trw1,
      required this.cc_trw2,
      required this.cc_trw3,
      required this.cc_trw4,
      required this.cc_total,
      required this.tahun});

  factory ModelLajuadhkTrwLu.fromJson(Map<String, dynamic> json) {
    return ModelLajuadhkTrwLu(
      id: json['id'],
      komponen: json['komponen'],
      cc_trw1: json['cc_trw1'],
      cc_trw2: json['cc_trw2'],
      cc_trw3: json['cc_trw3'],
      cc_trw4: json['cc_trw4'],
      cc_total: json['cc_total'],
      tahun: json['tahun'],
    );
  }
}

class LajuadhkccLuTrw1 extends StatefulWidget {
  const LajuadhkccLuTrw1({Key? key}) : super(key: key);

  @override
  State<LajuadhkccLuTrw1> createState() => _LajuadhkccLuTrw1State();
}

RepositoryLajuadhkLuTrw repositoryLajuadhk = RepositoryLajuadhkLuTrw();

class _LajuadhkccLuTrw1State extends State<LajuadhkccLuTrw1> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryLajuadhk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String komponen1 = isipdrb[index = 15].komponen;
              String komponen2 = isipdrb[index = 16].komponen;
              String komponen3 = isipdrb[index = 17].komponen;
              String komponen4 = isipdrb[index = 18].komponen;

              //pdrb trw
              String primer_cc_trw1 = isipdrb[index = 15].cc_trw1;
              String sekunder_cc_trw1 = isipdrb[index = 16].cc_trw1;
              String tersier_cc_trw1 = isipdrb[index = 17].cc_trw1;
              String total_cc_trw1 = isipdrb[index = 18].cc_trw1;

              String primer_cc_trw2 = isipdrb[index = 15].cc_trw2;
              String sekunder_cc_trw2 = isipdrb[index = 16].cc_trw2;
              String tersier_cc_trw2 = isipdrb[index = 17].cc_trw2;
              String total_cc_trw2 = isipdrb[index = 18].cc_trw2;

              String primer_cc_trw3 = isipdrb[index = 15].cc_trw3;
              String sekunder_cc_trw3 = isipdrb[index = 16].cc_trw3;
              String tersier_cc_trw3 = isipdrb[index = 17].cc_trw3;
              String total_cc_trw3 = isipdrb[index = 18].cc_trw3;

              String primer_cc_trw4 = isipdrb[index = 15].cc_trw4;
              String sekunder_cc_trw4 = isipdrb[index = 16].cc_trw4;
              String tersier_cc_trw4 = isipdrb[index = 17].cc_trw4;
              String total_cc_trw4 = isipdrb[index = 18].cc_trw4;

              String primer_cc_total = isipdrb[index = 15].cc_total;
              String sekunder_cc_total = isipdrb[index = 16].cc_total;
              String tersier_cc_total = isipdrb[index = 17].cc_total;
              String cc_total = isipdrb[index = 18].cc_total;

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.04,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.20,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 0, top: 10, bottom: 0),
                            child: const Text(
                              "Lapangan/",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.78,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 5, bottom: 0),
                            child: const Text(
                              "Laju Pertumbuhan PDRB dengan Migas",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),

                  //separator
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.005,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.22,
                          child: Container(
                            height: screenHeight * 0.005,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 0, top: 0, bottom: 0),
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.76,
                          child: Container(
                            height: screenHeight * 0.002,
                            color: Colors.white,
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, bottom: 0),
                            child: const Text(
                              "__",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.04,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.20,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Usaha",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.15,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 15, top: 0, bottom: 0),
                            child: const Text(
                              "Trw 1",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.15,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 15, top: 0, bottom: 0),
                            child: const Text(
                              "Trw 2",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.15,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 10, top: 0, bottom: 0),
                            child: const Text(
                              "Trw 3",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.16,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 10, top: 0, bottom: 0),
                            child: const Text(
                              "Trw 4",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.16,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 5, top: 0, bottom: 0),
                            child: const Text(
                              "Tahunan",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
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
                          // Sektor Primer
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.07,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.15 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      komponen1,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      primer_cc_trw1,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      primer_cc_trw2,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.16 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      primer_cc_trw3,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      primer_cc_trw4,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.18 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      primer_cc_total,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Sekunder
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.07,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.15 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      komponen2,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      sekunder_cc_trw1,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      sekunder_cc_trw2,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.16 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      sekunder_cc_trw3,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      sekunder_cc_trw4,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.18 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      sekunder_cc_total,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Tersier
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.07,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.15 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      komponen3,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      tersier_cc_trw1,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      tersier_cc_trw2,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.16 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      tersier_cc_trw3,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      tersier_cc_trw4,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.18 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      tersier_cc_total,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // TOTAL
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.07,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.15 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      komponen4,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      total_cc_trw1,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      total_cc_trw2,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.16 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      total_cc_trw3,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.165 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      total_cc_trw4,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.18 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      cc_total,
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Divider(
                            height: 5,
                            color: Colors.black,
                          ),
                          Container(
                            padding: const EdgeInsets.all(3),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Keterangan:",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(1),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                  text: 'c-to-c:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            ' Pertumbuhan jumlah kumulatif PDRB sampai dengan triwulan tertentu dibandingkan dengan jumlah kumulatif PDRB sampai triwulan tertentu tahun sebelumnya.',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                            fontWeight: FontWeight.normal)),
                                  ]),
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
