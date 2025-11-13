// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//apm apk 2021/2022 jumlah TK

class RepositoryPendidikanKabkotJumlahtk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmtk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotJumlahtk.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahtk {
  final int id;
  final String wilayah;
  final String sekolahtk_n1;
  final String gurutk_n1;
  final String muridtk_n1;
  final String tahun;

  ModelPendidikanKabkotJumlahtk(
      {required this.id,
      required this.wilayah,
      required this.sekolahtk_n1,
      required this.gurutk_n1,
      required this.muridtk_n1,
      required this.tahun});

  factory ModelPendidikanKabkotJumlahtk.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahtk(
      id: json['id'],
      wilayah: json['wilayah'],
      sekolahtk_n1: json['sekolahtk_n1'],
      gurutk_n1: json['gurutk_n1'],
      muridtk_n1: json['muridtk_n1'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahtkA extends StatefulWidget {
  const PendidikanKabkotJumlahtkA({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahtkA> createState() =>
      _PendidikanKabkotJumlahtkAState();
}

RepositoryPendidikanKabkotJumlahtk repositorypendidikan =
    RepositoryPendidikanKabkotJumlahtk();

class _PendidikanKabkotJumlahtkAState extends State<PendidikanKabkotJumlahtkA> {
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
              String kab1 = isipendidikan[index = 0].wilayah;
              String kab2 = isipendidikan[index = 1].wilayah;
              String kab3 = isipendidikan[index = 2].wilayah;
              String kab4 = isipendidikan[index = 3].wilayah;
              String kab5 = isipendidikan[index = 4].wilayah;
              String kab6 = isipendidikan[index = 5].wilayah;
              String kab7 = isipendidikan[index = 6].wilayah;
              String kab8 = isipendidikan[index = 7].wilayah;
              String kab9 = isipendidikan[index = 8].wilayah;
              String kab10 = isipendidikan[index = 9].wilayah;
              String kab11 = isipendidikan[index = 10].wilayah;
              String kab12 = isipendidikan[index = 11].wilayah;
              String kab13 = isipendidikan[index = 12].wilayah;
              String kab14 = isipendidikan[index = 13].wilayah;
              String kab15 = isipendidikan[index = 14].wilayah;
              String kab16 = isipendidikan[index = 15].wilayah;
              String kab17 = isipendidikan[index = 16].wilayah;
              String kab18 = isipendidikan[index = 17].wilayah;
              String kab19 = isipendidikan[index = 18].wilayah;
              String kab20 = isipendidikan[index = 19].wilayah;
              String kab21 = isipendidikan[index = 20].wilayah;
              String kab22 = isipendidikan[index = 21].wilayah;
              String kab23 = isipendidikan[index = 22].wilayah;
              String kab24 = isipendidikan[index = 23].wilayah;
              String kab25 = isipendidikan[index = 24].wilayah;
              String kab26 = isipendidikan[index = 25].wilayah;
              String kab27 = isipendidikan[index = 26].wilayah;
              String kab28 = isipendidikan[index = 27].wilayah;
              String kab29 = isipendidikan[index = 28].wilayah;
              String kab30 = isipendidikan[index = 29].wilayah;
              String kab31 = isipendidikan[index = 30].wilayah;
              String kab32 = isipendidikan[index = 31].wilayah;
              String kab33 = isipendidikan[index = 32].wilayah;
              String kab34 = isipendidikan[index = 33].wilayah;
              String kab35 = isipendidikan[index = 34].wilayah;
              String kab36 = "    " + isipendidikan[index = 35].wilayah;

              //APM
              double sekolahtk_1 =
                  double.parse(isipendidikan[index = 0].sekolahtk_n1);
              double sekolahtk_2 =
                  double.parse(isipendidikan[index = 1].sekolahtk_n1);
              double sekolahtk_3 =
                  double.parse(isipendidikan[index = 2].sekolahtk_n1);
              double sekolahtk_4 =
                  double.parse(isipendidikan[index = 3].sekolahtk_n1);
              double sekolahtk_5 =
                  double.parse(isipendidikan[index = 4].sekolahtk_n1);
              double sekolahtk_6 =
                  double.parse(isipendidikan[index = 5].sekolahtk_n1);
              double sekolahtk_7 =
                  double.parse(isipendidikan[index = 6].sekolahtk_n1);
              double sekolahtk_8 =
                  double.parse(isipendidikan[index = 7].sekolahtk_n1);
              double sekolahtk_9 =
                  double.parse(isipendidikan[index = 8].sekolahtk_n1);
              double sekolahtk_10 =
                  double.parse(isipendidikan[index = 9].sekolahtk_n1);
              double sekolahtk_11 =
                  double.parse(isipendidikan[index = 10].sekolahtk_n1);
              double sekolahtk_12 =
                  double.parse(isipendidikan[index = 11].sekolahtk_n1);
              double sekolahtk_13 =
                  double.parse(isipendidikan[index = 12].sekolahtk_n1);
              double sekolahtk_14 =
                  double.parse(isipendidikan[index = 13].sekolahtk_n1);
              double sekolahtk_15 =
                  double.parse(isipendidikan[index = 14].sekolahtk_n1);
              double sekolahtk_16 =
                  double.parse(isipendidikan[index = 15].sekolahtk_n1);
              double sekolahtk_17 =
                  double.parse(isipendidikan[index = 16].sekolahtk_n1);
              double sekolahtk_18 =
                  double.parse(isipendidikan[index = 17].sekolahtk_n1);
              double sekolahtk_19 =
                  double.parse(isipendidikan[index = 18].sekolahtk_n1);
              double sekolahtk_20 =
                  double.parse(isipendidikan[index = 19].sekolahtk_n1);
              double sekolahtk_21 =
                  double.parse(isipendidikan[index = 20].sekolahtk_n1);
              double sekolahtk_22 =
                  double.parse(isipendidikan[index = 21].sekolahtk_n1);
              double sekolahtk_23 =
                  double.parse(isipendidikan[index = 22].sekolahtk_n1);
              double sekolahtk_24 =
                  double.parse(isipendidikan[index = 23].sekolahtk_n1);
              double sekolahtk_25 =
                  double.parse(isipendidikan[index = 24].sekolahtk_n1);
              double sekolahtk_26 =
                  double.parse(isipendidikan[index = 25].sekolahtk_n1);
              double sekolahtk_27 =
                  double.parse(isipendidikan[index = 26].sekolahtk_n1);
              double sekolahtk_28 =
                  double.parse(isipendidikan[index = 27].sekolahtk_n1);
              double sekolahtk_29 =
                  double.parse(isipendidikan[index = 28].sekolahtk_n1);
              double sekolahtk_30 =
                  double.parse(isipendidikan[index = 29].sekolahtk_n1);
              double sekolahtk_31 =
                  double.parse(isipendidikan[index = 30].sekolahtk_n1);
              double sekolahtk_32 =
                  double.parse(isipendidikan[index = 31].sekolahtk_n1);
              double sekolahtk_33 =
                  double.parse(isipendidikan[index = 32].sekolahtk_n1);
              double sekolahtk_34 =
                  double.parse(isipendidikan[index = 33].sekolahtk_n1);
              double sekolahtk_35 =
                  double.parse(isipendidikan[index = 34].sekolahtk_n1);
              double sekolahtk_36 =
                  double.parse(isipendidikan[index = 35].sekolahtk_n1);

              double gurutk_1 =
                  double.parse(isipendidikan[index = 0].gurutk_n1);
              double gurutk_2 =
                  double.parse(isipendidikan[index = 1].gurutk_n1);
              double gurutk_3 =
                  double.parse(isipendidikan[index = 2].gurutk_n1);
              double gurutk_4 =
                  double.parse(isipendidikan[index = 3].gurutk_n1);
              double gurutk_5 =
                  double.parse(isipendidikan[index = 4].gurutk_n1);
              double gurutk_6 =
                  double.parse(isipendidikan[index = 5].gurutk_n1);
              double gurutk_7 =
                  double.parse(isipendidikan[index = 6].gurutk_n1);
              double gurutk_8 =
                  double.parse(isipendidikan[index = 7].gurutk_n1);
              double gurutk_9 =
                  double.parse(isipendidikan[index = 8].gurutk_n1);
              double gurutk_10 =
                  double.parse(isipendidikan[index = 9].gurutk_n1);
              double gurutk_11 =
                  double.parse(isipendidikan[index = 10].gurutk_n1);
              double gurutk_12 =
                  double.parse(isipendidikan[index = 11].gurutk_n1);
              double gurutk_13 =
                  double.parse(isipendidikan[index = 12].gurutk_n1);
              double gurutk_14 =
                  double.parse(isipendidikan[index = 13].gurutk_n1);
              double gurutk_15 =
                  double.parse(isipendidikan[index = 14].gurutk_n1);
              double gurutk_16 =
                  double.parse(isipendidikan[index = 15].gurutk_n1);
              double gurutk_17 =
                  double.parse(isipendidikan[index = 16].gurutk_n1);
              double gurutk_18 =
                  double.parse(isipendidikan[index = 17].gurutk_n1);
              double gurutk_19 =
                  double.parse(isipendidikan[index = 18].gurutk_n1);
              double gurutk_20 =
                  double.parse(isipendidikan[index = 19].gurutk_n1);
              double gurutk_21 =
                  double.parse(isipendidikan[index = 20].gurutk_n1);
              double gurutk_22 =
                  double.parse(isipendidikan[index = 21].gurutk_n1);
              double gurutk_23 =
                  double.parse(isipendidikan[index = 22].gurutk_n1);
              double gurutk_24 =
                  double.parse(isipendidikan[index = 23].gurutk_n1);
              double gurutk_25 =
                  double.parse(isipendidikan[index = 24].gurutk_n1);
              double gurutk_26 =
                  double.parse(isipendidikan[index = 25].gurutk_n1);
              double gurutk_27 =
                  double.parse(isipendidikan[index = 26].gurutk_n1);
              double gurutk_28 =
                  double.parse(isipendidikan[index = 27].gurutk_n1);
              double gurutk_29 =
                  double.parse(isipendidikan[index = 28].gurutk_n1);
              double gurutk_30 =
                  double.parse(isipendidikan[index = 29].gurutk_n1);
              double gurutk_31 =
                  double.parse(isipendidikan[index = 30].gurutk_n1);
              double gurutk_32 =
                  double.parse(isipendidikan[index = 31].gurutk_n1);
              double gurutk_33 =
                  double.parse(isipendidikan[index = 32].gurutk_n1);
              double gurutk_34 =
                  double.parse(isipendidikan[index = 33].gurutk_n1);
              double gurutk_35 =
                  double.parse(isipendidikan[index = 34].gurutk_n1);
              double gurutk_36 =
                  double.parse(isipendidikan[index = 35].gurutk_n1);

              double muridtk_1 =
                  double.parse(isipendidikan[index = 0].muridtk_n1);
              double muridtk_2 =
                  double.parse(isipendidikan[index = 1].muridtk_n1);
              double muridtk_3 =
                  double.parse(isipendidikan[index = 2].muridtk_n1);
              double muridtk_4 =
                  double.parse(isipendidikan[index = 3].muridtk_n1);
              double muridtk_5 =
                  double.parse(isipendidikan[index = 4].muridtk_n1);
              double muridtk_6 =
                  double.parse(isipendidikan[index = 5].muridtk_n1);
              double muridtk_7 =
                  double.parse(isipendidikan[index = 6].muridtk_n1);
              double muridtk_8 =
                  double.parse(isipendidikan[index = 7].muridtk_n1);
              double muridtk_9 =
                  double.parse(isipendidikan[index = 8].muridtk_n1);
              double muridtk_10 =
                  double.parse(isipendidikan[index = 9].muridtk_n1);
              double muridtk_11 =
                  double.parse(isipendidikan[index = 10].muridtk_n1);
              double muridtk_12 =
                  double.parse(isipendidikan[index = 11].muridtk_n1);
              double muridtk_13 =
                  double.parse(isipendidikan[index = 12].muridtk_n1);
              double muridtk_14 =
                  double.parse(isipendidikan[index = 13].muridtk_n1);
              double muridtk_15 =
                  double.parse(isipendidikan[index = 14].muridtk_n1);
              double muridtk_16 =
                  double.parse(isipendidikan[index = 15].muridtk_n1);
              double muridtk_17 =
                  double.parse(isipendidikan[index = 16].muridtk_n1);
              double muridtk_18 =
                  double.parse(isipendidikan[index = 17].muridtk_n1);
              double muridtk_19 =
                  double.parse(isipendidikan[index = 18].muridtk_n1);
              double muridtk_20 =
                  double.parse(isipendidikan[index = 19].muridtk_n1);
              double muridtk_21 =
                  double.parse(isipendidikan[index = 20].muridtk_n1);
              double muridtk_22 =
                  double.parse(isipendidikan[index = 21].muridtk_n1);
              double muridtk_23 =
                  double.parse(isipendidikan[index = 22].muridtk_n1);
              double muridtk_24 =
                  double.parse(isipendidikan[index = 23].muridtk_n1);
              double muridtk_25 =
                  double.parse(isipendidikan[index = 24].muridtk_n1);
              double muridtk_26 =
                  double.parse(isipendidikan[index = 25].muridtk_n1);
              double muridtk_27 =
                  double.parse(isipendidikan[index = 26].muridtk_n1);
              double muridtk_28 =
                  double.parse(isipendidikan[index = 27].muridtk_n1);
              double muridtk_29 =
                  double.parse(isipendidikan[index = 28].muridtk_n1);
              double muridtk_30 =
                  double.parse(isipendidikan[index = 29].muridtk_n1);
              double muridtk_31 =
                  double.parse(isipendidikan[index = 30].muridtk_n1);
              double muridtk_32 =
                  double.parse(isipendidikan[index = 31].muridtk_n1);
              double muridtk_33 =
                  double.parse(isipendidikan[index = 32].muridtk_n1);
              double muridtk_34 =
                  double.parse(isipendidikan[index = 33].muridtk_n1);
              double muridtk_35 =
                  double.parse(isipendidikan[index = 34].muridtk_n1);
              double muridtk_36 =
                  double.parse(isipendidikan[index = 35].muridtk_n1);

              //String thn1 = isipendidikan[index = 0].tahun.substring(0, 4);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,

                  //row header 1
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.04,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.32,
                          child: Container(
                            height: screenHeight * 0.03,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 20, top: 3, bottom: 0),
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
                          width: screenWidth * 0.22,
                          child: Container(
                            height: screenHeight * 0.02,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Jumlah",
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
                            height: screenHeight * 0.02,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 5, top: 0, bottom: 0),
                            child: const Text(
                              "Jumlah",
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
                            height: screenHeight * 0.02,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 5, top: 0, bottom: 0),
                            child: const Text(
                              "Jumlah",
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

                  //row header 2
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.03,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.32,
                          child: Container(
                            height: screenHeight * 0.03,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                right: 20, top: 0, bottom: 0),
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
                            height: screenHeight * 0.03,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Sekolah",
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
                            height: screenHeight * 0.03,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Guru",
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
                            height: screenHeight * 0.03,
                            color: Colors.blue,
                            padding: const EdgeInsets.only(
                                left: 0, top: 0, bottom: 0),
                            child: const Text(
                              "Murid",
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_1, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_1, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_1, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_2, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_3, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_4, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_5, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_6, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_7, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_8, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_9, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_10, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_11, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_12, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_13, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_14, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_15, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_16, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_17, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_17, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_17, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_18, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_18, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_18, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_19, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_19, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_19, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_20, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_20, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_20, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_21, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_21, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_21, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_22, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_22, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_22, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_23, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_23, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_23, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_24, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_24, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_24, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_25, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_25, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_25, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_26, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_26, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_26, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_27, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_27, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_27, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_28, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_28, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_28, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_29, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_29, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_29, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_30, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_30, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_30, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_31, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_31, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_31, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_32, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_32, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_32, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_33, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_33, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_33, 0),
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
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_34, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_34, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_34, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_35, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_35, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    color: Colors.transparent,
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_35, 0),
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
                                  width: 0.32 * screenWidth,
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
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(sekolahtk_36, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gurutk_36, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.22 * screenWidth,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 20, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(muridtk_36, 0),
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
                                            ' Provinsi Jawa Tengah Dalam Angka',
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
