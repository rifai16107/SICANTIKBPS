// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
//import 'package:bps_cilacap/format_angka.dart';
import 'package:http/http.dart' as http;

//DIST PDRB ADHB PENGEL 2022-2024

class RepositoryLajuadhkPengelTrw {
  final _baseURL = 'https://bps-3301-asap.my.id/api/pdrb-trw-laju';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map((isipdrb) => ModelLajuadhkPengelTrw.fromJson(isipdrb))
            .toList();
      }
    } catch (isipdrb) {
      // ignore: avoid_print
      print(isipdrb.toString());
    }
  }
}

class ModelLajuadhkPengelTrw {
  final int id;
  final String komponen;
  final String yy_trw1;
  final String yy_trw2;
  final String yy_trw3;
  final String yy_trw4;
  final String yy_total;
  final String tahun;

  ModelLajuadhkPengelTrw({
    required this.id,
    required this.komponen,
    required this.yy_trw1,
    required this.yy_trw2,
    required this.yy_trw3,
    required this.yy_trw4,
    required this.yy_total,
    required this.tahun,
  });

  factory ModelLajuadhkPengelTrw.fromJson(Map<String, dynamic> json) {
    return ModelLajuadhkPengelTrw(
      id: json['id'],
      komponen: json['komponen'],
      yy_trw1: json['yy_trw1'],
      yy_trw2: json['yy_trw2'],
      yy_trw3: json['yy_trw3'],
      yy_trw4: json['yy_trw4'],
      yy_total: json['yy_total'],
      tahun: json['tahun'],
    );
  }
}

class LajuadhkyyPengelTrw1 extends StatefulWidget {
  const LajuadhkyyPengelTrw1({Key? key}) : super(key: key);

  @override
  State<LajuadhkyyPengelTrw1> createState() => _LajuadhkyyPengelTrw1State();
}

RepositoryLajuadhkPengelTrw repositoryLajuadhk = RepositoryLajuadhkPengelTrw();

class _LajuadhkyyPengelTrw1State extends State<LajuadhkyyPengelTrw1> {
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
        future: repositoryLajuadhk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String komponen1 = isipdrb[index = 0].komponen;
                String komponen2 = isipdrb[index = 1].komponen;
                String komponen3 = isipdrb[index = 2].komponen;
                String komponen4 = isipdrb[index = 3].komponen;
                String komponen5 = isipdrb[index = 4].komponen;

                //pdrb trw
                String konsruta_yy_trw1 = isipdrb[index = 0].yy_trw1;
                String konspem_yy_trw1 = isipdrb[index = 1].yy_trw1;
                String pmtb_yy_trw1 = isipdrb[index = 2].yy_trw1;
                String lainnya_yy_trw1 = isipdrb[index = 3].yy_trw1;
                String total_yy_trw1 = isipdrb[index = 4].yy_trw1;

                String konsruta_yy_trw2 = isipdrb[index = 0].yy_trw2;
                String konspem_yy_trw2 = isipdrb[index = 1].yy_trw2;
                String pmtb_yy_trw2 = isipdrb[index = 2].yy_trw2;
                String lainnya_yy_trw2 = isipdrb[index = 3].yy_trw2;
                String total_yy_trw2 = isipdrb[index = 4].yy_trw2;

                String konsruta_yy_trw3 = isipdrb[index = 0].yy_trw3;
                String konspem_yy_trw3 = isipdrb[index = 1].yy_trw3;
                String pmtb_yy_trw3 = isipdrb[index = 2].yy_trw3;
                String lainnya_yy_trw3 = isipdrb[index = 3].yy_trw3;
                String total_yy_trw3 = isipdrb[index = 4].yy_trw3;

                String konsruta_yy_trw4 = isipdrb[index = 0].yy_trw4;
                String konspem_yy_trw4 = isipdrb[index = 1].yy_trw4;
                String pmtb_yy_trw4 = isipdrb[index = 2].yy_trw4;
                String lainnya_yy_trw4 = isipdrb[index = 3].yy_trw4;
                String total_yy_trw4 = isipdrb[index = 4].yy_trw4;

                String konsruta_yy_total = isipdrb[index = 0].yy_total;
                String konspem_yy_total = isipdrb[index = 1].yy_total;
                String pmtb_yy_total = isipdrb[index = 2].yy_total;
                String lainnya_yy_total = isipdrb[index = 3].yy_total;
                String total_yy_total = isipdrb[index = 4].yy_total;

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
                                  "Lapangan/",
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
                                  "Laju Pertumbuhan PDRB dengan Migas",
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
                                  "Usaha",
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
                                  "Tahunan",
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
                              // Kons Ruta
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
                                          konsruta_yy_trw1,
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
                                          konsruta_yy_trw2,
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
                                          konsruta_yy_trw3,
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
                                          konsruta_yy_trw4,
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
                                          konsruta_yy_total,
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

                              // Kons Pemerintah
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
                                          konspem_yy_trw1,
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
                                          konspem_yy_trw2,
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
                                          konspem_yy_trw3,
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
                                          konspem_yy_trw4,
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
                                          konspem_yy_total,
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
                                          pmtb_yy_trw1,
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
                                          pmtb_yy_trw2,
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
                                          pmtb_yy_trw3,
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
                                          pmtb_yy_trw4,
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
                                          pmtb_yy_total,
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
                                          lainnya_yy_trw1,
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
                                          lainnya_yy_trw2,
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
                                          lainnya_yy_trw3,
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
                                          lainnya_yy_trw4,
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
                                          lainnya_yy_total,
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

                              //TOTAL
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
                                          total_yy_trw1,
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
                                          total_yy_trw2,
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
                                          total_yy_trw3,
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
                                          total_yy_trw4,
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
                                          total_yy_total,
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
                                padding: const EdgeInsets.all(3),
                                alignment: Alignment.centerLeft,
                                child: const Text(
                                  "Keterangan:",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Container(
                                padding: const EdgeInsets.all(1),
                                alignment: Alignment.centerLeft,
                                child: RichText(
                                  textAlign: TextAlign.left,
                                  text: const TextSpan(
                                    text: 'y-on-y:',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            ' Pertumbuhan PDRB pada triwulan tertentu dibandingkan dengan triwulan yang sama pada tahun sebelumnya.',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
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
