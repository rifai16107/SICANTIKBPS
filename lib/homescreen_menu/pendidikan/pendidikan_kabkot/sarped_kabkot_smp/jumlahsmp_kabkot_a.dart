// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// 2021/2022 jumlah smp

class RepositoryPendidikanKabkotJumlahsmp {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmsmp';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotJumlahsmp.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahsmp {
  final int id;
  final String wilayah;
  final String sekolahsmp_n1;
  final String gurusmp_n1;
  final String muridsmp_n1;
  final String tahun;

  ModelPendidikanKabkotJumlahsmp({
    required this.id,
    required this.wilayah,
    required this.sekolahsmp_n1,
    required this.gurusmp_n1,
    required this.muridsmp_n1,
    required this.tahun,
  });

  factory ModelPendidikanKabkotJumlahsmp.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahsmp(
      id: json['id'],
      wilayah: json['wilayah'],
      sekolahsmp_n1: json['sekolahsmp_n1'],
      gurusmp_n1: json['gurusmp_n1'],
      muridsmp_n1: json['muridsmp_n1'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahsmpA extends StatefulWidget {
  const PendidikanKabkotJumlahsmpA({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahsmpA> createState() =>
      _PendidikanKabkotJumlahsmpAState();
}

RepositoryPendidikanKabkotJumlahsmp repositorypendidikan =
    RepositoryPendidikanKabkotJumlahsmp();

class _PendidikanKabkotJumlahsmpAState
    extends State<PendidikanKabkotJumlahsmpA> {
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
                double sekolahsmp_1 = double.parse(
                  isipendidikan[index = 0].sekolahsmp_n1,
                );
                double sekolahsmp_2 = double.parse(
                  isipendidikan[index = 1].sekolahsmp_n1,
                );
                double sekolahsmp_3 = double.parse(
                  isipendidikan[index = 2].sekolahsmp_n1,
                );
                double sekolahsmp_4 = double.parse(
                  isipendidikan[index = 3].sekolahsmp_n1,
                );
                double sekolahsmp_5 = double.parse(
                  isipendidikan[index = 4].sekolahsmp_n1,
                );
                double sekolahsmp_6 = double.parse(
                  isipendidikan[index = 5].sekolahsmp_n1,
                );
                double sekolahsmp_7 = double.parse(
                  isipendidikan[index = 6].sekolahsmp_n1,
                );
                double sekolahsmp_8 = double.parse(
                  isipendidikan[index = 7].sekolahsmp_n1,
                );
                double sekolahsmp_9 = double.parse(
                  isipendidikan[index = 8].sekolahsmp_n1,
                );
                double sekolahsmp_10 = double.parse(
                  isipendidikan[index = 9].sekolahsmp_n1,
                );
                double sekolahsmp_11 = double.parse(
                  isipendidikan[index = 10].sekolahsmp_n1,
                );
                double sekolahsmp_12 = double.parse(
                  isipendidikan[index = 11].sekolahsmp_n1,
                );
                double sekolahsmp_13 = double.parse(
                  isipendidikan[index = 12].sekolahsmp_n1,
                );
                double sekolahsmp_14 = double.parse(
                  isipendidikan[index = 13].sekolahsmp_n1,
                );
                double sekolahsmp_15 = double.parse(
                  isipendidikan[index = 14].sekolahsmp_n1,
                );
                double sekolahsmp_16 = double.parse(
                  isipendidikan[index = 15].sekolahsmp_n1,
                );
                double sekolahsmp_17 = double.parse(
                  isipendidikan[index = 16].sekolahsmp_n1,
                );
                double sekolahsmp_18 = double.parse(
                  isipendidikan[index = 17].sekolahsmp_n1,
                );
                double sekolahsmp_19 = double.parse(
                  isipendidikan[index = 18].sekolahsmp_n1,
                );
                double sekolahsmp_20 = double.parse(
                  isipendidikan[index = 19].sekolahsmp_n1,
                );
                double sekolahsmp_21 = double.parse(
                  isipendidikan[index = 20].sekolahsmp_n1,
                );
                double sekolahsmp_22 = double.parse(
                  isipendidikan[index = 21].sekolahsmp_n1,
                );
                double sekolahsmp_23 = double.parse(
                  isipendidikan[index = 22].sekolahsmp_n1,
                );
                double sekolahsmp_24 = double.parse(
                  isipendidikan[index = 23].sekolahsmp_n1,
                );
                double sekolahsmp_25 = double.parse(
                  isipendidikan[index = 24].sekolahsmp_n1,
                );
                double sekolahsmp_26 = double.parse(
                  isipendidikan[index = 25].sekolahsmp_n1,
                );
                double sekolahsmp_27 = double.parse(
                  isipendidikan[index = 26].sekolahsmp_n1,
                );
                double sekolahsmp_28 = double.parse(
                  isipendidikan[index = 27].sekolahsmp_n1,
                );
                double sekolahsmp_29 = double.parse(
                  isipendidikan[index = 28].sekolahsmp_n1,
                );
                double sekolahsmp_30 = double.parse(
                  isipendidikan[index = 29].sekolahsmp_n1,
                );
                double sekolahsmp_31 = double.parse(
                  isipendidikan[index = 30].sekolahsmp_n1,
                );
                double sekolahsmp_32 = double.parse(
                  isipendidikan[index = 31].sekolahsmp_n1,
                );
                double sekolahsmp_33 = double.parse(
                  isipendidikan[index = 32].sekolahsmp_n1,
                );
                double sekolahsmp_34 = double.parse(
                  isipendidikan[index = 33].sekolahsmp_n1,
                );
                double sekolahsmp_35 = double.parse(
                  isipendidikan[index = 34].sekolahsmp_n1,
                );
                double sekolahsmp_36 = double.parse(
                  isipendidikan[index = 35].sekolahsmp_n1,
                );

                double gurusmp_1 = double.parse(
                  isipendidikan[index = 0].gurusmp_n1,
                );
                double gurusmp_2 = double.parse(
                  isipendidikan[index = 1].gurusmp_n1,
                );
                double gurusmp_3 = double.parse(
                  isipendidikan[index = 2].gurusmp_n1,
                );
                double gurusmp_4 = double.parse(
                  isipendidikan[index = 3].gurusmp_n1,
                );
                double gurusmp_5 = double.parse(
                  isipendidikan[index = 4].gurusmp_n1,
                );
                double gurusmp_6 = double.parse(
                  isipendidikan[index = 5].gurusmp_n1,
                );
                double gurusmp_7 = double.parse(
                  isipendidikan[index = 6].gurusmp_n1,
                );
                double gurusmp_8 = double.parse(
                  isipendidikan[index = 7].gurusmp_n1,
                );
                double gurusmp_9 = double.parse(
                  isipendidikan[index = 8].gurusmp_n1,
                );
                double gurusmp_10 = double.parse(
                  isipendidikan[index = 9].gurusmp_n1,
                );
                double gurusmp_11 = double.parse(
                  isipendidikan[index = 10].gurusmp_n1,
                );
                double gurusmp_12 = double.parse(
                  isipendidikan[index = 11].gurusmp_n1,
                );
                double gurusmp_13 = double.parse(
                  isipendidikan[index = 12].gurusmp_n1,
                );
                double gurusmp_14 = double.parse(
                  isipendidikan[index = 13].gurusmp_n1,
                );
                double gurusmp_15 = double.parse(
                  isipendidikan[index = 14].gurusmp_n1,
                );
                double gurusmp_16 = double.parse(
                  isipendidikan[index = 15].gurusmp_n1,
                );
                double gurusmp_17 = double.parse(
                  isipendidikan[index = 16].gurusmp_n1,
                );
                double gurusmp_18 = double.parse(
                  isipendidikan[index = 17].gurusmp_n1,
                );
                double gurusmp_19 = double.parse(
                  isipendidikan[index = 18].gurusmp_n1,
                );
                double gurusmp_20 = double.parse(
                  isipendidikan[index = 19].gurusmp_n1,
                );
                double gurusmp_21 = double.parse(
                  isipendidikan[index = 20].gurusmp_n1,
                );
                double gurusmp_22 = double.parse(
                  isipendidikan[index = 21].gurusmp_n1,
                );
                double gurusmp_23 = double.parse(
                  isipendidikan[index = 22].gurusmp_n1,
                );
                double gurusmp_24 = double.parse(
                  isipendidikan[index = 23].gurusmp_n1,
                );
                double gurusmp_25 = double.parse(
                  isipendidikan[index = 24].gurusmp_n1,
                );
                double gurusmp_26 = double.parse(
                  isipendidikan[index = 25].gurusmp_n1,
                );
                double gurusmp_27 = double.parse(
                  isipendidikan[index = 26].gurusmp_n1,
                );
                double gurusmp_28 = double.parse(
                  isipendidikan[index = 27].gurusmp_n1,
                );
                double gurusmp_29 = double.parse(
                  isipendidikan[index = 28].gurusmp_n1,
                );
                double gurusmp_30 = double.parse(
                  isipendidikan[index = 29].gurusmp_n1,
                );
                double gurusmp_31 = double.parse(
                  isipendidikan[index = 30].gurusmp_n1,
                );
                double gurusmp_32 = double.parse(
                  isipendidikan[index = 31].gurusmp_n1,
                );
                double gurusmp_33 = double.parse(
                  isipendidikan[index = 32].gurusmp_n1,
                );
                double gurusmp_34 = double.parse(
                  isipendidikan[index = 33].gurusmp_n1,
                );
                double gurusmp_35 = double.parse(
                  isipendidikan[index = 34].gurusmp_n1,
                );
                double gurusmp_36 = double.parse(
                  isipendidikan[index = 35].gurusmp_n1,
                );

                double muridsmp_1 = double.parse(
                  isipendidikan[index = 0].muridsmp_n1,
                );
                double muridsmp_2 = double.parse(
                  isipendidikan[index = 1].muridsmp_n1,
                );
                double muridsmp_3 = double.parse(
                  isipendidikan[index = 2].muridsmp_n1,
                );
                double muridsmp_4 = double.parse(
                  isipendidikan[index = 3].muridsmp_n1,
                );
                double muridsmp_5 = double.parse(
                  isipendidikan[index = 4].muridsmp_n1,
                );
                double muridsmp_6 = double.parse(
                  isipendidikan[index = 5].muridsmp_n1,
                );
                double muridsmp_7 = double.parse(
                  isipendidikan[index = 6].muridsmp_n1,
                );
                double muridsmp_8 = double.parse(
                  isipendidikan[index = 7].muridsmp_n1,
                );
                double muridsmp_9 = double.parse(
                  isipendidikan[index = 8].muridsmp_n1,
                );
                double muridsmp_10 = double.parse(
                  isipendidikan[index = 9].muridsmp_n1,
                );
                double muridsmp_11 = double.parse(
                  isipendidikan[index = 10].muridsmp_n1,
                );
                double muridsmp_12 = double.parse(
                  isipendidikan[index = 11].muridsmp_n1,
                );
                double muridsmp_13 = double.parse(
                  isipendidikan[index = 12].muridsmp_n1,
                );
                double muridsmp_14 = double.parse(
                  isipendidikan[index = 13].muridsmp_n1,
                );
                double muridsmp_15 = double.parse(
                  isipendidikan[index = 14].muridsmp_n1,
                );
                double muridsmp_16 = double.parse(
                  isipendidikan[index = 15].muridsmp_n1,
                );
                double muridsmp_17 = double.parse(
                  isipendidikan[index = 16].muridsmp_n1,
                );
                double muridsmp_18 = double.parse(
                  isipendidikan[index = 17].muridsmp_n1,
                );
                double muridsmp_19 = double.parse(
                  isipendidikan[index = 18].muridsmp_n1,
                );
                double muridsmp_20 = double.parse(
                  isipendidikan[index = 19].muridsmp_n1,
                );
                double muridsmp_21 = double.parse(
                  isipendidikan[index = 20].muridsmp_n1,
                );
                double muridsmp_22 = double.parse(
                  isipendidikan[index = 21].muridsmp_n1,
                );
                double muridsmp_23 = double.parse(
                  isipendidikan[index = 22].muridsmp_n1,
                );
                double muridsmp_24 = double.parse(
                  isipendidikan[index = 23].muridsmp_n1,
                );
                double muridsmp_25 = double.parse(
                  isipendidikan[index = 24].muridsmp_n1,
                );
                double muridsmp_26 = double.parse(
                  isipendidikan[index = 25].muridsmp_n1,
                );
                double muridsmp_27 = double.parse(
                  isipendidikan[index = 26].muridsmp_n1,
                );
                double muridsmp_28 = double.parse(
                  isipendidikan[index = 27].muridsmp_n1,
                );
                double muridsmp_29 = double.parse(
                  isipendidikan[index = 28].muridsmp_n1,
                );
                double muridsmp_30 = double.parse(
                  isipendidikan[index = 29].muridsmp_n1,
                );
                double muridsmp_31 = double.parse(
                  isipendidikan[index = 30].muridsmp_n1,
                );
                double muridsmp_32 = double.parse(
                  isipendidikan[index = 31].muridsmp_n1,
                );
                double muridsmp_33 = double.parse(
                  isipendidikan[index = 32].muridsmp_n1,
                );
                double muridsmp_34 = double.parse(
                  isipendidikan[index = 33].muridsmp_n1,
                );
                double muridsmp_35 = double.parse(
                  isipendidikan[index = 34].muridsmp_n1,
                );
                double muridsmp_36 = double.parse(
                  isipendidikan[index = 35].muridsmp_n1,
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
                                          Format.convertTo(sekolahsmp_1, 0),
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
                                          Format.convertTo(gurusmp_1, 0),
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
                                          Format.convertTo(muridsmp_1, 0),
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
                                          Format.convertTo(sekolahsmp_2, 0),
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
                                          Format.convertTo(gurusmp_2, 0),
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
                                          Format.convertTo(muridsmp_2, 0),
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
                                          Format.convertTo(sekolahsmp_3, 0),
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
                                          Format.convertTo(gurusmp_3, 0),
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
                                          Format.convertTo(muridsmp_3, 0),
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
                                          Format.convertTo(sekolahsmp_4, 0),
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
                                          Format.convertTo(gurusmp_4, 0),
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
                                          Format.convertTo(muridsmp_4, 0),
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
                                          Format.convertTo(sekolahsmp_5, 0),
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
                                          Format.convertTo(gurusmp_5, 0),
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
                                          Format.convertTo(muridsmp_5, 0),
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
                                          Format.convertTo(sekolahsmp_6, 0),
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
                                          Format.convertTo(gurusmp_6, 0),
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
                                          Format.convertTo(muridsmp_6, 0),
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
                                          Format.convertTo(sekolahsmp_7, 0),
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
                                          Format.convertTo(gurusmp_7, 0),
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
                                          Format.convertTo(muridsmp_7, 0),
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
                                          Format.convertTo(sekolahsmp_8, 0),
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
                                          Format.convertTo(gurusmp_8, 0),
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
                                          Format.convertTo(muridsmp_8, 0),
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
                                          Format.convertTo(sekolahsmp_9, 0),
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
                                          Format.convertTo(gurusmp_9, 0),
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
                                          Format.convertTo(muridsmp_9, 0),
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
                                          Format.convertTo(sekolahsmp_10, 0),
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
                                          Format.convertTo(gurusmp_10, 0),
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
                                          Format.convertTo(muridsmp_10, 0),
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
                                          Format.convertTo(sekolahsmp_11, 0),
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
                                          Format.convertTo(gurusmp_11, 0),
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
                                          Format.convertTo(muridsmp_11, 0),
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
                                          Format.convertTo(sekolahsmp_12, 0),
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
                                          Format.convertTo(gurusmp_12, 0),
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
                                          Format.convertTo(muridsmp_12, 0),
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
                                          Format.convertTo(sekolahsmp_13, 0),
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
                                          Format.convertTo(gurusmp_13, 0),
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
                                          Format.convertTo(muridsmp_13, 0),
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
                                          Format.convertTo(sekolahsmp_14, 0),
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
                                          Format.convertTo(gurusmp_14, 0),
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
                                          Format.convertTo(muridsmp_14, 0),
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
                                          Format.convertTo(sekolahsmp_15, 0),
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
                                          Format.convertTo(gurusmp_15, 0),
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
                                          Format.convertTo(muridsmp_15, 0),
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
                                          Format.convertTo(sekolahsmp_16, 0),
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
                                          Format.convertTo(gurusmp_16, 0),
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
                                          Format.convertTo(muridsmp_16, 0),
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
                                          Format.convertTo(sekolahsmp_17, 0),
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
                                          Format.convertTo(gurusmp_17, 0),
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
                                          Format.convertTo(muridsmp_17, 0),
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
                                          Format.convertTo(sekolahsmp_18, 0),
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
                                          Format.convertTo(gurusmp_18, 0),
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
                                          Format.convertTo(muridsmp_18, 0),
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
                                          Format.convertTo(sekolahsmp_19, 0),
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
                                          Format.convertTo(gurusmp_19, 0),
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
                                          Format.convertTo(muridsmp_19, 0),
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
                                          Format.convertTo(sekolahsmp_20, 0),
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
                                          Format.convertTo(gurusmp_20, 0),
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
                                          Format.convertTo(muridsmp_20, 0),
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
                                          Format.convertTo(sekolahsmp_21, 0),
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
                                          Format.convertTo(gurusmp_21, 0),
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
                                          Format.convertTo(muridsmp_21, 0),
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
                                          Format.convertTo(sekolahsmp_22, 0),
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
                                          Format.convertTo(gurusmp_22, 0),
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
                                          Format.convertTo(muridsmp_22, 0),
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
                                          Format.convertTo(sekolahsmp_23, 0),
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
                                          Format.convertTo(gurusmp_23, 0),
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
                                          Format.convertTo(muridsmp_23, 0),
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
                                          Format.convertTo(sekolahsmp_24, 0),
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
                                          Format.convertTo(gurusmp_24, 0),
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
                                          Format.convertTo(muridsmp_24, 0),
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
                                          Format.convertTo(sekolahsmp_25, 0),
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
                                          Format.convertTo(gurusmp_25, 0),
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
                                          Format.convertTo(muridsmp_25, 0),
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
                                          Format.convertTo(sekolahsmp_26, 0),
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
                                          Format.convertTo(gurusmp_26, 0),
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
                                          Format.convertTo(muridsmp_26, 0),
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
                                          Format.convertTo(sekolahsmp_27, 0),
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
                                          Format.convertTo(gurusmp_27, 0),
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
                                          Format.convertTo(muridsmp_27, 0),
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
                                          Format.convertTo(sekolahsmp_28, 0),
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
                                          Format.convertTo(gurusmp_28, 0),
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
                                          Format.convertTo(muridsmp_28, 0),
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
                                          Format.convertTo(sekolahsmp_29, 0),
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
                                          Format.convertTo(gurusmp_29, 0),
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
                                          Format.convertTo(muridsmp_29, 0),
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
                                          Format.convertTo(sekolahsmp_30, 0),
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
                                          Format.convertTo(gurusmp_30, 0),
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
                                          Format.convertTo(muridsmp_30, 0),
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
                                          Format.convertTo(sekolahsmp_31, 0),
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
                                          Format.convertTo(gurusmp_31, 0),
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
                                          Format.convertTo(muridsmp_31, 0),
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
                                          Format.convertTo(sekolahsmp_32, 0),
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
                                          Format.convertTo(gurusmp_32, 0),
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
                                          Format.convertTo(muridsmp_32, 0),
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
                                          Format.convertTo(sekolahsmp_33, 0),
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
                                          Format.convertTo(gurusmp_33, 0),
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
                                          Format.convertTo(muridsmp_33, 0),
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
                                          Format.convertTo(sekolahsmp_34, 0),
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
                                          Format.convertTo(gurusmp_34, 0),
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
                                          Format.convertTo(muridsmp_34, 0),
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
                                          Format.convertTo(sekolahsmp_35, 0),
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
                                          Format.convertTo(gurusmp_35, 0),
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
                                          Format.convertTo(muridsmp_35, 0),
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
                                          Format.convertTo(sekolahsmp_36, 0),
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
                                          Format.convertTo(gurusmp_36, 0),
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
                                          Format.convertTo(muridsmp_36, 0),
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
