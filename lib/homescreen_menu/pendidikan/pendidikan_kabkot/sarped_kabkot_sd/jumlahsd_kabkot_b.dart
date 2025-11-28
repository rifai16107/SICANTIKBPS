// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

// 2021/2022 jumlah sd

class RepositoryPendidikanKabkotJumlahsd {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pendidikankabkot-sgmsd';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isipendidikan) =>
                  ModelPendidikanKabkotJumlahsd.fromJson(isipendidikan),
            )
            .toList();
      }
    } catch (isipendidikan) {
      // ignore: avoid_print
      print(isipendidikan.toString());
    }
  }
}

class ModelPendidikanKabkotJumlahsd {
  final int id;
  final String wilayah;
  final String sekolahsd_n2;
  final String gurusd_n2;
  final String muridsd_n2;
  final String tahun;

  ModelPendidikanKabkotJumlahsd({
    required this.id,
    required this.wilayah,
    required this.sekolahsd_n2,
    required this.gurusd_n2,
    required this.muridsd_n2,
    required this.tahun,
  });

  factory ModelPendidikanKabkotJumlahsd.fromJson(Map<String, dynamic> json) {
    return ModelPendidikanKabkotJumlahsd(
      id: json['id'],
      wilayah: json['wilayah'],
      sekolahsd_n2: json['sekolahsd_n2'],
      gurusd_n2: json['gurusd_n2'],
      muridsd_n2: json['muridsd_n2'],
      tahun: json['tahun'],
    );
  }
}

class PendidikanKabkotJumlahsdB extends StatefulWidget {
  const PendidikanKabkotJumlahsdB({Key? key}) : super(key: key);

  @override
  State<PendidikanKabkotJumlahsdB> createState() =>
      _PendidikanKabkotJumlahsdBState();
}

RepositoryPendidikanKabkotJumlahsd repositorypendidikan =
    RepositoryPendidikanKabkotJumlahsd();

class _PendidikanKabkotJumlahsdBState extends State<PendidikanKabkotJumlahsdB> {
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
                double sekolahsd_1 = double.parse(
                  isipendidikan[index = 0].sekolahsd_n2,
                );
                double sekolahsd_2 = double.parse(
                  isipendidikan[index = 1].sekolahsd_n2,
                );
                double sekolahsd_3 = double.parse(
                  isipendidikan[index = 2].sekolahsd_n2,
                );
                double sekolahsd_4 = double.parse(
                  isipendidikan[index = 3].sekolahsd_n2,
                );
                double sekolahsd_5 = double.parse(
                  isipendidikan[index = 4].sekolahsd_n2,
                );
                double sekolahsd_6 = double.parse(
                  isipendidikan[index = 5].sekolahsd_n2,
                );
                double sekolahsd_7 = double.parse(
                  isipendidikan[index = 6].sekolahsd_n2,
                );
                double sekolahsd_8 = double.parse(
                  isipendidikan[index = 7].sekolahsd_n2,
                );
                double sekolahsd_9 = double.parse(
                  isipendidikan[index = 8].sekolahsd_n2,
                );
                double sekolahsd_10 = double.parse(
                  isipendidikan[index = 9].sekolahsd_n2,
                );
                double sekolahsd_11 = double.parse(
                  isipendidikan[index = 10].sekolahsd_n2,
                );
                double sekolahsd_12 = double.parse(
                  isipendidikan[index = 11].sekolahsd_n2,
                );
                double sekolahsd_13 = double.parse(
                  isipendidikan[index = 12].sekolahsd_n2,
                );
                double sekolahsd_14 = double.parse(
                  isipendidikan[index = 13].sekolahsd_n2,
                );
                double sekolahsd_15 = double.parse(
                  isipendidikan[index = 14].sekolahsd_n2,
                );
                double sekolahsd_16 = double.parse(
                  isipendidikan[index = 15].sekolahsd_n2,
                );
                double sekolahsd_17 = double.parse(
                  isipendidikan[index = 16].sekolahsd_n2,
                );
                double sekolahsd_18 = double.parse(
                  isipendidikan[index = 17].sekolahsd_n2,
                );
                double sekolahsd_19 = double.parse(
                  isipendidikan[index = 18].sekolahsd_n2,
                );
                double sekolahsd_20 = double.parse(
                  isipendidikan[index = 19].sekolahsd_n2,
                );
                double sekolahsd_21 = double.parse(
                  isipendidikan[index = 20].sekolahsd_n2,
                );
                double sekolahsd_22 = double.parse(
                  isipendidikan[index = 21].sekolahsd_n2,
                );
                double sekolahsd_23 = double.parse(
                  isipendidikan[index = 22].sekolahsd_n2,
                );
                double sekolahsd_24 = double.parse(
                  isipendidikan[index = 23].sekolahsd_n2,
                );
                double sekolahsd_25 = double.parse(
                  isipendidikan[index = 24].sekolahsd_n2,
                );
                double sekolahsd_26 = double.parse(
                  isipendidikan[index = 25].sekolahsd_n2,
                );
                double sekolahsd_27 = double.parse(
                  isipendidikan[index = 26].sekolahsd_n2,
                );
                double sekolahsd_28 = double.parse(
                  isipendidikan[index = 27].sekolahsd_n2,
                );
                double sekolahsd_29 = double.parse(
                  isipendidikan[index = 28].sekolahsd_n2,
                );
                double sekolahsd_30 = double.parse(
                  isipendidikan[index = 29].sekolahsd_n2,
                );
                double sekolahsd_31 = double.parse(
                  isipendidikan[index = 30].sekolahsd_n2,
                );
                double sekolahsd_32 = double.parse(
                  isipendidikan[index = 31].sekolahsd_n2,
                );
                double sekolahsd_33 = double.parse(
                  isipendidikan[index = 32].sekolahsd_n2,
                );
                double sekolahsd_34 = double.parse(
                  isipendidikan[index = 33].sekolahsd_n2,
                );
                double sekolahsd_35 = double.parse(
                  isipendidikan[index = 34].sekolahsd_n2,
                );
                double sekolahsd_36 = double.parse(
                  isipendidikan[index = 35].sekolahsd_n2,
                );

