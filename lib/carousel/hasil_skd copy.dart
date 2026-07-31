// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'dart:convert';
import '../homescreen_menu/jumlah_penduduk.dart';
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

class hasilSKD extends StatefulWidget {
  const hasilSKD({super.key});

  @override
  State<hasilSKD> createState() => _hasilSKDState();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _hasilSKDState extends State<hasilSKD> {
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

              String tahunIpkp = isiindikatorutama[index = 27].tahun;
              String triwulanIpkp = isiindikatorutama[index = 27].bulan;
              double ipkp = double.parse(isiindikatorutama[index = 27].nilai);

              String tahunIpak = isiindikatorutama[index = 28].tahun;
              String triwulanIpak = isiindikatorutama[index = 28].bulan;
              double ipak = double.parse(isiindikatorutama[index = 28].nilai);

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
                      width: screenWidth * 0.80,
                      height: screenHeight * 0.15,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 0,
                              bottom: 0,
                              right: 0,
                            ),

                            child: Material(
                              //color: const Color.fromARGB(255, 232, 240, 248),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(0),
                              elevation: 0,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      242,
                                      245,
                                      248,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  splashColor: Colors.blueGrey,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const jumlahPenduduk();
                                        },
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assets/images/ipkp_ipak.png',
                                        width: screenWidth * 0.90,
                                        height: screenHeight * 0.08,
                                        fit: BoxFit.cover,
                                      ),
                                      //const SizedBox(height:6),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const jumlahPenduduk();
                              },
                            ),
                          );
                        },
                        splashColor: Colors.blueGrey,

                        child: Container(
                          width: screenWidth * 0.94,
                          height: screenHeight * 0.10,
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(
                            left: 0,
                            top: 0,
                            right: 0,
                          ),
                          //color: const Color.fromARGB(255, 214, 222, 228),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 121, 123, 126),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Row(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                padding: const EdgeInsets.only(
                                  right: 0,
                                  top: 2,
                                  bottom: 0,
                                ),
                                width: screenWidth * 0.46,
                                height: screenHeight * 0.09,
                                child: RichText(
                                  textAlign: TextAlign.right,
                                  text: TextSpan(
                                    text:
                                        'INDEKS PERSEPSI\n'
                                        'KUALITAS PELAYANAN',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text:
                                            '\n'
                                            'IPKP = ',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                            255,
                                            109,
                                            59,
                                            59,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: '3,49',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                            255,
                                            4,
                                            13,
                                            131,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                padding: const EdgeInsets.only(
                                  left: 0,
                                  top: 2,
                                  bottom: 0,
                                ),
                                width: screenWidth * 0.46,
                                height: screenHeight * 0.09,
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  text: TextSpan(
                                    text:
                                        'INDEKS PERSEPSI\n'
                                        'ANTI KORUPSI',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text:
                                            '\n'
                                            'IPAK = ',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                            255,
                                            109,
                                            59,
                                            59,
                                          ),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const TextSpan(
                                        text: '3,99',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'Roboto',
                                          color: Color.fromARGB(
                                            255,
                                            4,
                                            13,
                                            131,
                                          ),
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
                    ),

                    Container(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.025,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomCenter,
                            padding: const EdgeInsets.only(
                              left: 1,
                              top: 0,
                              right: 0,
                            ),

                            child: Material(
                              //color: const Color.fromARGB(255, 232, 240, 248),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              elevation: 10,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                      255,
                                      242,
                                      245,
                                      248,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: InkWell(
                                  splashColor: Colors.blueGrey,
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const jumlahPenduduk();
                                        },
                                      ),
                                    );
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      //const SizedBox(height:6),
                                      Container(
                                        width: screenWidth * 0.94,
                                        color: Colors.orange,
                                        child: const Text(
                                          'Hasil Survei Kebutuhan Data Tahun 2026, Triwulan 2',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),

                                      //const SizedBox(height:10),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
