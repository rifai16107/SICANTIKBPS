// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//umk 2019

class RepositoryNakerKabkotFormalin {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-formalinformal';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotFormalin.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotFormalin {
  final int id;
  final String wilayah;
  final String formal_n1;
  final String informal_n1;
  final String tahun;

  ModelNakerKabkotFormalin(
      {required this.id,
      required this.wilayah,
      required this.formal_n1,
      required this.informal_n1,
      required this.tahun});

  factory ModelNakerKabkotFormalin.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotFormalin(
      id: json['id'],
      wilayah: json['wilayah'],
      formal_n1: json['formal_n1'],
      informal_n1: json['informal_n1'],
      tahun: json['tahun'],
    );
  }
}

class NakerkabkotFormalinA extends StatefulWidget {
  const NakerkabkotFormalinA({Key? key}) : super(key: key);

  @override
  State<NakerkabkotFormalinA> createState() => _NakerkabkotFormalinAState();
}

RepositoryNakerKabkotFormalin repositorynaker = RepositoryNakerKabkotFormalin();

class _NakerkabkotFormalinAState extends State<NakerkabkotFormalinA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositorynaker.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isinaker = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab1 = "01. " + isinaker[index = 0].wilayah;
              String kab2 = "02. " + isinaker[index = 1].wilayah;
              String kab3 = "03. " + isinaker[index = 2].wilayah;
              String kab4 = "04. " + isinaker[index = 3].wilayah;
              String kab5 = "05. " + isinaker[index = 4].wilayah;
              String kab6 = "06. " + isinaker[index = 5].wilayah;
              String kab7 = "07. " + isinaker[index = 6].wilayah;
              String kab8 = "08. " + isinaker[index = 7].wilayah;
              String kab9 = "09. " + isinaker[index = 8].wilayah;
              String kab10 = "10. " + isinaker[index = 9].wilayah;
              String kab11 = "11. " + isinaker[index = 10].wilayah;
              String kab12 = "12. " + isinaker[index = 11].wilayah;
              String kab13 = "13. " + isinaker[index = 12].wilayah;
              String kab14 = "14. " + isinaker[index = 13].wilayah;
              String kab15 = "15. " + isinaker[index = 14].wilayah;
              String kab16 = "16. " + isinaker[index = 15].wilayah;
              String kab17 = "17. " + isinaker[index = 16].wilayah;
              String kab18 = "18. " + isinaker[index = 17].wilayah;
              String kab19 = "19. " + isinaker[index = 18].wilayah;
              String kab20 = "20. " + isinaker[index = 19].wilayah;
              String kab21 = "21. " + isinaker[index = 20].wilayah;
              String kab22 = "22. " + isinaker[index = 21].wilayah;
              String kab23 = "23. " + isinaker[index = 22].wilayah;
              String kab24 = "24. " + isinaker[index = 23].wilayah;
              String kab25 = "25. " + isinaker[index = 24].wilayah;
              String kab26 = "26. " + isinaker[index = 25].wilayah;
              String kab27 = "27. " + isinaker[index = 26].wilayah;
              String kab28 = "28. " + isinaker[index = 27].wilayah;
              String kab29 = "29. " + isinaker[index = 28].wilayah;
              String kab30 = "71. " + isinaker[index = 29].wilayah;
              String kab31 = "72. " + isinaker[index = 30].wilayah;
              String kab32 = "73. " + isinaker[index = 31].wilayah;
              String kab33 = "74. " + isinaker[index = 32].wilayah;
              String kab34 = "75. " + isinaker[index = 33].wilayah;
              String kab35 = "76. " + isinaker[index = 34].wilayah;
              String kab36 = "    " + isinaker[index = 35].wilayah;

              double formal_1 = double.parse(isinaker[index = 0].formal_n1);
              double formal_2 = double.parse(isinaker[index = 1].formal_n1);
              double formal_3 = double.parse(isinaker[index = 2].formal_n1);
              double formal_4 = double.parse(isinaker[index = 3].formal_n1);
              double formal_5 = double.parse(isinaker[index = 4].formal_n1);
              double formal_6 = double.parse(isinaker[index = 5].formal_n1);
              double formal_7 = double.parse(isinaker[index = 6].formal_n1);
              double formal_8 = double.parse(isinaker[index = 7].formal_n1);
              double formal_9 = double.parse(isinaker[index = 8].formal_n1);
              double formal_10 = double.parse(isinaker[index = 9].formal_n1);
              double formal_11 = double.parse(isinaker[index = 10].formal_n1);
              double formal_12 = double.parse(isinaker[index = 11].formal_n1);
              double formal_13 = double.parse(isinaker[index = 12].formal_n1);
              double formal_14 = double.parse(isinaker[index = 13].formal_n1);
              double formal_15 = double.parse(isinaker[index = 14].formal_n1);
              double formal_16 = double.parse(isinaker[index = 15].formal_n1);
              double formal_17 = double.parse(isinaker[index = 16].formal_n1);
              double formal_18 = double.parse(isinaker[index = 17].formal_n1);
              double formal_19 = double.parse(isinaker[index = 18].formal_n1);
              double formal_20 = double.parse(isinaker[index = 19].formal_n1);
              double formal_21 = double.parse(isinaker[index = 20].formal_n1);
              double formal_22 = double.parse(isinaker[index = 21].formal_n1);
              double formal_23 = double.parse(isinaker[index = 22].formal_n1);
              double formal_24 = double.parse(isinaker[index = 23].formal_n1);
              double formal_25 = double.parse(isinaker[index = 24].formal_n1);
              double formal_26 = double.parse(isinaker[index = 25].formal_n1);
              double formal_27 = double.parse(isinaker[index = 26].formal_n1);
              double formal_28 = double.parse(isinaker[index = 27].formal_n1);
              double formal_29 = double.parse(isinaker[index = 28].formal_n1);
              double formal_30 = double.parse(isinaker[index = 29].formal_n1);
              double formal_31 = double.parse(isinaker[index = 30].formal_n1);
              double formal_32 = double.parse(isinaker[index = 31].formal_n1);
              double formal_33 = double.parse(isinaker[index = 32].formal_n1);
              double formal_34 = double.parse(isinaker[index = 33].formal_n1);
              double formal_35 = double.parse(isinaker[index = 34].formal_n1);
              double formal_36 = double.parse(isinaker[index = 35].formal_n1);

              double informal_1 = double.parse(isinaker[index = 0].informal_n1);
              double informal_2 = double.parse(isinaker[index = 1].informal_n1);
              double informal_3 = double.parse(isinaker[index = 2].informal_n1);
              double informal_4 = double.parse(isinaker[index = 3].informal_n1);
              double informal_5 = double.parse(isinaker[index = 4].informal_n1);
              double informal_6 = double.parse(isinaker[index = 5].informal_n1);
              double informal_7 = double.parse(isinaker[index = 6].informal_n1);
              double informal_8 = double.parse(isinaker[index = 7].informal_n1);
              double informal_9 = double.parse(isinaker[index = 8].informal_n1);
              double informal_10 =
                  double.parse(isinaker[index = 9].informal_n1);
              double informal_11 =
                  double.parse(isinaker[index = 10].informal_n1);
              double informal_12 =
                  double.parse(isinaker[index = 11].informal_n1);
              double informal_13 =
                  double.parse(isinaker[index = 12].informal_n1);
              double informal_14 =
                  double.parse(isinaker[index = 13].informal_n1);
              double informal_15 =
                  double.parse(isinaker[index = 14].informal_n1);
              double informal_16 =
                  double.parse(isinaker[index = 15].informal_n1);
              double informal_17 =
                  double.parse(isinaker[index = 16].informal_n1);
              double informal_18 =
                  double.parse(isinaker[index = 17].informal_n1);
              double informal_19 =
                  double.parse(isinaker[index = 18].informal_n1);
              double informal_20 =
                  double.parse(isinaker[index = 19].informal_n1);
              double informal_21 =
                  double.parse(isinaker[index = 20].informal_n1);
              double informal_22 =
                  double.parse(isinaker[index = 21].informal_n1);
              double informal_23 =
                  double.parse(isinaker[index = 22].informal_n1);
              double informal_24 =
                  double.parse(isinaker[index = 23].informal_n1);
              double informal_25 =
                  double.parse(isinaker[index = 24].informal_n1);
              double informal_26 =
                  double.parse(isinaker[index = 25].informal_n1);
              double informal_27 =
                  double.parse(isinaker[index = 26].informal_n1);
              double informal_28 =
                  double.parse(isinaker[index = 27].informal_n1);
              double informal_29 =
                  double.parse(isinaker[index = 28].informal_n1);
              double informal_30 =
                  double.parse(isinaker[index = 29].informal_n1);
              double informal_31 =
                  double.parse(isinaker[index = 30].informal_n1);
              double informal_32 =
                  double.parse(isinaker[index = 31].informal_n1);
              double informal_33 =
                  double.parse(isinaker[index = 32].informal_n1);
              double informal_34 =
                  double.parse(isinaker[index = 33].informal_n1);
              double informal_35 =
                  double.parse(isinaker[index = 34].informal_n1);
              double informal_36 =
                  double.parse(isinaker[index = 35].informal_n1);

              //String thn2 = isinaker[index = 0].tahun.substring(5, 9);
              //String thn3 = isinaker[index = 0].tahun.substring(10, 14);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.065,
                    color: Colors.blue,
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
                                right: 10, top: 3, bottom: 3),
                            child: const Text(
                              "Formal",
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
                                right: 5, top: 3, bottom: 3),
                            child: const Text(
                              "Informal",
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_1, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_2, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_3, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_4, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_5, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_6, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_7, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_8, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_9, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_10, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_11, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_12, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_13, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_14, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_15, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_16, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_17, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_18, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_19, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_20, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_21, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_22, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_23, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_24, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_25, 2),
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

                          //informal_kalongan
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_26, 2),
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

                          //informal_malang
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_27, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_28, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_29, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_30, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_31, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_32, 2),
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_33, 2),
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

                          //Kota informal_kalongan
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_34, 2),
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
                                  width: 0.34 * screenWidth,
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
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_35, 2),
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

                          //Jateng

                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.040,
                            color: Colors.blue,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      kab36,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(formal_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.31 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(informal_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.all(1),
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                  text: 'Sumber:',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text:
                                            ' Survei Angkatan Kerja Nasional (Sakernas)',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
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
