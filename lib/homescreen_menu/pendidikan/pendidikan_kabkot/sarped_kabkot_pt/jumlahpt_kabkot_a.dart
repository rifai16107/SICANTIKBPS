// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// 2021 jumlah pt

class RepositoryPendidikanKabkotJumlahpt {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmpt';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotJumlahpt.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahpt {
  final int id;
  final String wilayah;
  final String ptumum_n1;
  final String dosenumum_n1;
  final String mhsumum_n1;
  final String tahun;

  ModelPendidikanKabkotJumlahpt(
      {required this.id,
      required this.wilayah,
      required this.ptumum_n1,
      required this.dosenumum_n1,
      required this.mhsumum_n1,
      required this.tahun});

  factory ModelPendidikanKabkotJumlahpt.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahpt(
      id: json['id'],
      wilayah: json['wilayah'],
      ptumum_n1: json['ptumum_n1'],
      dosenumum_n1: json['dosenumum_n1'],
      mhsumum_n1: json['mhsumum_n1'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahptA extends StatefulWidget {
  const PendidikanKabkotJumlahptA({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahptA> createState() =>
      _PendidikanKabkotJumlahptAState();
}

RepositoryPendidikanKabkotJumlahpt repositorypendidikan =
    RepositoryPendidikanKabkotJumlahpt();

class _PendidikanKabkotJumlahptAState extends State<PendidikanKabkotJumlahptA> {
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
              double sekolahpt_1 =
                  double.parse(isipendidikan[index = 0].ptumum_n1);
              double sekolahpt_2 =
                  double.parse(isipendidikan[index = 1].ptumum_n1);
              double sekolahpt_3 =
                  double.parse(isipendidikan[index = 2].ptumum_n1);
              double sekolahpt_4 =
                  double.parse(isipendidikan[index = 3].ptumum_n1);
              double sekolahpt_5 =
                  double.parse(isipendidikan[index = 4].ptumum_n1);
              double sekolahpt_6 =
                  double.parse(isipendidikan[index = 5].ptumum_n1);
              double sekolahpt_7 =
                  double.parse(isipendidikan[index = 6].ptumum_n1);
              double sekolahpt_8 =
                  double.parse(isipendidikan[index = 7].ptumum_n1);
              double sekolahpt_9 =
                  double.parse(isipendidikan[index = 8].ptumum_n1);
              double sekolahpt_10 =
                  double.parse(isipendidikan[index = 9].ptumum_n1);
              double sekolahpt_11 =
                  double.parse(isipendidikan[index = 10].ptumum_n1);
              double sekolahpt_12 =
                  double.parse(isipendidikan[index = 11].ptumum_n1);
              double sekolahpt_13 =
                  double.parse(isipendidikan[index = 12].ptumum_n1);
              double sekolahpt_14 =
                  double.parse(isipendidikan[index = 13].ptumum_n1);
              double sekolahpt_15 =
                  double.parse(isipendidikan[index = 14].ptumum_n1);
              double sekolahpt_16 =
                  double.parse(isipendidikan[index = 15].ptumum_n1);
              double sekolahpt_17 =
                  double.parse(isipendidikan[index = 16].ptumum_n1);
              double sekolahpt_18 =
                  double.parse(isipendidikan[index = 17].ptumum_n1);
              double sekolahpt_19 =
                  double.parse(isipendidikan[index = 18].ptumum_n1);
              double sekolahpt_20 =
                  double.parse(isipendidikan[index = 19].ptumum_n1);
              double sekolahpt_21 =
                  double.parse(isipendidikan[index = 20].ptumum_n1);
              double sekolahpt_22 =
                  double.parse(isipendidikan[index = 21].ptumum_n1);
              double sekolahpt_23 =
                  double.parse(isipendidikan[index = 22].ptumum_n1);
              double sekolahpt_24 =
                  double.parse(isipendidikan[index = 23].ptumum_n1);
              double sekolahpt_25 =
                  double.parse(isipendidikan[index = 24].ptumum_n1);
              double sekolahpt_26 =
                  double.parse(isipendidikan[index = 25].ptumum_n1);
              double sekolahpt_27 =
                  double.parse(isipendidikan[index = 26].ptumum_n1);
              double sekolahpt_28 =
                  double.parse(isipendidikan[index = 27].ptumum_n1);
              double sekolahpt_29 =
                  double.parse(isipendidikan[index = 28].ptumum_n1);
              double sekolahpt_30 =
                  double.parse(isipendidikan[index = 29].ptumum_n1);
              double sekolahpt_31 =
                  double.parse(isipendidikan[index = 30].ptumum_n1);
              double sekolahpt_32 =
                  double.parse(isipendidikan[index = 31].ptumum_n1);
              double sekolahpt_33 =
                  double.parse(isipendidikan[index = 32].ptumum_n1);
              double sekolahpt_34 =
                  double.parse(isipendidikan[index = 33].ptumum_n1);
              double sekolahpt_35 =
                  double.parse(isipendidikan[index = 34].ptumum_n1);
              double sekolahpt_36 =
                  double.parse(isipendidikan[index = 35].ptumum_n1);

              double gurupt_1 =
                  double.parse(isipendidikan[index = 0].dosenumum_n1);
              double gurupt_2 =
                  double.parse(isipendidikan[index = 1].dosenumum_n1);
              double gurupt_3 =
                  double.parse(isipendidikan[index = 2].dosenumum_n1);
              double gurupt_4 =
                  double.parse(isipendidikan[index = 3].dosenumum_n1);
              double gurupt_5 =
                  double.parse(isipendidikan[index = 4].dosenumum_n1);
              double gurupt_6 =
                  double.parse(isipendidikan[index = 5].dosenumum_n1);
              double gurupt_7 =
                  double.parse(isipendidikan[index = 6].dosenumum_n1);
              double gurupt_8 =
                  double.parse(isipendidikan[index = 7].dosenumum_n1);
              double gurupt_9 =
                  double.parse(isipendidikan[index = 8].dosenumum_n1);
              double gurupt_10 =
                  double.parse(isipendidikan[index = 9].dosenumum_n1);
              double gurupt_11 =
                  double.parse(isipendidikan[index = 10].dosenumum_n1);
              double gurupt_12 =
                  double.parse(isipendidikan[index = 11].dosenumum_n1);
              double gurupt_13 =
                  double.parse(isipendidikan[index = 12].dosenumum_n1);
              double gurupt_14 =
                  double.parse(isipendidikan[index = 13].dosenumum_n1);
              double gurupt_15 =
                  double.parse(isipendidikan[index = 14].dosenumum_n1);
              double gurupt_16 =
                  double.parse(isipendidikan[index = 15].dosenumum_n1);
              double gurupt_17 =
                  double.parse(isipendidikan[index = 16].dosenumum_n1);
              double gurupt_18 =
                  double.parse(isipendidikan[index = 17].dosenumum_n1);
              double gurupt_19 =
                  double.parse(isipendidikan[index = 18].dosenumum_n1);
              double gurupt_20 =
                  double.parse(isipendidikan[index = 19].dosenumum_n1);
              double gurupt_21 =
                  double.parse(isipendidikan[index = 20].dosenumum_n1);
              double gurupt_22 =
                  double.parse(isipendidikan[index = 21].dosenumum_n1);
              double gurupt_23 =
                  double.parse(isipendidikan[index = 22].dosenumum_n1);
              double gurupt_24 =
                  double.parse(isipendidikan[index = 23].dosenumum_n1);
              double gurupt_25 =
                  double.parse(isipendidikan[index = 24].dosenumum_n1);
              double gurupt_26 =
                  double.parse(isipendidikan[index = 25].dosenumum_n1);
              double gurupt_27 =
                  double.parse(isipendidikan[index = 26].dosenumum_n1);
              double gurupt_28 =
                  double.parse(isipendidikan[index = 27].dosenumum_n1);
              double gurupt_29 =
                  double.parse(isipendidikan[index = 28].dosenumum_n1);
              double gurupt_30 =
                  double.parse(isipendidikan[index = 29].dosenumum_n1);
              double gurupt_31 =
                  double.parse(isipendidikan[index = 30].dosenumum_n1);
              double gurupt_32 =
                  double.parse(isipendidikan[index = 31].dosenumum_n1);
              double gurupt_33 =
                  double.parse(isipendidikan[index = 32].dosenumum_n1);
              double gurupt_34 =
                  double.parse(isipendidikan[index = 33].dosenumum_n1);
              double gurupt_35 =
                  double.parse(isipendidikan[index = 34].dosenumum_n1);
              double gurupt_36 =
                  double.parse(isipendidikan[index = 35].dosenumum_n1);

              double muridpt_1 =
                  double.parse(isipendidikan[index = 0].mhsumum_n1);
              double muridpt_2 =
                  double.parse(isipendidikan[index = 1].mhsumum_n1);
              double muridpt_3 =
                  double.parse(isipendidikan[index = 2].mhsumum_n1);
              double muridpt_4 =
                  double.parse(isipendidikan[index = 3].mhsumum_n1);
              double muridpt_5 =
                  double.parse(isipendidikan[index = 4].mhsumum_n1);
              double muridpt_6 =
                  double.parse(isipendidikan[index = 5].mhsumum_n1);
              double muridpt_7 =
                  double.parse(isipendidikan[index = 6].mhsumum_n1);
              double muridpt_8 =
                  double.parse(isipendidikan[index = 7].mhsumum_n1);
              double muridpt_9 =
                  double.parse(isipendidikan[index = 8].mhsumum_n1);
              double muridpt_10 =
                  double.parse(isipendidikan[index = 9].mhsumum_n1);
              double muridpt_11 =
                  double.parse(isipendidikan[index = 10].mhsumum_n1);
              double muridpt_12 =
                  double.parse(isipendidikan[index = 11].mhsumum_n1);
              double muridpt_13 =
                  double.parse(isipendidikan[index = 12].mhsumum_n1);
              double muridpt_14 =
                  double.parse(isipendidikan[index = 13].mhsumum_n1);
              double muridpt_15 =
                  double.parse(isipendidikan[index = 14].mhsumum_n1);
              double muridpt_16 =
                  double.parse(isipendidikan[index = 15].mhsumum_n1);
              double muridpt_17 =
                  double.parse(isipendidikan[index = 16].mhsumum_n1);
              double muridpt_18 =
                  double.parse(isipendidikan[index = 17].mhsumum_n1);
              double muridpt_19 =
                  double.parse(isipendidikan[index = 18].mhsumum_n1);
              double muridpt_20 =
                  double.parse(isipendidikan[index = 19].mhsumum_n1);
              double muridpt_21 =
                  double.parse(isipendidikan[index = 20].mhsumum_n1);
              double muridpt_22 =
                  double.parse(isipendidikan[index = 21].mhsumum_n1);
              double muridpt_23 =
                  double.parse(isipendidikan[index = 22].mhsumum_n1);
              double muridpt_24 =
                  double.parse(isipendidikan[index = 23].mhsumum_n1);
              double muridpt_25 =
                  double.parse(isipendidikan[index = 24].mhsumum_n1);
              double muridpt_26 =
                  double.parse(isipendidikan[index = 25].mhsumum_n1);
              double muridpt_27 =
                  double.parse(isipendidikan[index = 26].mhsumum_n1);
              double muridpt_28 =
                  double.parse(isipendidikan[index = 27].mhsumum_n1);
              double muridpt_29 =
                  double.parse(isipendidikan[index = 28].mhsumum_n1);
              double muridpt_30 =
                  double.parse(isipendidikan[index = 29].mhsumum_n1);
              double muridpt_31 =
                  double.parse(isipendidikan[index = 30].mhsumum_n1);
              double muridpt_32 =
                  double.parse(isipendidikan[index = 31].mhsumum_n1);
              double muridpt_33 =
                  double.parse(isipendidikan[index = 32].mhsumum_n1);
              double muridpt_34 =
                  double.parse(isipendidikan[index = 33].mhsumum_n1);
              double muridpt_35 =
                  double.parse(isipendidikan[index = 34].mhsumum_n1);
              double muridpt_36 =
                  double.parse(isipendidikan[index = 35].mhsumum_n1);

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
                              "PT",
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
                              "Dosen",
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
                              "Mahasiswa",
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
                                      Format.convertTo(sekolahpt_1, 0),
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
                                      Format.convertTo(gurupt_1, 0),
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
                                      Format.convertTo(muridpt_1, 0),
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
                                      Format.convertTo(sekolahpt_2, 0),
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
                                      Format.convertTo(gurupt_2, 0),
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
                                      Format.convertTo(muridpt_2, 0),
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
                                      Format.convertTo(sekolahpt_3, 0),
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
                                      Format.convertTo(gurupt_3, 0),
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
                                      Format.convertTo(muridpt_3, 0),
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
                                      Format.convertTo(sekolahpt_4, 0),
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
                                      Format.convertTo(gurupt_4, 0),
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
                                      Format.convertTo(muridpt_4, 0),
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
                                      Format.convertTo(sekolahpt_5, 0),
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
                                      Format.convertTo(gurupt_5, 0),
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
                                      Format.convertTo(muridpt_5, 0),
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
                                      Format.convertTo(sekolahpt_6, 0),
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
                                      Format.convertTo(gurupt_6, 0),
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
                                      Format.convertTo(muridpt_6, 0),
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
                                      Format.convertTo(sekolahpt_7, 0),
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
                                      Format.convertTo(gurupt_7, 0),
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
                                      Format.convertTo(muridpt_7, 0),
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
                                      Format.convertTo(sekolahpt_8, 0),
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
                                      Format.convertTo(gurupt_8, 0),
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
                                      Format.convertTo(muridpt_8, 0),
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
                                      Format.convertTo(sekolahpt_9, 0),
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
                                      Format.convertTo(gurupt_9, 0),
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
                                      Format.convertTo(muridpt_9, 0),
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
                                      Format.convertTo(sekolahpt_10, 0),
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
                                      Format.convertTo(gurupt_10, 0),
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
                                      Format.convertTo(muridpt_10, 0),
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
                                      Format.convertTo(sekolahpt_11, 0),
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
                                      Format.convertTo(gurupt_11, 0),
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
                                      Format.convertTo(muridpt_11, 0),
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
                                      Format.convertTo(sekolahpt_12, 0),
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
                                      Format.convertTo(gurupt_12, 0),
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
                                      Format.convertTo(muridpt_12, 0),
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
                                      Format.convertTo(sekolahpt_13, 0),
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
                                      Format.convertTo(gurupt_13, 0),
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
                                      Format.convertTo(muridpt_13, 0),
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
                                      Format.convertTo(sekolahpt_14, 0),
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
                                      Format.convertTo(gurupt_14, 0),
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
                                      Format.convertTo(muridpt_14, 0),
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
                                      Format.convertTo(sekolahpt_15, 0),
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
                                      Format.convertTo(gurupt_15, 0),
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
                                      Format.convertTo(muridpt_15, 0),
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
                                      Format.convertTo(sekolahpt_16, 0),
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
                                      Format.convertTo(gurupt_16, 0),
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
                                      Format.convertTo(muridpt_16, 0),
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
                                      Format.convertTo(sekolahpt_17, 0),
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
                                      Format.convertTo(gurupt_17, 0),
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
                                      Format.convertTo(muridpt_17, 0),
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
                                      Format.convertTo(sekolahpt_18, 0),
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
                                      Format.convertTo(gurupt_18, 0),
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
                                      Format.convertTo(muridpt_18, 0),
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
                                      Format.convertTo(sekolahpt_19, 0),
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
                                      Format.convertTo(gurupt_19, 0),
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
                                      Format.convertTo(muridpt_19, 0),
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
                                      Format.convertTo(sekolahpt_20, 0),
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
                                      Format.convertTo(gurupt_20, 0),
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
                                      Format.convertTo(muridpt_20, 0),
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
                                      Format.convertTo(sekolahpt_21, 0),
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
                                      Format.convertTo(gurupt_21, 0),
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
                                      Format.convertTo(muridpt_21, 0),
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
                                      Format.convertTo(sekolahpt_22, 0),
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
                                      Format.convertTo(gurupt_22, 0),
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
                                      Format.convertTo(muridpt_22, 0),
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
                                      Format.convertTo(sekolahpt_23, 0),
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
                                      Format.convertTo(gurupt_23, 0),
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
                                      Format.convertTo(muridpt_23, 0),
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
                                      Format.convertTo(sekolahpt_24, 0),
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
                                      Format.convertTo(gurupt_24, 0),
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
                                      Format.convertTo(muridpt_24, 0),
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
                                      Format.convertTo(sekolahpt_25, 0),
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
                                      Format.convertTo(gurupt_25, 0),
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
                                      Format.convertTo(muridpt_25, 0),
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
                                      Format.convertTo(sekolahpt_26, 0),
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
                                      Format.convertTo(gurupt_26, 0),
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
                                      Format.convertTo(muridpt_26, 0),
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
                                      Format.convertTo(sekolahpt_27, 0),
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
                                      Format.convertTo(gurupt_27, 0),
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
                                      Format.convertTo(muridpt_27, 0),
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
                                      Format.convertTo(sekolahpt_28, 0),
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
                                      Format.convertTo(gurupt_28, 0),
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
                                      Format.convertTo(muridpt_28, 0),
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
                                      Format.convertTo(sekolahpt_29, 0),
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
                                      Format.convertTo(gurupt_29, 0),
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
                                      Format.convertTo(muridpt_29, 0),
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
                                      Format.convertTo(sekolahpt_30, 0),
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
                                      Format.convertTo(gurupt_30, 0),
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
                                      Format.convertTo(muridpt_30, 0),
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
                                      Format.convertTo(sekolahpt_31, 0),
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
                                      Format.convertTo(gurupt_31, 0),
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
                                      Format.convertTo(muridpt_31, 0),
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
                                      Format.convertTo(sekolahpt_32, 0),
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
                                      Format.convertTo(gurupt_32, 0),
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
                                      Format.convertTo(muridpt_32, 0),
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
                                      Format.convertTo(sekolahpt_33, 0),
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
                                      Format.convertTo(gurupt_33, 0),
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
                                      Format.convertTo(muridpt_33, 0),
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
                                      Format.convertTo(sekolahpt_34, 0),
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
                                      Format.convertTo(gurupt_34, 0),
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
                                      Format.convertTo(muridpt_34, 0),
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
                                      Format.convertTo(sekolahpt_35, 0),
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
                                      Format.convertTo(gurupt_35, 0),
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
                                      Format.convertTo(muridpt_35, 0),
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
                                      Format.convertTo(sekolahpt_36, 0),
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
                                      Format.convertTo(gurupt_36, 0),
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
                                      Format.convertTo(muridpt_36, 0),
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
