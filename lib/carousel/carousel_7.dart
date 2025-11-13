// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/pdrb_lu_adhb/series_pdrbadhb_lu_trw.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RepositoryIndikatorUtama {
  final _baseURL = 'https://bps-3301-asap.my.id/api/indikator-utama';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseURL));

      if (response.statusCode == 200) {
        var cokk = jsonDecode(response.body);
        return (cokk['data'] as List)
            .map(
              (isiindikatorutama) =>
                  ModelIndikatorUtama.fromJson(isiindikatorutama),
            )
            .toList();
      }
    } catch (isiindikatorutama) {
      // ignore: avoid_print
      print(isiindikatorutama.toString());
    }
  }
}

class ModelIndikatorUtama {
  final int id;
  final String indikator;
  final String nilai;
  final String bulan;
  final String tahun;

  ModelIndikatorUtama({
    required this.id,
    required this.indikator,
    required this.nilai,
    required this.bulan,
    required this.tahun,
  });

  factory ModelIndikatorUtama.fromJson(Map<String, dynamic> json) {
    return ModelIndikatorUtama(
      id: json['id'],
      indikator: json['indikator'],
      nilai: json['nilai'],
      bulan: json['bulan'],
      tahun: json['tahun'],
    );
  }
}

class carouselSlider7 extends StatefulWidget {
  const carouselSlider7({super.key});

  @override
  State<carouselSlider7> createState() => _carouselSlider7State();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider7State extends State<carouselSlider7> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryindikatorutama.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiindikatorutama = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              //String kab = "Cilacap";

              String tahun = isiindikatorutama[index = 22].tahun;
              String triwulan = isiindikatorutama[index = 22].bulan;

              double pdrTrw = double.parse(isiindikatorutama[index = 22].nilai);
              double pdrTrwKum = double.parse(
                isiindikatorutama[index = 23].nilai,
              );
              double pertumbTrwqtoq = double.parse(
                isiindikatorutama[index = 24].nilai,
              );
              double pertumbTrwyony = double.parse(
                isiindikatorutama[index = 25].nilai,
              );

              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 232, 233),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 0, bottom: 0),
                width: screenWidth,
                height: screenHeight,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.15,
                      child: Material(
                        //color: const Color.fromARGB(255, 232, 240, 248),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 231, 232, 233),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SeriesPdrbadhbLuTrw();
                                  },
                                ),
                              );
                            },
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.051,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'PDRB (trilyun Rp)\n'
                                    'dan Pertumbuhannya',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: Text(
                                    'Trw $triwulan $tahun',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.024,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          'Nilai',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.180,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          'q-to-q (%)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth * 0.365,
                                        height: screenHeight * 0.003,
                                        color: const Color.fromARGB(
                                          255,
                                          231,
                                          232,
                                          233,
                                        ),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.185,
                                      height: screenHeight * 0.025,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        " ${Format.convertTo(pdrTrw / 1000, 2)}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.025,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        " ${Format.convertTo(pertumbTrwqtoq, 2)}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //const SizedBox(height:6),

                                //const SizedBox(height:10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(left: 5, top: 0, right: 5),
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.15,
                      child: Material(
                        //color: const Color.fromARGB(255, 232, 240, 248),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 10,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 231, 232, 233),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const SeriesPdrbadhbLuTrw();
                                  },
                                ),
                              );
                            },
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.051,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'PDRB (trilyun Rp)\n'
                                    'dan Pertumbuhannya',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: Text(
                                    's.d. Trw $triwulan $tahun',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color: const Color.fromARGB(
                                    255,
                                    231,
                                    232,
                                    233,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.024,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          'Nilai',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.180,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          'y-on-y (%)',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.40,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: screenWidth * 0.365,
                                        height: screenHeight * 0.003,
                                        color: const Color.fromARGB(
                                          255,
                                          231,
                                          232,
                                          233,
                                        ),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.185,
                                      height: screenHeight * 0.025,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        " ${Format.convertTo(pdrTrwKum / 1000, 2)}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.025,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 4),
                                      child: Text(
                                        " ${Format.convertTo(pertumbTrwyony, 2)}",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //const SizedBox(height:6),

                                //const SizedBox(height:10),
                              ],
                            ),
                          ),
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
          return const Text("Tidak Ada Kabar Terbaru");
        } else {
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(136, 159, 176, 1),
              borderRadius: BorderRadius.circular(5),
            ),
            margin: const EdgeInsets.only(top: 3, bottom: 3),
            width: screenWidth,
            height: screenHeight,
          );
        }
      },
    );
  }
}