                double gurusd_1 = double.parse(
                  isipendidikan[index = 0].gurusd_n2,
                );
                double gurusd_2 = double.parse(
                  isipendidikan[index = 1].gurusd_n2,
                );
                double gurusd_3 = double.parse(
                  isipendidikan[index = 2].gurusd_n2,
                );
                double gurusd_4 = double.parse(
                  isipendidikan[index = 3].gurusd_n2,
                );
                double gurusd_5 = double.parse(
                  isipendidikan[index = 4].gurusd_n2,
                );
                double gurusd_6 = double.parse(
                  isipendidikan[index = 5].gurusd_n2,
                );
                double gurusd_7 = double.parse(
                  isipendidikan[index = 6].gurusd_n2,
                );
                double gurusd_8 = double.parse(
                  isipendidikan[index = 7].gurusd_n2,
                );
                double gurusd_9 = double.parse(
                  isipendidikan[index = 8].gurusd_n2,
                );
                double gurusd_10 = double.parse(
                  isipendidikan[index = 9].gurusd_n2,
                );
                double gurusd_11 = double.parse(
                  isipendidikan[index = 10].gurusd_n2,
                );
                double gurusd_12 = double.parse(
                  isipendidikan[index = 11].gurusd_n2,
                );
                double gurusd_13 = double.parse(
                  isipendidikan[index = 12].gurusd_n2,
                );
                double gurusd_14 = double.parse(
                  isipendidikan[index = 13].gurusd_n2,
                );
                double gurusd_15 = double.parse(
                  isipendidikan[index = 14].gurusd_n2,
                );
                double gurusd_16 = double.parse(
                  isipendidikan[index = 15].gurusd_n2,
                );
                double gurusd_17 = double.parse(
                  isipendidikan[index = 16].gurusd_n2,
                );
                double gurusd_18 = double.parse(
                  isipendidikan[index = 17].gurusd_n2,
                );
                double gurusd_19 = double.parse(
                  isipendidikan[index = 18].gurusd_n2,
                );
                double gurusd_20 = double.parse(
                  isipendidikan[index = 19].gurusd_n2,
                );
                double gurusd_21 = double.parse(
                  isipendidikan[index = 20].gurusd_n2,
                );
                double gurusd_22 = double.parse(
                  isipendidikan[index = 21].gurusd_n2,
                );
                double gurusd_23 = double.parse(
                  isipendidikan[index = 22].gurusd_n2,
                );
                double gurusd_24 = double.parse(
                  isipendidikan[index = 23].gurusd_n2,
                );
                double gurusd_25 = double.parse(
                  isipendidikan[index = 24].gurusd_n2,
                );
                double gurusd_26 = double.parse(
                  isipendidikan[index = 25].gurusd_n2,
                );
                double gurusd_27 = double.parse(
                  isipendidikan[index = 26].gurusd_n2,
                );
                double gurusd_28 = double.parse(
                  isipendidikan[index = 27].gurusd_n2,
                );
                double gurusd_29 = double.parse(
                  isipendidikan[index = 28].gurusd_n2,
                );
                double gurusd_30 = double.parse(
                  isipendidikan[index = 29].gurusd_n2,
                );
                double gurusd_31 = double.parse(
                  isipendidikan[index = 30].gurusd_n2,
                );
                double gurusd_32 = double.parse(
                  isipendidikan[index = 31].gurusd_n2,
                );
                double gurusd_33 = double.parse(
                  isipendidikan[index = 32].gurusd_n2,
                );
                double gurusd_34 = double.parse(
                  isipendidikan[index = 33].gurusd_n2,
                );
                double gurusd_35 = double.parse(
                  isipendidikan[index = 34].gurusd_n2,
                );
                double gurusd_36 = double.parse(
                  isipendidikan[index = 35].gurusd_n2,
                );

