// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:http/http.dart' as http;
import 'package:bps_cilacap/ketenagakerjaan/kabkot_umk/body_grafik_nakerumk_kabkota.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_umk/body_grafik_kenaikanumk_kabkota.dart';
//umk 2023-2024

class RepositoryNakerKabkotUmk {
  final _baseURL = 'https://bps-3301-asap.my.id/api/nakerkabkot-umk';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isinaker) => ModelNakerKabkotUmk.fromJson(isinaker))
            .toList();
      }
    } catch (isinaker) {
      // ignore: avoid_print
      print(isinaker.toString());
    }
  }
}

class ModelNakerKabkotUmk {
  final int id;
  final String wilayah;
  final String umk_n1;
  final String umk_n2;
  final String umk_n3;
  final String umk_n4;
  final String umk_n5;
  final String tahun;

  ModelNakerKabkotUmk(
      {required this.id,
      required this.wilayah,
      required this.umk_n1,
      required this.umk_n2,
      required this.umk_n3,
      required this.umk_n4,
      required this.umk_n5,
      required this.tahun});

  factory ModelNakerKabkotUmk.fromJson(Map<String, dynamic> json) {
    return ModelNakerKabkotUmk(
      id: json['id'],
      wilayah: json['wilayah'],
      umk_n1: json['umk_n1'],
      umk_n2: json['umk_n2'],
      umk_n3: json['umk_n3'],
      umk_n4: json['umk_n4'],
      umk_n5: json['umk_n5'],
      tahun: json['tahun'],
    );
  }
}

class NakerkabkotUmkC extends StatefulWidget {
  const NakerkabkotUmkC({Key? key}) : super(key: key);

  @override
  State<NakerkabkotUmkC> createState() => _NakerkabkotUmkCState();
}

RepositoryNakerKabkotUmk repositorynaker = RepositoryNakerKabkotUmk();

class _NakerkabkotUmkCState extends State<NakerkabkotUmkC> {
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

                double umkN4_1 = double.parse(isinaker[index = 0].umk_n4);
                double umkN4_2 = double.parse(isinaker[index = 1].umk_n4);
                double umkN4_3 = double.parse(isinaker[index = 2].umk_n4);
                double umkN4_4 = double.parse(isinaker[index = 3].umk_n4);
                double umkN4_5 = double.parse(isinaker[index = 4].umk_n4);
                double umkN4_6 = double.parse(isinaker[index = 5].umk_n4);
                double umkN4_7 = double.parse(isinaker[index = 6].umk_n4);
                double umkN4_8 = double.parse(isinaker[index = 7].umk_n4);
                double umkN4_9 = double.parse(isinaker[index = 8].umk_n4);
                double umkN4_10 = double.parse(isinaker[index = 9].umk_n4);
                double umkN4_11 = double.parse(isinaker[index = 10].umk_n4);
                double umkN4_12 = double.parse(isinaker[index = 11].umk_n4);
                double umkN4_13 = double.parse(isinaker[index = 12].umk_n4);
                double umkN4_14 = double.parse(isinaker[index = 13].umk_n4);
                double umkN4_15 = double.parse(isinaker[index = 14].umk_n4);
                double umkN4_16 = double.parse(isinaker[index = 15].umk_n4);
                double umkN4_17 = double.parse(isinaker[index = 16].umk_n4);
                double umkN4_18 = double.parse(isinaker[index = 17].umk_n4);
                double umkN4_19 = double.parse(isinaker[index = 18].umk_n4);
                double umkN4_20 = double.parse(isinaker[index = 19].umk_n4);
                double umkN4_21 = double.parse(isinaker[index = 20].umk_n4);
                double umkN4_22 = double.parse(isinaker[index = 21].umk_n4);
                double umkN4_23 = double.parse(isinaker[index = 22].umk_n4);
                double umkN4_24 = double.parse(isinaker[index = 23].umk_n4);
                double umkN4_25 = double.parse(isinaker[index = 24].umk_n4);
                double umkN4_26 = double.parse(isinaker[index = 25].umk_n4);
                double umkN4_27 = double.parse(isinaker[index = 26].umk_n4);
                double umkN4_28 = double.parse(isinaker[index = 27].umk_n4);
                double umkN4_29 = double.parse(isinaker[index = 28].umk_n4);
                double umkN4_30 = double.parse(isinaker[index = 29].umk_n4);
                double umkN4_31 = double.parse(isinaker[index = 30].umk_n4);
                double umkN4_32 = double.parse(isinaker[index = 31].umk_n4);
                double umkN4_33 = double.parse(isinaker[index = 32].umk_n4);
                double umkN4_34 = double.parse(isinaker[index = 33].umk_n4);
                double umkN4_35 = double.parse(isinaker[index = 34].umk_n4);

