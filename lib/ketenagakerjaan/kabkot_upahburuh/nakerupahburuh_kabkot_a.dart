// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//upah buruh 2020

class RepositoryNakerKabkotUpah {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-upahburuh';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotUpah.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotUpah {
  final int id;
  final String wilayah;
  final String lk_n1;
  final String pr_n1;
  final String lkpr_n1;
  final String tahun;

  ModelNakerKabkotUpah(
      {required this.id,
      required this.wilayah,
      required this.lk_n1,
      required this.pr_n1,
      required this.lkpr_n1,
      required this.tahun});

  factory ModelNakerKabkotUpah.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotUpah(
      id: json['id'],
      wilayah: json['wilayah'],
      lk_n1: json['lk_n1'],
      pr_n1: json['pr_n1'],
      lkpr_n1: json['lkpr_n1'],
      tahun: json['tahun'],
    );
  }
}

class NakerkabkotUpahA extends StatefulWidget {
  const NakerkabkotUpahA({Key? key}) : super(key: key);

  @override
  State<NakerkabkotUpahA> createState() => _NakerkabkotUpahAState();
}

RepositoryNakerKabkotUpah repositorynaker = RepositoryNakerKabkotUpah();

class _NakerkabkotUpahAState extends State<NakerkabkotUpahA> {
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

              double lk_1 = double.parse(isinaker[index = 0].lk_n1);
              double lk_2 = double.parse(isinaker[index = 1].lk_n1);
              double lk_3 = double.parse(isinaker[index = 2].lk_n1);
              double lk_4 = double.parse(isinaker[index = 3].lk_n1);
              double lk_5 = double.parse(isinaker[index = 4].lk_n1);
              double lk_6 = double.parse(isinaker[index = 5].lk_n1);
              double lk_7 = double.parse(isinaker[index = 6].lk_n1);
              double lk_8 = double.parse(isinaker[index = 7].lk_n1);
              double lk_9 = double.parse(isinaker[index = 8].lk_n1);
              double lk_10 = double.parse(isinaker[index = 9].lk_n1);
              double lk_11 = double.parse(isinaker[index = 10].lk_n1);
              double lk_12 = double.parse(isinaker[index = 11].lk_n1);
              double lk_13 = double.parse(isinaker[index = 12].lk_n1);
              double lk_14 = double.parse(isinaker[index = 13].lk_n1);
              double lk_15 = double.parse(isinaker[index = 14].lk_n1);
              double lk_16 = double.parse(isinaker[index = 15].lk_n1);
              double lk_17 = double.parse(isinaker[index = 16].lk_n1);
              double lk_18 = double.parse(isinaker[index = 17].lk_n1);
              double lk_19 = double.parse(isinaker[index = 18].lk_n1);
              double lk_20 = double.parse(isinaker[index = 19].lk_n1);
              double lk_21 = double.parse(isinaker[index = 20].lk_n1);
              double lk_22 = double.parse(isinaker[index = 21].lk_n1);
              double lk_23 = double.parse(isinaker[index = 22].lk_n1);
              double lk_24 = double.parse(isinaker[index = 23].lk_n1);
              double lk_25 = double.parse(isinaker[index = 24].lk_n1);
              double lk_26 = double.parse(isinaker[index = 25].lk_n1);
              double lk_27 = double.parse(isinaker[index = 26].lk_n1);
              double lk_28 = double.parse(isinaker[index = 27].lk_n1);
              double lk_29 = double.parse(isinaker[index = 28].lk_n1);
              double lk_30 = double.parse(isinaker[index = 29].lk_n1);
              double lk_31 = double.parse(isinaker[index = 30].lk_n1);
              double lk_32 = double.parse(isinaker[index = 31].lk_n1);
              double lk_33 = double.parse(isinaker[index = 32].lk_n1);
              double lk_34 = double.parse(isinaker[index = 33].lk_n1);
              double lk_35 = double.parse(isinaker[index = 34].lk_n1);
              double lk_36 = double.parse(isinaker[index = 35].lk_n1);

              double pr_1 = double.parse(isinaker[index = 0].pr_n1);
              double pr_2 = double.parse(isinaker[index = 1].pr_n1);
              double pr_3 = double.parse(isinaker[index = 2].pr_n1);
              double pr_4 = double.parse(isinaker[index = 3].pr_n1);
              double pr_5 = double.parse(isinaker[index = 4].pr_n1);
              double pr_6 = double.parse(isinaker[index = 5].pr_n1);
              double pr_7 = double.parse(isinaker[index = 6].pr_n1);
              double pr_8 = double.parse(isinaker[index = 7].pr_n1);
              double pr_9 = double.parse(isinaker[index = 8].pr_n1);
              double pr_10 = double.parse(isinaker[index = 9].pr_n1);
              double pr_11 = double.parse(isinaker[index = 10].pr_n1);
              double pr_12 = double.parse(isinaker[index = 11].pr_n1);
              double pr_13 = double.parse(isinaker[index = 12].pr_n1);
              double pr_14 = double.parse(isinaker[index = 13].pr_n1);
              double pr_15 = double.parse(isinaker[index = 14].pr_n1);
              double pr_16 = double.parse(isinaker[index = 15].pr_n1);
              double pr_17 = double.parse(isinaker[index = 16].pr_n1);
              double pr_18 = double.parse(isinaker[index = 17].pr_n1);
              double pr_19 = double.parse(isinaker[index = 18].pr_n1);
              double pr_20 = double.parse(isinaker[index = 19].pr_n1);
              double pr_21 = double.parse(isinaker[index = 20].pr_n1);
              double pr_22 = double.parse(isinaker[index = 21].pr_n1);
              double pr_23 = double.parse(isinaker[index = 22].pr_n1);
              double pr_24 = double.parse(isinaker[index = 23].pr_n1);
              double pr_25 = double.parse(isinaker[index = 24].pr_n1);
              double pr_26 = double.parse(isinaker[index = 25].pr_n1);
              double pr_27 = double.parse(isinaker[index = 26].pr_n1);
              double pr_28 = double.parse(isinaker[index = 27].pr_n1);
              double pr_29 = double.parse(isinaker[index = 28].pr_n1);
              double pr_30 = double.parse(isinaker[index = 29].pr_n1);
              double pr_31 = double.parse(isinaker[index = 30].pr_n1);
              double pr_32 = double.parse(isinaker[index = 31].pr_n1);
              double pr_33 = double.parse(isinaker[index = 32].pr_n1);
              double pr_34 = double.parse(isinaker[index = 33].pr_n1);
              double pr_35 = double.parse(isinaker[index = 34].pr_n1);
              double pr_36 = double.parse(isinaker[index = 35].pr_n1);