                double muridsd_1 = double.parse(
                  isipendidikan[index = 0].muridsd_n2,
                );
                double muridsd_2 = double.parse(
                  isipendidikan[index = 1].muridsd_n2,
                );
                double muridsd_3 = double.parse(
                  isipendidikan[index = 2].muridsd_n2,
                );
                double muridsd_4 = double.parse(
                  isipendidikan[index = 3].muridsd_n2,
                );
                double muridsd_5 = double.parse(
                  isipendidikan[index = 4].muridsd_n2,
                );
                double muridsd_6 = double.parse(
                  isipendidikan[index = 5].muridsd_n2,
                );
                double muridsd_7 = double.parse(
                  isipendidikan[index = 6].muridsd_n2,
                );
                double muridsd_8 = double.parse(
                  isipendidikan[index = 7].muridsd_n2,
                );
                double muridsd_9 = double.parse(
                  isipendidikan[index = 8].muridsd_n2,
                );
                double muridsd_10 = double.parse(
                  isipendidikan[index = 9].muridsd_n2,
                );
                double muridsd_11 = double.parse(
                  isipendidikan[index = 10].muridsd_n2,
                );
                double muridsd_12 = double.parse(
                  isipendidikan[index = 11].muridsd_n2,
                );
                double muridsd_13 = double.parse(
                  isipendidikan[index = 12].muridsd_n2,
                );
                double muridsd_14 = double.parse(
                  isipendidikan[index = 13].muridsd_n2,
                );
                double muridsd_15 = double.parse(
                  isipendidikan[index = 14].muridsd_n2,
                );
                double muridsd_16 = double.parse(
                  isipendidikan[index = 15].muridsd_n2,
                );
                double muridsd_17 = double.parse(
                  isipendidikan[index = 16].muridsd_n2,
                );
                double muridsd_18 = double.parse(
                  isipendidikan[index = 17].muridsd_n2,
                );
                double muridsd_19 = double.parse(
                  isipendidikan[index = 18].muridsd_n2,
                );
                double muridsd_20 = double.parse(
                  isipendidikan[index = 19].muridsd_n2,
                );
                double muridsd_21 = double.parse(
                  isipendidikan[index = 20].muridsd_n2,
                );
                double muridsd_22 = double.parse(
                  isipendidikan[index = 21].muridsd_n2,
                );
                double muridsd_23 = double.parse(
                  isipendidikan[index = 22].muridsd_n2,
                );
                double muridsd_24 = double.parse(
                  isipendidikan[index = 23].muridsd_n2,
                );
                double muridsd_25 = double.parse(
                  isipendidikan[index = 24].muridsd_n2,
                );
                double muridsd_26 = double.parse(
                  isipendidikan[index = 25].muridsd_n2,
                );
                double muridsd_27 = double.parse(
                  isipendidikan[index = 26].muridsd_n2,
                );
                double muridsd_28 = double.parse(
                  isipendidikan[index = 27].muridsd_n2,
                );
                double muridsd_29 = double.parse(
                  isipendidikan[index = 28].muridsd_n2,
                );
                double muridsd_30 = double.parse(
                  isipendidikan[index = 29].muridsd_n2,
                );
                double muridsd_31 = double.parse(
                  isipendidikan[index = 30].muridsd_n2,
                );
                double muridsd_32 = double.parse(
                  isipendidikan[index = 31].muridsd_n2,
                );
                double muridsd_33 = double.parse(
                  isipendidikan[index = 32].muridsd_n2,
                );
                double muridsd_34 = double.parse(
                  isipendidikan[index = 33].muridsd_n2,
                );
                double muridsd_35 = double.parse(
                  isipendidikan[index = 34].muridsd_n2,
                );
                double muridsd_36 = double.parse(
                  isipendidikan[index = 35].muridsd_n2,
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
                                          Format.convertTo(sekolahsd_1, 0),
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
                                          Format.convertTo(gurusd_1, 0),
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
                                          Format.convertTo(muridsd_1, 0),
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
                                          Format.convertTo(sekolahsd_2, 0),
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
                                          Format.convertTo(gurusd_2, 0),
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
                                          Format.convertTo(muridsd_2, 0),
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
                                          Format.convertTo(sekolahsd_3, 0),
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
                                          Format.convertTo(gurusd_3, 0),
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
                                          Format.convertTo(muridsd_3, 0),
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
                                          Format.convertTo(sekolahsd_4, 0),
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
                                          Format.convertTo(gurusd_4, 0),
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
                                          Format.convertTo(muridsd_4, 0),
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
                                          Format.convertTo(sekolahsd_5, 0),
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
                                          Format.convertTo(gurusd_5, 0),
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
                                          Format.convertTo(muridsd_5, 0),
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
                                          Format.convertTo(sekolahsd_6, 0),
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
                                          Format.convertTo(gurusd_6, 0),
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
                                          Format.convertTo(muridsd_6, 0),
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
                                          Format.convertTo(sekolahsd_7, 0),
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
                                          Format.convertTo(gurusd_7, 0),
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
                                          Format.convertTo(muridsd_7, 0),
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
                                          Format.convertTo(sekolahsd_8, 0),
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
                                          Format.convertTo(gurusd_8, 0),
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
                                          Format.convertTo(muridsd_8, 0),
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
                                          Format.convertTo(sekolahsd_9, 0),
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
                                          Format.convertTo(gurusd_9, 0),
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
                                          Format.convertTo(muridsd_9, 0),
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
                                          Format.convertTo(sekolahsd_10, 0),
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
                                          Format.convertTo(gurusd_10, 0),
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
                                          Format.convertTo(muridsd_10, 0),
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
                                          Format.convertTo(sekolahsd_11, 0),
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
                                          Format.convertTo(gurusd_11, 0),
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
                                          Format.convertTo(muridsd_11, 0),
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
                                          Format.convertTo(sekolahsd_12, 0),
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
                                          Format.convertTo(gurusd_12, 0),
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
                                          Format.convertTo(muridsd_12, 0),
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
                                          Format.convertTo(sekolahsd_13, 0),
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
                                          Format.convertTo(gurusd_13, 0),
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
                                          Format.convertTo(muridsd_13, 0),
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
                                          Format.convertTo(sekolahsd_14, 0),
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
                                          Format.convertTo(gurusd_14, 0),
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
                                          Format.convertTo(muridsd_14, 0),
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
                                          Format.convertTo(sekolahsd_15, 0),
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
                                          Format.convertTo(gurusd_15, 0),
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
                                          Format.convertTo(muridsd_15, 0),
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
                                          Format.convertTo(sekolahsd_16, 0),
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
                                          Format.convertTo(gurusd_16, 0),
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
                                          Format.convertTo(muridsd_16, 0),
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
                                          Format.convertTo(sekolahsd_17, 0),
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
                                          Format.convertTo(gurusd_17, 0),
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
                                          Format.convertTo(muridsd_17, 0),
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
                                          Format.convertTo(sekolahsd_18, 0),
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
                                          Format.convertTo(gurusd_18, 0),
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
                                          Format.convertTo(muridsd_18, 0),
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
                                          Format.convertTo(sekolahsd_19, 0),
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
                                          Format.convertTo(gurusd_19, 0),
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
                                          Format.convertTo(muridsd_19, 0),
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
                                          Format.convertTo(sekolahsd_20, 0),
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
                                          Format.convertTo(gurusd_20, 0),
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
                                          Format.convertTo(muridsd_20, 0),
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
                                          Format.convertTo(sekolahsd_21, 0),
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
                                          Format.convertTo(gurusd_21, 0),
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
                                          Format.convertTo(muridsd_21, 0),
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
                                          Format.convertTo(sekolahsd_22, 0),
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
                                          Format.convertTo(gurusd_22, 0),
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
                                          Format.convertTo(muridsd_22, 0),
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
                                          Format.convertTo(sekolahsd_23, 0),
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
                                          Format.convertTo(gurusd_23, 0),
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
                                          Format.convertTo(muridsd_23, 0),
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
                                          Format.convertTo(sekolahsd_24, 0),
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
                                          Format.convertTo(gurusd_24, 0),
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
                                          Format.convertTo(muridsd_24, 0),
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
                                          Format.convertTo(sekolahsd_25, 0),
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
                                          Format.convertTo(gurusd_25, 0),
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
                                          Format.convertTo(muridsd_25, 0),
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
                                          Format.convertTo(sekolahsd_26, 0),
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
                                          Format.convertTo(gurusd_26, 0),
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
                                          Format.convertTo(muridsd_26, 0),
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
                                          Format.convertTo(sekolahsd_27, 0),
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
                                          Format.convertTo(gurusd_27, 0),
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
                                          Format.convertTo(muridsd_27, 0),
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
                                          Format.convertTo(sekolahsd_28, 0),
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
                                          Format.convertTo(gurusd_28, 0),
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
                                          Format.convertTo(muridsd_28, 0),
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
                                          Format.convertTo(sekolahsd_29, 0),
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
                                          Format.convertTo(gurusd_29, 0),
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
                                          Format.convertTo(muridsd_29, 0),
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
                                          Format.convertTo(sekolahsd_30, 0),
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
                                          Format.convertTo(gurusd_30, 0),
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
                                          Format.convertTo(muridsd_30, 0),
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
                                          Format.convertTo(sekolahsd_31, 0),
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
                                          Format.convertTo(gurusd_31, 0),
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
                                          Format.convertTo(muridsd_31, 0),
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
                                          Format.convertTo(sekolahsd_32, 0),
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
                                          Format.convertTo(gurusd_32, 0),
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
                                          Format.convertTo(muridsd_32, 0),
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
                                          Format.convertTo(sekolahsd_33, 0),
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
                                          Format.convertTo(gurusd_33, 0),
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
                                          Format.convertTo(muridsd_33, 0),
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
                                          Format.convertTo(sekolahsd_34, 0),
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
                                          Format.convertTo(gurusd_34, 0),
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
                                          Format.convertTo(muridsd_34, 0),
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
                                          Format.convertTo(sekolahsd_35, 0),
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
                                          Format.convertTo(gurusd_35, 0),
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
                                          Format.convertTo(muridsd_35, 0),
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
                                          Format.convertTo(sekolahsd_36, 0),
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
                                          Format.convertTo(gurusd_36, 0),
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
                                          Format.convertTo(muridsd_36, 0),
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