                double umkN5_1 = double.parse(isinaker[index = 0].umk_n5);
                double umkN5_2 = double.parse(isinaker[index = 1].umk_n5);
                double umkN5_3 = double.parse(isinaker[index = 2].umk_n5);
                double umkN5_4 = double.parse(isinaker[index = 3].umk_n5);
                double umkN5_5 = double.parse(isinaker[index = 4].umk_n5);
                double umkN5_6 = double.parse(isinaker[index = 5].umk_n5);
                double umkN5_7 = double.parse(isinaker[index = 6].umk_n5);
                double umkN5_8 = double.parse(isinaker[index = 7].umk_n5);
                double umkN5_9 = double.parse(isinaker[index = 8].umk_n5);
                double umkN5_10 = double.parse(isinaker[index = 9].umk_n5);
                double umkN5_11 = double.parse(isinaker[index = 10].umk_n5);
                double umkN5_12 = double.parse(isinaker[index = 11].umk_n5);
                double umkN5_13 = double.parse(isinaker[index = 12].umk_n5);
                double umkN5_14 = double.parse(isinaker[index = 13].umk_n5);
                double umkN5_15 = double.parse(isinaker[index = 14].umk_n5);
                double umkN5_16 = double.parse(isinaker[index = 15].umk_n5);
                double umkN5_17 = double.parse(isinaker[index = 16].umk_n5);
                double umkN5_18 = double.parse(isinaker[index = 17].umk_n5);
                double umkN5_19 = double.parse(isinaker[index = 18].umk_n5);
                double umkN5_20 = double.parse(isinaker[index = 19].umk_n5);
                double umkN5_21 = double.parse(isinaker[index = 20].umk_n5);
                double umkN5_22 = double.parse(isinaker[index = 21].umk_n5);
                double umkN5_23 = double.parse(isinaker[index = 22].umk_n5);
                double umkN5_24 = double.parse(isinaker[index = 23].umk_n5);
                double umkN5_25 = double.parse(isinaker[index = 24].umk_n5);
                double umkN5_26 = double.parse(isinaker[index = 25].umk_n5);
                double umkN5_27 = double.parse(isinaker[index = 26].umk_n5);
                double umkN5_28 = double.parse(isinaker[index = 27].umk_n5);
                double umkN5_29 = double.parse(isinaker[index = 28].umk_n5);
                double umkN5_30 = double.parse(isinaker[index = 29].umk_n5);
                double umkN5_31 = double.parse(isinaker[index = 30].umk_n5);
                double umkN5_32 = double.parse(isinaker[index = 31].umk_n5);
                double umkN5_33 = double.parse(isinaker[index = 32].umk_n5);
                double umkN5_34 = double.parse(isinaker[index = 33].umk_n5);
                double umkN5_35 = double.parse(isinaker[index = 34].umk_n5);

