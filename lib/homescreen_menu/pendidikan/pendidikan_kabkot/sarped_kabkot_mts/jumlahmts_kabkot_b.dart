// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// 2022/2023 jumlah mts

class RepositoryPendidikanKabkotJumlahmts {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmsmp';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotJumlahmts.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahmts {
  final int id;
  final String wilayah;
  final String sekolahmts_n2;
  final String gurumts_n2;
  final String muridmts_n2;
  final String tahun;

  ModelPendidikanKabkotJumlahmts({
    required this.id,
    required this.wilayah,
    required this.sekolahmts_n2,
    required this.gurumts_n2,
    required this.muridmts_n2,
    required this.tahun,
  });

  factory ModelPendidikanKabkotJumlahmts.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahmts(
      id: json['id'],
      wilayah: json['wilayah'],
      sekolahmts_n2: json['sekolahmts_n2'],
      gurumts_n2: json['gurumts_n2'],
      muridmts_n2: json['muridmts_n2'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahmtsB extends StatefulWidget {
  const PendidikanKabkotJumlahmtsB({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahmtsB> createState() =>
      _PendidikanKabkotJumlahmtsBState();
}

RepositoryPendidikanKabkotJumlahmts repositorypendidikan =
    RepositoryPendidikanKabkotJumlahmts();

class _PendidikanKabkotJumlahmtsBState
    extends State<PendidikanKabkotJumlahmtsB> {
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
                double sekolahmts_1 = double.parse(
                  isipendidikan[index = 0].sekolahmts_n2,
                );
                double sekolahmts_2 = double.parse(
                  isipendidikan[index = 1].sekolahmts_n2,
                );
                double sekolahmts_3 = double.parse(
                  isipendidikan[index = 2].sekolahmts_n2,
                );
                double sekolahmts_4 = double.parse(
                  isipendidikan[index = 3].sekolahmts_n2,
                );
                double sekolahmts_5 = double.parse(
                  isipendidikan[index = 4].sekolahmts_n2,
                );
                double sekolahmts_6 = double.parse(
                  isipendidikan[index = 5].sekolahmts_n2,
                );
                double sekolahmts_7 = double.parse(
                  isipendidikan[index = 6].sekolahmts_n2,
                );
                double sekolahmts_8 = double.parse(
                  isipendidikan[index = 7].sekolahmts_n2,
                );
                double sekolahmts_9 = double.parse(
                  isipendidikan[index = 8].sekolahmts_n2,
                );
                double sekolahmts_10 = double.parse(
                  isipendidikan[index = 9].sekolahmts_n2,
                );
                double sekolahmts_11 = double.parse(
                  isipendidikan[index = 10].sekolahmts_n2,
                );
                double sekolahmts_12 = double.parse(
                  isipendidikan[index = 11].sekolahmts_n2,
                );
                double sekolahmts_13 = double.parse(
                  isipendidikan[index = 12].sekolahmts_n2,
                );
                double sekolahmts_14 = double.parse(
                  isipendidikan[index = 13].sekolahmts_n2,
                );
                double sekolahmts_15 = double.parse(
                  isipendidikan[index = 14].sekolahmts_n2,
                );
                double sekolahmts_16 = double.parse(
                  isipendidikan[index = 15].sekolahmts_n2,
                );
                double sekolahmts_17 = double.parse(
                  isipendidikan[index = 16].sekolahmts_n2,
                );
                double sekolahmts_18 = double.parse(
                  isipendidikan[index = 17].sekolahmts_n2,
                );
                double sekolahmts_19 = double.parse(
                  isipendidikan[index = 18].sekolahmts_n2,
                );
                double sekolahmts_20 = double.parse(
                  isipendidikan[index = 19].sekolahmts_n2,
                );
                double sekolahmts_21 = double.parse(
                  isipendidikan[index = 20].sekolahmts_n2,
                );
                double sekolahmts_22 = double.parse(
                  isipendidikan[index = 21].sekolahmts_n2,
                );
                double sekolahmts_23 = double.parse(
                  isipendidikan[index = 22].sekolahmts_n2,
                );
                double sekolahmts_24 = double.parse(
                  isipendidikan[index = 23].sekolahmts_n2,
                );
                double sekolahmts_25 = double.parse(
                  isipendidikan[index = 24].sekolahmts_n2,
                );
                double sekolahmts_26 = double.parse(
                  isipendidikan[index = 25].sekolahmts_n2,
                );
                double sekolahmts_27 = double.parse(
                  isipendidikan[index = 26].sekolahmts_n2,
                );
                double sekolahmts_28 = double.parse(
                  isipendidikan[index = 27].sekolahmts_n2,
                );
                double sekolahmts_29 = double.parse(
                  isipendidikan[index = 28].sekolahmts_n2,
                );
                double sekolahmts_30 = double.parse(
                  isipendidikan[index = 29].sekolahmts_n2,
                );
                double sekolahmts_31 = double.parse(
                  isipendidikan[index = 30].sekolahmts_n2,
                );
                double sekolahmts_32 = double.parse(
                  isipendidikan[index = 31].sekolahmts_n2,
                );
                double sekolahmts_33 = double.parse(
                  isipendidikan[index = 32].sekolahmts_n2,
                );
                double sekolahmts_34 = double.parse(
                  isipendidikan[index = 33].sekolahmts_n2,
                );
                double sekolahmts_35 = double.parse(
                  isipendidikan[index = 34].sekolahmts_n2,
                );
                double sekolahmts_36 = double.parse(
                  isipendidikan[index = 35].sekolahmts_n2,
                );

                double gurumts_1 = double.parse(
                  isipendidikan[index = 0].gurumts_n2,
                );
                double gurumts_2 = double.parse(
                  isipendidikan[index = 1].gurumts_n2,
                );
                double gurumts_3 = double.parse(
                  isipendidikan[index = 2].gurumts_n2,
                );
                double gurumts_4 = double.parse(
                  isipendidikan[index = 3].gurumts_n2,
                );
                double gurumts_5 = double.parse(
                  isipendidikan[index = 4].gurumts_n2,
                );
                double gurumts_6 = double.parse(
                  isipendidikan[index = 5].gurumts_n2,
                );
                double gurumts_7 = double.parse(
                  isipendidikan[index = 6].gurumts_n2,
                );
                double gurumts_8 = double.parse(
                  isipendidikan[index = 7].gurumts_n2,
                );
                double gurumts_9 = double.parse(
                  isipendidikan[index = 8].gurumts_n2,
                );
                double gurumts_10 = double.parse(
                  isipendidikan[index = 9].gurumts_n2,
                );
                double gurumts_11 = double.parse(
                  isipendidikan[index = 10].gurumts_n2,
                );
                double gurumts_12 = double.parse(
                  isipendidikan[index = 11].gurumts_n2,
                );
                double gurumts_13 = double.parse(
                  isipendidikan[index = 12].gurumts_n2,
                );
                double gurumts_14 = double.parse(
                  isipendidikan[index = 13].gurumts_n2,
                );
                double gurumts_15 = double.parse(
                  isipendidikan[index = 14].gurumts_n2,
                );
                double gurumts_16 = double.parse(
                  isipendidikan[index = 15].gurumts_n2,
                );
                double gurumts_17 = double.parse(
                  isipendidikan[index = 16].gurumts_n2,
                );
                double gurumts_18 = double.parse(
                  isipendidikan[index = 17].gurumts_n2,
                );
                double gurumts_19 = double.parse(
                  isipendidikan[index = 18].gurumts_n2,
                );
                double gurumts_20 = double.parse(
                  isipendidikan[index = 19].gurumts_n2,
                );
                double gurumts_21 = double.parse(
                  isipendidikan[index = 20].gurumts_n2,
                );
                double gurumts_22 = double.parse(
                  isipendidikan[index = 21].gurumts_n2,
                );
                double gurumts_23 = double.parse(
                  isipendidikan[index = 22].gurumts_n2,
                );
                double gurumts_24 = double.parse(
                  isipendidikan[index = 23].gurumts_n2,
                );
                double gurumts_25 = double.parse(
                  isipendidikan[index = 24].gurumts_n2,
                );
                double gurumts_26 = double.parse(
                  isipendidikan[index = 25].gurumts_n2,
                );
                double gurumts_27 = double.parse(
                  isipendidikan[index = 26].gurumts_n2,
                );
                double gurumts_28 = double.parse(
                  isipendidikan[index = 27].gurumts_n2,
                );
                double gurumts_29 = double.parse(
                  isipendidikan[index = 28].gurumts_n2,
                );
                double gurumts_30 = double.parse(
                  isipendidikan[index = 29].gurumts_n2,
                );
                double gurumts_31 = double.parse(
                  isipendidikan[index = 30].gurumts_n2,
                );
                double gurumts_32 = double.parse(
                  isipendidikan[index = 31].gurumts_n2,
                );
                double gurumts_33 = double.parse(
                  isipendidikan[index = 32].gurumts_n2,
                );
                double gurumts_34 = double.parse(
                  isipendidikan[index = 33].gurumts_n2,
                );
                double gurumts_35 = double.parse(
                  isipendidikan[index = 34].gurumts_n2,
                );
                double gurumts_36 = double.parse(
                  isipendidikan[index = 35].gurumts_n2,
                );

                double muridmts_1 = double.parse(
                  isipendidikan[index = 0].muridmts_n2,
                );
                double muridmts_2 = double.parse(
                  isipendidikan[index = 1].muridmts_n2,
                );
                double muridmts_3 = double.parse(
                  isipendidikan[index = 2].muridmts_n2,
                );
                double muridmts_4 = double.parse(
                  isipendidikan[index = 3].muridmts_n2,
                );
                double muridmts_5 = double.parse(
                  isipendidikan[index = 4].muridmts_n2,
                );
                double muridmts_6 = double.parse(
                  isipendidikan[index = 5].muridmts_n2,
                );
                double muridmts_7 = double.parse(
                  isipendidikan[index = 6].muridmts_n2,
                );
                double muridmts_8 = double.parse(
                  isipendidikan[index = 7].muridmts_n2,
                );
                double muridmts_9 = double.parse(
                  isipendidikan[index = 8].muridmts_n2,
                );
                double muridmts_10 = double.parse(
                  isipendidikan[index = 9].muridmts_n2,
                );
                double muridmts_11 = double.parse(
                  isipendidikan[index = 10].muridmts_n2,
                );
                double muridmts_12 = double.parse(
                  isipendidikan[index = 11].muridmts_n2,
                );
                double muridmts_13 = double.parse(
                  isipendidikan[index = 12].muridmts_n2,
                );
                double muridmts_14 = double.parse(
                  isipendidikan[index = 13].muridmts_n2,
                );
                double muridmts_15 = double.parse(
                  isipendidikan[index = 14].muridmts_n2,
                );
                double muridmts_16 = double.parse(
                  isipendidikan[index = 15].muridmts_n2,
                );
                double muridmts_17 = double.parse(
                  isipendidikan[index = 16].muridmts_n2,
                );
                double muridmts_18 = double.parse(
                  isipendidikan[index = 17].muridmts_n2,
                );
                double muridmts_19 = double.parse(
                  isipendidikan[index = 18].muridmts_n2,
                );
                double muridmts_20 = double.parse(
                  isipendidikan[index = 19].muridmts_n2,
                );
                double muridmts_21 = double.parse(
                  isipendidikan[index = 20].muridmts_n2,
                );
                double muridmts_22 = double.parse(
                  isipendidikan[index = 21].muridmts_n2,
                );
                double muridmts_23 = double.parse(
                  isipendidikan[index = 22].muridmts_n2,
                );
                double muridmts_24 = double.parse(
                  isipendidikan[index = 23].muridmts_n2,
                );
                double muridmts_25 = double.parse(
                  isipendidikan[index = 24].muridmts_n2,
                );
                double muridmts_26 = double.parse(
                  isipendidikan[index = 25].muridmts_n2,
                );
                double muridmts_27 = double.parse(
                  isipendidikan[index = 26].muridmts_n2,
                );
                double muridmts_28 = double.parse(
                  isipendidikan[index = 27].muridmts_n2,
                );
                double muridmts_29 = double.parse(
                  isipendidikan[index = 28].muridmts_n2,
                );
                double muridmts_30 = double.parse(
                  isipendidikan[index = 29].muridmts_n2,
                );
                double muridmts_31 = double.parse(
                  isipendidikan[index = 30].muridmts_n2,
                );
                double muridmts_32 = double.parse(
                  isipendidikan[index = 31].muridmts_n2,
                );
                double muridmts_33 = double.parse(
                  isipendidikan[index = 32].muridmts_n2,
                );
                double muridmts_34 = double.parse(
                  isipendidikan[index = 33].muridmts_n2,
                );
                double muridmts_35 = double.parse(
                  isipendidikan[index = 34].muridmts_n2,
                );
                double muridmts_36 = double.parse(
                  isipendidikan[index = 35].muridmts_n2,
                );

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
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.32,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 20,
                                  top: 3,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Kabupaten/",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Jumlah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 5,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Jumlah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.02,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 5,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Jumlah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
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
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.32,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 20,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Sekolah",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Guru",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.03,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Murid",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          left: 0,
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_1, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_1, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_1, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_2, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_2, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_2, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_3, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_3, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_3, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_4, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_4, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_4, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_5, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_5, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_5, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_6, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_6, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_6, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
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
                                      width: 0.32 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_7, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_7, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_7, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_8, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_8, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_8, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_9, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_9, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_9, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_10, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_10, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_10, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_11, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_11, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_11, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_12, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_12, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_12, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_13, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_13, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_13, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_14, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_14, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_14, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_15, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_15, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_15, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_16, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_16, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_16, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_17, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_17, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_17, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_18, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_18, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_18, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_19, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_19, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_19, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_20, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_20, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_20, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_21, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_21, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_21, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_22, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_22, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_22, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_23, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_23, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_23, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_24, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_24, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_24, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_25, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_25, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_25, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_26, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_26, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_26, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_27, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_27, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_27, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_28, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_28, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_28, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_29, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_29, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_29, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_30, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_30, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_30, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_31, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_31, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_31, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_32, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_32, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_32, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_33, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_33, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_33, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_34, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_34, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_34, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_35, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_35, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_35, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.normal,
                                          ),
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
                                color: Colors.orange,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.32 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 2,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          kab36,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(sekolahmts_36, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(gurumts_36, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.22 * screenWidth,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          right: 20,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          Format.convertTo(muridmts_36, 0),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.5,
                                            fontWeight: FontWeight.bold,
                                          ),
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
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            ' Provinsi Jawa Tengah Dalam Angka',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(height: 20),
                            ],
                          ),
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