              double lkpr_1 = double.parse(isinaker[index = 0].lkpr_n1);
              double lkpr_2 = double.parse(isinaker[index = 1].lkpr_n1);
              double lkpr_3 = double.parse(isinaker[index = 2].lkpr_n1);
              double lkpr_4 = double.parse(isinaker[index = 3].lkpr_n1);
              double lkpr_5 = double.parse(isinaker[index = 4].lkpr_n1);
              double lkpr_6 = double.parse(isinaker[index = 5].lkpr_n1);
              double lkpr_7 = double.parse(isinaker[index = 6].lkpr_n1);
              double lkpr_8 = double.parse(isinaker[index = 7].lkpr_n1);
              double lkpr_9 = double.parse(isinaker[index = 8].lkpr_n1);
              double lkpr_10 = double.parse(isinaker[index = 9].lkpr_n1);
              double lkpr_11 = double.parse(isinaker[index = 10].lkpr_n1);
              double lkpr_12 = double.parse(isinaker[index = 11].lkpr_n1);
              double lkpr_13 = double.parse(isinaker[index = 12].lkpr_n1);
              double lkpr_14 = double.parse(isinaker[index = 13].lkpr_n1);
              double lkpr_15 = double.parse(isinaker[index = 14].lkpr_n1);
              double lkpr_16 = double.parse(isinaker[index = 15].lkpr_n1);
              double lkpr_17 = double.parse(isinaker[index = 16].lkpr_n1);
              double lkpr_18 = double.parse(isinaker[index = 17].lkpr_n1);
              double lkpr_19 = double.parse(isinaker[index = 18].lkpr_n1);
              double lkpr_20 = double.parse(isinaker[index = 19].lkpr_n1);
              double lkpr_21 = double.parse(isinaker[index = 20].lkpr_n1);
              double lkpr_22 = double.parse(isinaker[index = 21].lkpr_n1);
              double lkpr_23 = double.parse(isinaker[index = 22].lkpr_n1);
              double lkpr_24 = double.parse(isinaker[index = 23].lkpr_n1);
              double lkpr_25 = double.parse(isinaker[index = 24].lkpr_n1);
              double lkpr_26 = double.parse(isinaker[index = 25].lkpr_n1);
              double lkpr_27 = double.parse(isinaker[index = 26].lkpr_n1);
              double lkpr_28 = double.parse(isinaker[index = 27].lkpr_n1);
              double lkpr_29 = double.parse(isinaker[index = 28].lkpr_n1);
              double lkpr_30 = double.parse(isinaker[index = 29].lkpr_n1);
              double lkpr_31 = double.parse(isinaker[index = 30].lkpr_n1);
              double lkpr_32 = double.parse(isinaker[index = 31].lkpr_n1);
              double lkpr_33 = double.parse(isinaker[index = 32].lkpr_n1);
              double lkpr_34 = double.parse(isinaker[index = 33].lkpr_n1);
              double lkpr_35 = double.parse(isinaker[index = 34].lkpr_n1);
              double lkpr_36 = double.parse(isinaker[index = 35].lkpr_n1);

              //String thn1 = isinaker[index = 0].tahun.substring(0, 4);

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
                          flex: 4,
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
                                left: 5, top: 3, bottom: 3),
                            child: const Text(
                              'Lk',
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
                                left: 5, top: 3, bottom: 3),
                            child: const Text(
                              'Pr',
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
                                left: 5, top: 3, bottom: 3),
                            child: const Text(
                              'Lk+Pr',
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_1, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_1, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_1, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_2, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_3, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_4, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_5, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_6, 0),
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

                          // Wonosobo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_7, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_8, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_9, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_10, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_11, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_12, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_13, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_14, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_15, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_16, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_17, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_17, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_17, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_18, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_18, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_18, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_19, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_19, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_19, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_20, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_20, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_20, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_21, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_21, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_21, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_22, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_22, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_22, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_23, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_23, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_23, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_24, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_24, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_24, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_25, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_25, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_25, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_26, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_26, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_26, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_27, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_27, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_27, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_28, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_28, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_28, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_29, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_29, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_29, 0),
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
                                  width: 0.38 * screenWidth,
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_30, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_30, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_30, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_31, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_31, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_31, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_32, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_32, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_32, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_33, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_33, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_33, 0),
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

                          //Kota umkN3_kalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.38 * screenWidth,
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_34, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_34, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_34, 0),
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
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_35, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_35, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_35, 0),
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
                            height: screenHeight * 0.045,
                            color: Colors.blue,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.38 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
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
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lk_36, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pr_36, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.20 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(lkpr_36, 0),
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