                String thn4 = isinaker[index = 0].tahun.substring(15, 19);
                String thn5 = isinaker[index = 0].tahun.substring(20, 24);

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
                              child: Text(
                                thn4,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
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
                              child: Text(
                                thn5,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
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
                                        Format.convertTo(umkN4_1, 0),
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
                                        Format.convertTo(umkN5_1, 0),
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
                                        Format.convertTo(umkN4_2, 0),
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
                                        Format.convertTo(umkN5_2, 0),
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
                                        Format.convertTo(umkN4_3, 0),
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
                                        Format.convertTo(umkN5_3, 0),
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
                                        Format.convertTo(umkN4_4, 0),
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
                                        Format.convertTo(umkN5_4, 0),
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
                                        Format.convertTo(umkN4_5, 0),
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
                                        Format.convertTo(umkN5_5, 0),
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
                                        Format.convertTo(umkN4_6, 0),
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
                                        Format.convertTo(umkN5_6, 0),
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
                                        Format.convertTo(umkN4_7, 0),
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
                                        Format.convertTo(umkN5_7, 0),
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
                                        Format.convertTo(umkN4_8, 0),
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
                                        Format.convertTo(umkN5_8, 0),
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
                                        Format.convertTo(umkN4_9, 0),
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
                                        Format.convertTo(umkN5_9, 0),
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
                                        Format.convertTo(umkN4_10, 0),
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
                                        Format.convertTo(umkN5_10, 0),
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
                                        Format.convertTo(umkN4_11, 0),
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
                                        Format.convertTo(umkN5_11, 0),
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
                                        Format.convertTo(umkN4_12, 0),
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
                                        Format.convertTo(umkN5_12, 0),
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
                                        Format.convertTo(umkN4_13, 0),
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
                                        Format.convertTo(umkN5_13, 0),
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
                                        Format.convertTo(umkN4_14, 0),
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
                                        Format.convertTo(umkN5_14, 0),
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
                                        Format.convertTo(umkN4_15, 0),
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
                                        Format.convertTo(umkN5_15, 0),
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
                                        Format.convertTo(umkN4_16, 0),
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
                                        Format.convertTo(umkN5_16, 0),
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
                                        Format.convertTo(umkN4_17, 0),
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
                                        Format.convertTo(umkN5_17, 0),
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
                                        Format.convertTo(umkN4_18, 0),
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
                                        Format.convertTo(umkN5_18, 0),
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
                                        Format.convertTo(umkN4_19, 0),
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
                                        Format.convertTo(umkN5_19, 0),
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
                                        Format.convertTo(umkN4_20, 0),
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
                                        Format.convertTo(umkN5_20, 0),
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
                                        Format.convertTo(umkN4_21, 0),
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
                                        Format.convertTo(umkN5_21, 0),
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
                                        Format.convertTo(umkN4_22, 0),
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
                                        Format.convertTo(umkN5_22, 0),
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
                                        Format.convertTo(umkN4_23, 0),
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
                                        Format.convertTo(umkN5_23, 0),
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
                                        Format.convertTo(umkN4_24, 0),
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
                                        Format.convertTo(umkN5_24, 0),
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
                                        Format.convertTo(umkN4_25, 0),
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
                                        Format.convertTo(umkN5_25, 0),
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

                            //umkN5_kalongan
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
                                        Format.convertTo(umkN4_26, 0),
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
                                        Format.convertTo(umkN5_26, 0),
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

                            //umkN3_malang
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
                                        Format.convertTo(umkN4_27, 0),
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
                                        Format.convertTo(umkN5_27, 0),
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
                                        Format.convertTo(umkN4_28, 0),
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
                                        Format.convertTo(umkN5_28, 0),
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
                                        Format.convertTo(umkN4_29, 0),
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
                                        Format.convertTo(umkN5_29, 0),
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
                                        Format.convertTo(umkN4_30, 0),
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
                                        Format.convertTo(umkN5_30, 0),
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
                                        Format.convertTo(umkN4_31, 0),
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
                                        Format.convertTo(umkN5_31, 0),
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
                                        Format.convertTo(umkN4_32, 0),
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
                                        Format.convertTo(umkN5_32, 0),
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
                                        Format.convertTo(umkN4_33, 0),
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
                                        Format.convertTo(umkN5_33, 0),
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
                                        Format.convertTo(umkN4_34, 0),
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
                                        Format.convertTo(umkN5_34, 0),
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
                                        Format.convertTo(umkN4_35, 0),
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
                                        Format.convertTo(umkN5_35, 0),
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
                            const Divider(
                              thickness: 1,
                              color: Colors.black38,
                            ),
                            //Total

                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 1,
                                left: 4,
                                bottom: 0,
                              ),
                              child: const Text(
                                " Keterangan :",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 14,
                                bottom: 65,
                              ),
                              child: const Text(
                                "UMK 2025 ditetapkan berdasarkan Surat Keputusan Gubernur Jawa Tengah Nomor 561 / 45 Tahun 2024 tanggal 18 Desember 2024 .",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
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
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: SpeedDial(
          icon: Icons.bar_chart_outlined,
          visible: true,
          //mini:true,
          //animatedIcon:AnimatedIcons.menu_close,
          activeIcon: Icons.close,
          buttonSize: const Size(45, 45),
          curve: Curves.elasticInOut,
          direction: SpeedDialDirection.right,
          //animatedIconTheme: const IconThemeData(size: 25),
          //animatedIcon: AnimatedIcons.list_view,
          closeManually: false,
          children: [
            SpeedDialChild(
              backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikNakerumkkabkot(),
                        direction: AxisDirection.left));
              },
              label: 'UMK Kab/Kota',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
            ),
            SpeedDialChild(
              backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikKenaikanumkkabkot(),
                        direction: AxisDirection.left));
              },
              label: 'Kenaikan UMK',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
            ),
          ]),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
      : super(
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
        child: child,
      );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
