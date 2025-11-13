// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// 2023/2024 jumlah ma

class RepositoryPendidikanKabkotJumlahma {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmsma';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipendidikan) =>
                ModelPendidikanKabkotJumlahma.fromJson(isipendidikan))
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahma {
  final int id;
  final String wilayah;
  final String sekolahma_n3;
  final String guruma_n3;
  final String muridma_n3;
  final String tahun;

  ModelPendidikanKabkotJumlahma(
      {required this.id,
      required this.wilayah,
      required this.sekolahma_n3,
      required this.guruma_n3,
      required this.muridma_n3,
      required this.tahun});

  factory ModelPendidikanKabkotJumlahma.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahma(
      id: json['id'],
      wilayah: json['wilayah'],
      sekolahma_n3: json['sekolahma_n3'],
      guruma_n3: json['guruma_n3'],
      muridma_n3: json['muridma_n3'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahmaC extends StatefulWidget {
  const PendidikanKabkotJumlahmaC({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahmaC> createState() =>
      _PendidikanKabkotJumlahmaCState();
}

RepositoryPendidikanKabkotJumlahma repositorypendidikan =
    RepositoryPendidikanKabkotJumlahma();

class _PendidikanKabkotJumlahmaCState extends State<PendidikanKabkotJumlahmaC> {
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
              double sekolahma_1 =
                  double.parse(isipendidikan[index = 0].sekolahma_n3);
              double sekolahma_2 =
                  double.parse(isipendidikan[index = 1].sekolahma_n3);
              double sekolahma_3 =
                  double.parse(isipendidikan[index = 2].sekolahma_n3);
              double sekolahma_4 =
                  double.parse(isipendidikan[index = 3].sekolahma_n3);
              double sekolahma_5 =
                  double.parse(isipendidikan[index = 4].sekolahma_n3);
              double sekolahma_6 =
                  double.parse(isipendidikan[index = 5].sekolahma_n3);
              double sekolahma_7 =
                  double.parse(isipendidikan[index = 6].sekolahma_n3);
              double sekolahma_8 =
                  double.parse(isipendidikan[index = 7].sekolahma_n3);
              double sekolahma_9 =
                  double.parse(isipendidikan[index = 8].sekolahma_n3);
              double sekolahma_10 =
                  double.parse(isipendidikan[index = 9].sekolahma_n3);
              double sekolahma_11 =
                  double.parse(isipendidikan[index = 10].sekolahma_n3);
              double sekolahma_12 =
                  double.parse(isipendidikan[index = 11].sekolahma_n3);
              double sekolahma_13 =
                  double.parse(isipendidikan[index = 12].sekolahma_n3);
              double sekolahma_14 =
                  double.parse(isipendidikan[index = 13].sekolahma_n3);
              double sekolahma_15 =
                  double.parse(isipendidikan[index = 14].sekolahma_n3);
              double sekolahma_16 =
                  double.parse(isipendidikan[index = 15].sekolahma_n3);
              double sekolahma_17 =
                  double.parse(isipendidikan[index = 16].sekolahma_n3);
              double sekolahma_18 =
                  double.parse(isipendidikan[index = 17].sekolahma_n3);
              double sekolahma_19 =
                  double.parse(isipendidikan[index = 18].sekolahma_n3);
              double sekolahma_20 =
                  double.parse(isipendidikan[index = 19].sekolahma_n3);
              double sekolahma_21 =
                  double.parse(isipendidikan[index = 20].sekolahma_n3);
              double sekolahma_22 =
                  double.parse(isipendidikan[index = 21].sekolahma_n3);
              double sekolahma_23 =
                  double.parse(isipendidikan[index = 22].sekolahma_n3);
              double sekolahma_24 =
                  double.parse(isipendidikan[index = 23].sekolahma_n3);
              double sekolahma_25 =
                  double.parse(isipendidikan[index = 24].sekolahma_n3);
              double sekolahma_26 =
                  double.parse(isipendidikan[index = 25].sekolahma_n3);
              double sekolahma_27 =
                  double.parse(isipendidikan[index = 26].sekolahma_n3);
              double sekolahma_28 =
                  double.parse(isipendidikan[index = 27].sekolahma_n3);
              double sekolahma_29 =
                  double.parse(isipendidikan[index = 28].sekolahma_n3);
              double sekolahma_30 =
                  double.parse(isipendidikan[index = 29].sekolahma_n3);
              double sekolahma_31 =
                  double.parse(isipendidikan[index = 30].sekolahma_n3);
              double sekolahma_32 =
                  double.parse(isipendidikan[index = 31].sekolahma_n3);
              double sekolahma_33 =
                  double.parse(isipendidikan[index = 32].sekolahma_n3);
              double sekolahma_34 =
                  double.parse(isipendidikan[index = 33].sekolahma_n3);
              double sekolahma_35 =
                  double.parse(isipendidikan[index = 34].sekolahma_n3);
              double sekolahma_36 =
                  double.parse(isipendidikan[index = 35].sekolahma_n3);

              double guruma_1 =
                  double.parse(isipendidikan[index = 0].guruma_n3);
              double guruma_2 =
                  double.parse(isipendidikan[index = 1].guruma_n3);
              double guruma_3 =
                  double.parse(isipendidikan[index = 2].guruma_n3);
              double guruma_4 =
                  double.parse(isipendidikan[index = 3].guruma_n3);
              double guruma_5 =
                  double.parse(isipendidikan[index = 4].guruma_n3);
              double guruma_6 =
                  double.parse(isipendidikan[index = 5].guruma_n3);
              double guruma_7 =
                  double.parse(isipendidikan[index = 6].guruma_n3);
              double guruma_8 =
                  double.parse(isipendidikan[index = 7].guruma_n3);
              double guruma_9 =
                  double.parse(isipendidikan[index = 8].guruma_n3);
              double guruma_10 =
                  double.parse(isipendidikan[index = 9].guruma_n3);
              double guruma_11 =
                  double.parse(isipendidikan[index = 10].guruma_n3);
              double guruma_12 =
                  double.parse(isipendidikan[index = 11].guruma_n3);
              double guruma_13 =
                  double.parse(isipendidikan[index = 12].guruma_n3);
              double guruma_14 =
                  double.parse(isipendidikan[index = 13].guruma_n3);
              double guruma_15 =
                  double.parse(isipendidikan[index = 14].guruma_n3);
              double guruma_16 =
                  double.parse(isipendidikan[index = 15].guruma_n3);
              double guruma_17 =
                  double.parse(isipendidikan[index = 16].guruma_n3);
              double guruma_18 =
                  double.parse(isipendidikan[index = 17].guruma_n3);
              double guruma_19 =
                  double.parse(isipendidikan[index = 18].guruma_n3);
              double guruma_20 =
                  double.parse(isipendidikan[index = 19].guruma_n3);
              double guruma_21 =
                  double.parse(isipendidikan[index = 20].guruma_n3);
              double guruma_22 =
                  double.parse(isipendidikan[index = 21].guruma_n3);
              double guruma_23 =
                  double.parse(isipendidikan[index = 22].guruma_n3);
              double guruma_24 =
                  double.parse(isipendidikan[index = 23].guruma_n3);
              double guruma_25 =
                  double.parse(isipendidikan[index = 24].guruma_n3);
              double guruma_26 =
                  double.parse(isipendidikan[index = 25].guruma_n3);
              double guruma_27 =
                  double.parse(isipendidikan[index = 26].guruma_n3);
              double guruma_28 =
                  double.parse(isipendidikan[index = 27].guruma_n3);
              double guruma_29 =
                  double.parse(isipendidikan[index = 28].guruma_n3);
              double guruma_30 =
                  double.parse(isipendidikan[index = 29].guruma_n3);
              double guruma_31 =
                  double.parse(isipendidikan[index = 30].guruma_n3);
              double guruma_32 =
                  double.parse(isipendidikan[index = 31].guruma_n3);
              double guruma_33 =
                  double.parse(isipendidikan[index = 32].guruma_n3);
              double guruma_34 =
                  double.parse(isipendidikan[index = 33].guruma_n3);
              double guruma_35 =
                  double.parse(isipendidikan[index = 34].guruma_n3);
              double guruma_36 =
                  double.parse(isipendidikan[index = 35].guruma_n3);

              double muridma_1 =
                  double.parse(isipendidikan[index = 0].muridma_n3);
              double muridma_2 =
                  double.parse(isipendidikan[index = 1].muridma_n3);
              double muridma_3 =
                  double.parse(isipendidikan[index = 2].muridma_n3);
              double muridma_4 =
                  double.parse(isipendidikan[index = 3].muridma_n3);
              double muridma_5 =
                  double.parse(isipendidikan[index = 4].muridma_n3);
              double muridma_6 =
                  double.parse(isipendidikan[index = 5].muridma_n3);
              double muridma_7 =
                  double.parse(isipendidikan[index = 6].muridma_n3);
              double muridma_8 =
                  double.parse(isipendidikan[index = 7].muridma_n3);
              double muridma_9 =
                  double.parse(isipendidikan[index = 8].muridma_n3);
              double muridma_10 =
                  double.parse(isipendidikan[index = 9].muridma_n3);
              double muridma_11 =
                  double.parse(isipendidikan[index = 10].muridma_n3);
              double muridma_12 =
                  double.parse(isipendidikan[index = 11].muridma_n3);
              double muridma_13 =
                  double.parse(isipendidikan[index = 12].muridma_n3);
              double muridma_14 =
                  double.parse(isipendidikan[index = 13].muridma_n3);
              double muridma_15 =
                  double.parse(isipendidikan[index = 14].muridma_n3);
              double muridma_16 =
                  double.parse(isipendidikan[index = 15].muridma_n3);
              double muridma_17 =
                  double.parse(isipendidikan[index = 16].muridma_n3);
              double muridma_18 =
                  double.parse(isipendidikan[index = 17].muridma_n3);
              double muridma_19 =
                  double.parse(isipendidikan[index = 18].muridma_n3);
              double muridma_20 =
                  double.parse(isipendidikan[index = 19].muridma_n3);
              double muridma_21 =
                  double.parse(isipendidikan[index = 20].muridma_n3);
              double muridma_22 =
                  double.parse(isipendidikan[index = 21].muridma_n3);
              double muridma_23 =
                  double.parse(isipendidikan[index = 22].muridma_n3);
              double muridma_24 =
                  double.parse(isipendidikan[index = 23].muridma_n3);
              double muridma_25 =
                  double.parse(isipendidikan[index = 24].muridma_n3);
              double muridma_26 =
                  double.parse(isipendidikan[index = 25].muridma_n3);
              double muridma_27 =
                  double.parse(isipendidikan[index = 26].muridma_n3);
              double muridma_28 =
                  double.parse(isipendidikan[index = 27].muridma_n3);
              double muridma_29 =
                  double.parse(isipendidikan[index = 28].muridma_n3);
              double muridma_30 =
                  double.parse(isipendidikan[index = 29].muridma_n3);
              double muridma_31 =
                  double.parse(isipendidikan[index = 30].muridma_n3);
              double muridma_32 =
                  double.parse(isipendidikan[index = 31].muridma_n3);
              double muridma_33 =
                  double.parse(isipendidikan[index = 32].muridma_n3);
              double muridma_34 =
                  double.parse(isipendidikan[index = 33].muridma_n3);
              double muridma_35 =
                  double.parse(isipendidikan[index = 34].muridma_n3);
              double muridma_36 =
                  double.parse(isipendidikan[index = 35].muridma_n3);

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
                                      Format.convertTo(sekolahma_1, 0),
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
                                      Format.convertTo(guruma_1, 0),
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
                                      Format.convertTo(muridma_1, 0),
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
                                      Format.convertTo(sekolahma_2, 0),
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
                                      Format.convertTo(guruma_2, 0),
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
                                      Format.convertTo(muridma_2, 0),
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
                                      Format.convertTo(sekolahma_3, 0),
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
                                      Format.convertTo(guruma_3, 0),
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
                                      Format.convertTo(muridma_3, 0),
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
                                      Format.convertTo(sekolahma_4, 0),
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
                                      Format.convertTo(guruma_4, 0),
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
                                      Format.convertTo(muridma_4, 0),
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
                                      Format.convertTo(sekolahma_5, 0),
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
                                      Format.convertTo(guruma_5, 0),
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
                                      Format.convertTo(muridma_5, 0),
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
                                      Format.convertTo(sekolahma_6, 0),
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
                                      Format.convertTo(guruma_6, 0),
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
                                      Format.convertTo(muridma_6, 0),
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
                                      Format.convertTo(sekolahma_7, 0),
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
                                      Format.convertTo(guruma_7, 0),
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
                                      Format.convertTo(muridma_7, 0),
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
                                      Format.convertTo(sekolahma_8, 0),
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
                                      Format.convertTo(guruma_8, 0),
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
                                      Format.convertTo(muridma_8, 0),
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
                                      Format.convertTo(sekolahma_9, 0),
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
                                      Format.convertTo(guruma_9, 0),
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
                                      Format.convertTo(muridma_9, 0),
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
                                      Format.convertTo(sekolahma_10, 0),
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
                                      Format.convertTo(guruma_10, 0),
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
                                      Format.convertTo(muridma_10, 0),
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
                                      Format.convertTo(sekolahma_11, 0),
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
                                      Format.convertTo(guruma_11, 0),
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
                                      Format.convertTo(muridma_11, 0),
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
                                      Format.convertTo(sekolahma_12, 0),
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
                                      Format.convertTo(guruma_12, 0),
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
                                      Format.convertTo(muridma_12, 0),
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
                                      Format.convertTo(sekolahma_13, 0),
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
                                      Format.convertTo(guruma_13, 0),
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
                                      Format.convertTo(muridma_13, 0),
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
                                      Format.convertTo(sekolahma_14, 0),
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
                                      Format.convertTo(guruma_14, 0),
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
                                      Format.convertTo(muridma_14, 0),
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
                                      Format.convertTo(sekolahma_15, 0),
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
                                      Format.convertTo(guruma_15, 0),
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
                                      Format.convertTo(muridma_15, 0),
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
                                      Format.convertTo(sekolahma_16, 0),
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
                                      Format.convertTo(guruma_16, 0),
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
                                      Format.convertTo(muridma_16, 0),
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
                                      Format.convertTo(sekolahma_17, 0),
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
                                      Format.convertTo(guruma_17, 0),
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
                                      Format.convertTo(muridma_17, 0),
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
                                      Format.convertTo(sekolahma_18, 0),
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
                                      Format.convertTo(guruma_18, 0),
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
                                      Format.convertTo(muridma_18, 0),
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
                                      Format.convertTo(sekolahma_19, 0),
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
                                      Format.convertTo(guruma_19, 0),
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
                                      Format.convertTo(muridma_19, 0),
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
                                      Format.convertTo(sekolahma_20, 0),
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
                                      Format.convertTo(guruma_20, 0),
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
                                      Format.convertTo(muridma_20, 0),
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
                                      Format.convertTo(sekolahma_21, 0),
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
                                      Format.convertTo(guruma_21, 0),
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
                                      Format.convertTo(muridma_21, 0),
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
                                      Format.convertTo(sekolahma_22, 0),
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
                                      Format.convertTo(guruma_22, 0),
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
                                      Format.convertTo(muridma_22, 0),
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
                                      Format.convertTo(sekolahma_23, 0),
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
                                      Format.convertTo(guruma_23, 0),
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
                                      Format.convertTo(muridma_23, 0),
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
                                      Format.convertTo(sekolahma_24, 0),
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
                                      Format.convertTo(guruma_24, 0),
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
                                      Format.convertTo(muridma_24, 0),
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
                                      Format.convertTo(sekolahma_25, 0),
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
                                      Format.convertTo(guruma_25, 0),
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
                                      Format.convertTo(muridma_25, 0),
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
                                      Format.convertTo(sekolahma_26, 0),
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
                                      Format.convertTo(guruma_26, 0),
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
                                      Format.convertTo(muridma_26, 0),
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
                                      Format.convertTo(sekolahma_27, 0),
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
                                      Format.convertTo(guruma_27, 0),
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
                                      Format.convertTo(muridma_27, 0),
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
                                      Format.convertTo(sekolahma_28, 0),
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
                                      Format.convertTo(guruma_28, 0),
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
                                      Format.convertTo(muridma_28, 0),
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
                                      Format.convertTo(sekolahma_29, 0),
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
                                      Format.convertTo(guruma_29, 0),
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
                                      Format.convertTo(muridma_29, 0),
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
                                      Format.convertTo(sekolahma_30, 0),
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
                                      Format.convertTo(guruma_30, 0),
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
                                      Format.convertTo(muridma_30, 0),
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
                                      Format.convertTo(sekolahma_31, 0),
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
                                      Format.convertTo(guruma_31, 0),
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
                                      Format.convertTo(muridma_31, 0),
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
                                      Format.convertTo(sekolahma_32, 0),
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
                                      Format.convertTo(guruma_32, 0),
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
                                      Format.convertTo(muridma_32, 0),
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
                                      Format.convertTo(sekolahma_33, 0),
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
                                      Format.convertTo(guruma_33, 0),
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
                                      Format.convertTo(muridma_33, 0),
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
                                      Format.convertTo(sekolahma_34, 0),
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
                                      Format.convertTo(guruma_34, 0),
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
                                      Format.convertTo(muridma_34, 0),
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
                                      Format.convertTo(sekolahma_35, 0),
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
                                      Format.convertTo(guruma_35, 0),
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
                                      Format.convertTo(muridma_35, 0),
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
                                      Format.convertTo(sekolahma_36, 0),
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
                                      Format.convertTo(guruma_36, 0),
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
                                      Format.convertTo(muridma_36, 0),
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
