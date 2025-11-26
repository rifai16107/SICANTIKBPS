// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//PDRB ADHK 2022-2024

class RepositoryPdrbPengelTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-pengel';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelPdrbPengelTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

class ModelPdrbPengelTrw {
  final int id;
  final String komponen;
  final String trw1;
  final String trw2;
  final String trw3;
  final String trw4;
  final String total;
  final String tahun;

  ModelPdrbPengelTrw({
    required this.id,
    required this.komponen,
    required this.trw1,
    required this.trw2,
    required this.trw3,
    required this.trw4,
    required this.total,
    required this.tahun,
  });

  factory ModelPdrbPengelTrw.fromJson(Map<String, dynamic> json) {
    return ModelPdrbPengelTrw(
      id: json['id'],
      komponen: json['komponen'],
      trw1: json['trw1'],
      trw2: json['trw2'],
      trw3: json['trw3'],
      trw4: json['trw4'],
      total: json['total'],
      tahun: json['tahun'],
    );
  }
}

class PdrbPengelTrwB extends StatefulWidget {
  const PdrbPengelTrwB({Key? key}) : super(key: key);

  @override
  State<PdrbPengelTrwB> createState() => _PdrbPengelTrwBState();
}

RepositoryPdrbPengelTrw repositorypdrb = RepositoryPdrbPengelTrw();

class _PdrbPengelTrwBState extends State<PdrbPengelTrwB> {
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
        future: repositorypdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String komponen1 = isipdrb[index = 5].komponen;
                String komponen2 = isipdrb[index = 6].komponen;
                String komponen3 = isipdrb[index = 7].komponen;
                String komponen4 = isipdrb[index = 8].komponen;
                String komponen5 = isipdrb[index = 9].komponen;

                //pdrb trw
                String konsruta_trw1 = isipdrb[index = 5].trw1;
                String konspem_trw1 = isipdrb[index = 6].trw1;
                String pmtb_trw1 = isipdrb[index = 7].trw1;
                String lainnya_trw1 = isipdrb[index = 8].trw1;
                String total_trw1 = isipdrb[index = 9].trw1;

                String konsruta_trw2 = isipdrb[index = 5].trw2;
                String konspem_trw2 = isipdrb[index = 6].trw2;
                String pmtb_trw2 = isipdrb[index = 7].trw2;
                String lainnya_trw2 = isipdrb[index = 8].trw2;
                String total_trw2 = isipdrb[index = 9].trw2;

                String konsruta_trw3 = isipdrb[index = 5].trw3;
                String konspem_trw3 = isipdrb[index = 6].trw3;
                String pmtb_trw3 = isipdrb[index = 7].trw3;
                String lainnya_trw3 = isipdrb[index = 8].trw3;
                String total_trw3 = isipdrb[index = 9].trw3;

                String konsruta_trw4 = isipdrb[index = 5].trw4;
                String konspem_trw4 = isipdrb[index = 6].trw4;
                String pmtb_trw4 = isipdrb[index = 7].trw4;
                String lainnya_trw4 = isipdrb[index = 8].trw4;
                String total_trw4 = isipdrb[index = 9].trw4;

                String konsruta_total = isipdrb[index = 5].total;
                String konspem_total = isipdrb[index = 6].total;
                String pmtb_total = isipdrb[index = 7].total;
                String lainnya_total = isipdrb[index = 8].total;
                String total_total = isipdrb[index = 9].total;

                String thn1 = isipdrb[index = 5].tahun;

                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.20,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 10,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Komponen/",
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
                              width: screenWidth * 0.78,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 5,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "PDRB ADHK dengan Migas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(thickness: 2, color: Colors.black),
                          ],
                        ),
                      ),

                      //separator
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.005,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.22,
                              child: Container(
                                height: screenHeight * 0.005,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "",
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
                              width: screenWidth * 0.76,
                              child: Container(
                                height: screenHeight * 0.002,
                                color: Colors.white,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "__",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.04,
                        color: Colors.orange,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.20,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Pengeluaran",
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
                              width: screenWidth * 0.15,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 15,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Trw 1",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.15,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 15,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Trw 2",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.15,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 10,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Trw 3",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.16,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 10,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Trw 4",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.16,
                              child: Container(
                                height: screenHeight * 0.04,
                                color: Colors.orange,
                                padding: const EdgeInsets.only(
                                  right: 5,
                                  top: 0,
                                  bottom: 0,
                                ),
                                child: const Text(
                                  "Total",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
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
                              // Konst Ruta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.12,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.15 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          komponen1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 11.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konsruta_trw1,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konsruta_trw2,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.16 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konsruta_trw3,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konsruta_trw4,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.18 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konsruta_total,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Konst Pemerintah
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.095,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.15 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          komponen2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 11.5,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konspem_trw1,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konspem_trw2,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.16 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konspem_trw3,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konspem_trw4,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.18 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          konspem_total,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // PMTB
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.07,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.15 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          komponen3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          pmtb_trw1,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          pmtb_trw2,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.16 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          pmtb_trw3,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          pmtb_trw4,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.18 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          pmtb_total,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Lainnya
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.07,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.15 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          komponen4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          lainnya_trw1,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          lainnya_trw2,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.16 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          lainnya_trw3,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          lainnya_trw4,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.18 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          lainnya_total,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // TOTAL
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.07,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 0.15 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          komponen5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          total_trw1,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          total_trw2,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.16 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          total_trw3,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.165 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          total_trw4,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.18 * screenWidth,
                                      child: Container(
                                        color: Colors.transparent,
                                        padding: const EdgeInsets.only(
                                          right: 0,
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          total_total,
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              const Divider(height: 5, color: Colors.black),

                              Container(
                                padding: const EdgeInsets.all(1),
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: TextSpan(
                                    text: 'Keterangan:',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            " Tahun " +
                                            thn1 +
                                            ' Angka Sementara',
                                        style: const TextStyle(
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
