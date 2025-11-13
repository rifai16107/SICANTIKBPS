// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu/nilai_pdrb.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi/pertumbuhan_ekonomi_cilacap/pertumbuhan_ekonomi_clp.dart';
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
            .map((isiindikatorutama) =>
                ModelIndikatorUtama.fromJson(isiindikatorutama))
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

  ModelIndikatorUtama(
      {required this.id,
      required this.indikator,
      required this.nilai,
      required this.bulan,
      required this.tahun});

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

class carouselSlider6 extends StatefulWidget {
  const carouselSlider6({super.key});

  @override
  State<carouselSlider6> createState() => _carouselSlider6State();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider6State extends State<carouselSlider6> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
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

              String tahunPeSblm =
                  isiindikatorutama[index = 11].tahun.substring(0, 4);
              String tahunPeNow =
                  isiindikatorutama[index = 12].tahun.substring(5, 9);
              double peSblm = double.parse(isiindikatorutama[index = 11].nilai);
              double peNow = double.parse(isiindikatorutama[index = 12].nilai);

              String tahunPdrbSblm =
                  isiindikatorutama[index = 20].tahun.substring(0, 4);
              String tahunPdrbNow =
                  isiindikatorutama[index = 21].tahun.substring(5, 9);
              double pdrbSblm =
                  double.parse(isiindikatorutama[index = 20].nilai);
              double pdrbNow =
                  double.parse(isiindikatorutama[index = 21].nilai);
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
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const NilaiPdrb();
                                },
                              ));
                            },
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    "PDRB Harga",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'Berlaku (Trilyun Rp)',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.18,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          tahunPdrbSblm,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          tahunPdrbNow,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
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
                                        height: screenHeight * 0.005,
                                        color: const Color.fromARGB(
                                            255, 231, 232, 233),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.17,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(pdrbSblm / 1000, 2)}",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(pdrbNow / 1000, 2)}",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
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
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const pertumbuhanEkonomiclp();
                                },
                              ));
                            },
                            splashColor: Colors.blueGrey,
                            child: Column(
                              //mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    "Pertumbuhan PDRB",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.025,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    'Dengan Migas (%)',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: screenWidth * 0.18,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          tahunPeSblm,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * 0.185,
                                        height: screenHeight * 0.022,
                                        //color: const Color.fromARGB(255, 231, 232, 233),
                                        //alignment: Alignment.center,
                                        //margin: const EdgeInsets.only(top: 0),
                                        child: Text(
                                          tahunPeNow,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
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
                                        height: screenHeight * 0.005,
                                        color: const Color.fromARGB(
                                            255, 231, 232, 233),
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 0),
                                        child: const Text(
                                          " ",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.17,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(peSblm, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                    Container(
                                      width: screenWidth * 0.18,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 15),
                                      child: Text(
                                          " ${Format.convertTo(peNow, 2)}",
                                          style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
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
