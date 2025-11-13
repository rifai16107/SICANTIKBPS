// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//apm apk 2019

class RepositoryPendidikanKabkotApsek {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-apsek';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotApsek.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotApsek {
  final int id;
  final String wilayah;
  final String aps712_n2;
  final String aps1315_n2;
  final String aps1618_n2;
  final String tahun;

  ModelPendidikanKabkotApsek(
      {required this.id,
      required this.wilayah,
      required this.aps712_n2,
      required this.aps1315_n2,
      required this.aps1618_n2,
      required this.tahun});

  factory ModelPendidikanKabkotApsek.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotApsek(
      id: json['id'],
      wilayah: json['wilayah'],
      aps712_n2: json['aps712_n2'],
      aps1315_n2: json['aps1315_n2'],
      aps1618_n2: json['aps1618_n2'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotApsekB extends StatefulWidget {
  const PendidikanKabkotApsekB({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotApsekB> createState() => _PendidikanKabkotApsekBState();
}

RepositoryPendidikanKabkotApsek repositorypendidikan =
    RepositoryPendidikanKabkotApsek();

class _PendidikanKabkotApsekBState extends State<PendidikanKabkotApsekB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositorypendidikan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipendidikan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab1 = "01. " + isipendidikan[index = 0].wilayah;
              String kab2 = "02. " + isipendidikan[index = 1].wilayah;
              String kab3 = "03. " + isipendidikan[index = 2].wilayah;
              String kab4 = "04. " + isipendidikan[index = 3].wilayah;
              String kab5 = "05. " + isipendidikan[index = 4].wilayah;
              String kab6 = "06. " + isipendidikan[index = 5].wilayah;
              String kab7 = "07. " + isipendidikan[index = 6].wilayah;
              String kab8 = "08. " + isipendidikan[index = 7].wilayah;
              String kab9 = "09. " + isipendidikan[index = 8].wilayah;
              String kab10 = "10. " + isipendidikan[index = 9].wilayah;
              String kab11 = "11. " + isipendidikan[index = 10].wilayah;
              String kab12 = "12. " + isipendidikan[index = 11].wilayah;
              String kab13 = "13. " + isipendidikan[index = 12].wilayah;
              String kab14 = "14. " + isipendidikan[index = 13].wilayah;
              String kab15 = "15. " + isipendidikan[index = 14].wilayah;
              String kab16 = "16. " + isipendidikan[index = 15].wilayah;
              String kab17 = "17. " + isipendidikan[index = 16].wilayah;
              String kab18 = "18. " + isipendidikan[index = 17].wilayah;
              String kab19 = "19. " + isipendidikan[index = 18].wilayah;
              String kab20 = "20. " + isipendidikan[index = 19].wilayah;
              String kab21 = "21. " + isipendidikan[index = 20].wilayah;
              String kab22 = "22. " + isipendidikan[index = 21].wilayah;
              String kab23 = "23. " + isipendidikan[index = 22].wilayah;
              String kab24 = "24. " + isipendidikan[index = 23].wilayah;
              String kab25 = "25. " + isipendidikan[index = 24].wilayah;
              String kab26 = "26. " + isipendidikan[index = 25].wilayah;
              String kab27 = "27. " + isipendidikan[index = 26].wilayah;
              String kab28 = "28. " + isipendidikan[index = 27].wilayah;
              String kab29 = "29. " + isipendidikan[index = 28].wilayah;
              String kab30 = "71. " + isipendidikan[index = 29].wilayah;
              String kab31 = "72. " + isipendidikan[index = 30].wilayah;
              String kab32 = "73. " + isipendidikan[index = 31].wilayah;
              String kab33 = "74. " + isipendidikan[index = 32].wilayah;
              String kab34 = "75. " + isipendidikan[index = 33].wilayah;
              String kab35 = "76. " + isipendidikan[index = 34].wilayah;
              String kab36 = "    " + isipendidikan[index = 35].wilayah;

              //APM
              double aps712_1 =
                  double.parse(isipendidikan[index = 0].aps712_n2);
              double aps712_2 =
                  double.parse(isipendidikan[index = 1].aps712_n2);
              double aps712_3 =
                  double.parse(isipendidikan[index = 2].aps712_n2);
              double aps712_4 =
                  double.parse(isipendidikan[index = 3].aps712_n2);
              double aps712_5 =
                  double.parse(isipendidikan[index = 4].aps712_n2);
              double aps712_6 =
                  double.parse(isipendidikan[index = 5].aps712_n2);
              double aps712_7 =
                  double.parse(isipendidikan[index = 6].aps712_n2);
              double aps712_8 =
                  double.parse(isipendidikan[index = 7].aps712_n2);
              double aps712_9 =
                  double.parse(isipendidikan[index = 8].aps712_n2);
              double aps712_10 =
                  double.parse(isipendidikan[index = 9].aps712_n2);
              double aps712_11 =
                  double.parse(isipendidikan[index = 10].aps712_n2);
              double aps712_12 =
                  double.parse(isipendidikan[index = 11].aps712_n2);
              double aps712_13 =
                  double.parse(isipendidikan[index = 12].aps712_n2);
              double aps712_14 =
                  double.parse(isipendidikan[index = 13].aps712_n2);
              double aps712_15 =
                  double.parse(isipendidikan[index = 14].aps712_n2);
              double aps712_16 =
                  double.parse(isipendidikan[index = 15].aps712_n2);
              double aps712_17 =
                  double.parse(isipendidikan[index = 16].aps712_n2);
              double aps712_18 =
                  double.parse(isipendidikan[index = 17].aps712_n2);
              double aps712_19 =
                  double.parse(isipendidikan[index = 18].aps712_n2);
              double aps712_20 =
                  double.parse(isipendidikan[index = 19].aps712_n2);
              double aps712_21 =
                  double.parse(isipendidikan[index = 20].aps712_n2);
              double aps712_22 =
                  double.parse(isipendidikan[index = 21].aps712_n2);
              double aps712_23 =
                  double.parse(isipendidikan[index = 22].aps712_n2);
              double aps712_24 =
                  double.parse(isipendidikan[index = 23].aps712_n2);
              double aps712_25 =
                  double.parse(isipendidikan[index = 24].aps712_n2);
              double aps712_26 =
                  double.parse(isipendidikan[index = 25].aps712_n2);
              double aps712_27 =
                  double.parse(isipendidikan[index = 26].aps712_n2);
              double aps712_28 =
                  double.parse(isipendidikan[index = 27].aps712_n2);
              double aps712_29 =
                  double.parse(isipendidikan[index = 28].aps712_n2);
              double aps712_30 =
                  double.parse(isipendidikan[index = 29].aps712_n2);
              double aps712_31 =
                  double.parse(isipendidikan[index = 30].aps712_n2);
              double aps712_32 =
                  double.parse(isipendidikan[index = 31].aps712_n2);
              double aps712_33 =
                  double.parse(isipendidikan[index = 32].aps712_n2);
              double aps712_34 =
                  double.parse(isipendidikan[index = 33].aps712_n2);
              double aps712_35 =
                  double.parse(isipendidikan[index = 34].aps712_n2);
              double aps712_36 =
                  double.parse(isipendidikan[index = 35].aps712_n2);

              double aps1315_1 =
                  double.parse(isipendidikan[index = 0].aps1315_n2);
              double aps1315_2 =
                  double.parse(isipendidikan[index = 1].aps1315_n2);
              double aps1315_3 =
                  double.parse(isipendidikan[index = 2].aps1315_n2);
              double aps1315_4 =
                  double.parse(isipendidikan[index = 3].aps1315_n2);
              double aps1315_5 =
                  double.parse(isipendidikan[index = 4].aps1315_n2);
              double aps1315_6 =
                  double.parse(isipendidikan[index = 5].aps1315_n2);
              double aps1315_7 =
                  double.parse(isipendidikan[index = 6].aps1315_n2);
              double aps1315_8 =
                  double.parse(isipendidikan[index = 7].aps1315_n2);
              double aps1315_9 =
                  double.parse(isipendidikan[index = 8].aps1315_n2);
              double aps1315_10 =
                  double.parse(isipendidikan[index = 9].aps1315_n2);
              double aps1315_11 =
                  double.parse(isipendidikan[index = 10].aps1315_n2);
              double aps1315_12 =
                  double.parse(isipendidikan[index = 11].aps1315_n2);
              double aps1315_13 =
                  double.parse(isipendidikan[index = 12].aps1315_n2);
              double aps1315_14 =
                  double.parse(isipendidikan[index = 13].aps1315_n2);
              double aps1315_15 =
                  double.parse(isipendidikan[index = 14].aps1315_n2);
              double aps1315_16 =
                  double.parse(isipendidikan[index = 15].aps1315_n2);
              double aps1315_17 =
                  double.parse(isipendidikan[index = 16].aps1315_n2);
              double aps1315_18 =
                  double.parse(isipendidikan[index = 17].aps1315_n2);
              double aps1315_19 =
                  double.parse(isipendidikan[index = 18].aps1315_n2);
              double aps1315_20 =
                  double.parse(isipendidikan[index = 19].aps1315_n2);
              double aps1315_21 =
                  double.parse(isipendidikan[index = 20].aps1315_n2);
              double aps1315_22 =
                  double.parse(isipendidikan[index = 21].aps1315_n2);
              double aps1315_23 =
                  double.parse(isipendidikan[index = 22].aps1315_n2);
              double aps1315_24 =
                  double.parse(isipendidikan[index = 23].aps1315_n2);
              double aps1315_25 =
                  double.parse(isipendidikan[index = 24].aps1315_n2);
              double aps1315_26 =
                  double.parse(isipendidikan[index = 25].aps1315_n2);
              double aps1315_27 =
                  double.parse(isipendidikan[index = 26].aps1315_n2);
              double aps1315_28 =
                  double.parse(isipendidikan[index = 27].aps1315_n2);
              double aps1315_29 =
                  double.parse(isipendidikan[index = 28].aps1315_n2);
              double aps1315_30 =
                  double.parse(isipendidikan[index = 29].aps1315_n2);
              double aps1315_31 =
                  double.parse(isipendidikan[index = 30].aps1315_n2);
              double aps1315_32 =
                  double.parse(isipendidikan[index = 31].aps1315_n2);
              double aps1315_33 =
                  double.parse(isipendidikan[index = 32].aps1315_n2);
              double aps1315_34 =
                  double.parse(isipendidikan[index = 33].aps1315_n2);
              double aps1315_35 =
                  double.parse(isipendidikan[index = 34].aps1315_n2);
              double aps1315_36 =
                  double.parse(isipendidikan[index = 35].aps1315_n2);

              double aps1618_1 =
                  double.parse(isipendidikan[index = 0].aps1618_n2);
              double aps1618_2 =
                  double.parse(isipendidikan[index = 1].aps1618_n2);
              double aps1618_3 =
                  double.parse(isipendidikan[index = 2].aps1618_n2);
              double aps1618_4 =
                  double.parse(isipendidikan[index = 3].aps1618_n2);
              double aps1618_5 =
                  double.parse(isipendidikan[index = 4].aps1618_n2);
              double aps1618_6 =
                  double.parse(isipendidikan[index = 5].aps1618_n2);
              double aps1618_7 =
                  double.parse(isipendidikan[index = 6].aps1618_n2);
              double aps1618_8 =
                  double.parse(isipendidikan[index = 7].aps1618_n2);
              double aps1618_9 =
                  double.parse(isipendidikan[index = 8].aps1618_n2);
              double aps1618_10 =
                  double.parse(isipendidikan[index = 9].aps1618_n2);
              double aps1618_11 =
                  double.parse(isipendidikan[index = 10].aps1618_n2);
              double aps1618_12 =
                  double.parse(isipendidikan[index = 11].aps1618_n2);
              double aps1618_13 =
                  double.parse(isipendidikan[index = 12].aps1618_n2);
              double aps1618_14 =
                  double.parse(isipendidikan[index = 13].aps1618_n2);
              double aps1618_15 =
                  double.parse(isipendidikan[index = 14].aps1618_n2);
              double aps1618_16 =
                  double.parse(isipendidikan[index = 15].aps1618_n2);
              double aps1618_17 =
                  double.parse(isipendidikan[index = 16].aps1618_n2);
              double aps1618_18 =
                  double.parse(isipendidikan[index = 17].aps1618_n2);
              double aps1618_19 =
                  double.parse(isipendidikan[index = 18].aps1618_n2);
              double aps1618_20 =
                  double.parse(isipendidikan[index = 19].aps1618_n2);
              double aps1618_21 =
                  double.parse(isipendidikan[index = 20].aps1618_n2);
              double aps1618_22 =
                  double.parse(isipendidikan[index = 21].aps1618_n2);
              double aps1618_23 =
                  double.parse(isipendidikan[index = 22].aps1618_n2);
              double aps1618_24 =
                  double.parse(isipendidikan[index = 23].aps1618_n2);
              double aps1618_25 =
                  double.parse(isipendidikan[index = 24].aps1618_n2);
              double aps1618_26 =
                  double.parse(isipendidikan[index = 25].aps1618_n2);
              double aps1618_27 =
                  double.parse(isipendidikan[index = 26].aps1618_n2);
              double aps1618_28 =
                  double.parse(isipendidikan[index = 27].aps1618_n2);
              double aps1618_29 =
                  double.parse(isipendidikan[index = 28].aps1618_n2);
              double aps1618_30 =
                  double.parse(isipendidikan[index = 29].aps1618_n2);
              double aps1618_31 =
                  double.parse(isipendidikan[index = 30].aps1618_n2);
              double aps1618_32 =
                  double.parse(isipendidikan[index = 31].aps1618_n2);
              double aps1618_33 =
                  double.parse(isipendidikan[index = 32].aps1618_n2);
              double aps1618_34 =
                  double.parse(isipendidikan[index = 33].aps1618_n2);
              double aps1618_35 =
                  double.parse(isipendidikan[index = 34].aps1618_n2);
              double aps1618_36 =
                  double.parse(isipendidikan[index = 35].aps1618_n2);

              //String thn1 = isipendidikan[index = 0].tahun.substring(0, 4);

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
                          width: screenWidth * 0.37,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 0, top: 10, bottom: 0),
                            child: const Text(
                              "Kabupaten/",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.60,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 5, bottom: 0),
                            child: const Text(
                              "Angka Partisipasi Sekolah (APS)",
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
                          width: screenWidth * 0.37,
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
                          width: screenWidth * 0.60,
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
                          width: screenWidth * 0.34,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Kota",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.22,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 10, top: 0, bottom: 0),
                            child: const Text(
                              "7 - 12",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.20,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 20, top: 0, bottom: 0),
                            child: const Text(
                              "13 - 15",
                              //textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.20,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 20, top: 0, bottom: 0),
                            child: const Text(
                              "16 - 18",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab1,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab2,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab3,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab4,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab5,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab6,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab7,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab8,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab9,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab10,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab11,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab12,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab13,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab14,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab15,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab16,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab17,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab18,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab19,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab20,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab21,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab22,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab23,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab24,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab25,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab26,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab27,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab28,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab29,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab30,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab31,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab32,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab33,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                            height: screenHeight * 0.033,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab34,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab35,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
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
                                  width: 0.34 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 2, top: 1, bottom: 1),
                                    child: Text(
                                      kab36,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps712_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1315_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.21 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(aps1618_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
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
                                            ' Survei Sosial Ekonomi Nasional (Susenas)',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontFamily: 'Roboto',
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ),
                          const Divider(
                            height: 20,
                          )
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
