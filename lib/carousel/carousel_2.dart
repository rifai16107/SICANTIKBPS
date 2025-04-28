import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/series_pendudukkabkot.dart';
import 'package:bps_cilacap/homescreen_menu/ketimpangan/ketimpangan_gini.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//carousel Penduduk dan Gini rasio
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

class carouselSlider2 extends StatefulWidget {
  const carouselSlider2({super.key});

  @override
  State<carouselSlider2> createState() => _carouselSlider2State();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider2State extends State<carouselSlider2> {
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
              String tahun = isiindikatorutama[index = 3].tahun;
              int lkTotal = int.parse(isiindikatorutama[index = 3].nilai);
              int prTotal = int.parse(isiindikatorutama[index = 4].nilai);

              String thnGini =
                  isiindikatorutama[index = 8].tahun.substring(5, 9);
              double giniRasiothnNow =
                  double.parse(isiindikatorutama[index = 8].nilai);
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
                                  return const SeriesPddkKabkot();
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
                                    "PENDUDUK (jiwa)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.021,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: Text(
                                    ' $tahun ',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.022,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.005,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.14,
                                      height: screenHeight * 0.055,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 5),
                                      child: SizedBox(
                                        //width: 95,
                                        //height: 95,
                                        child: Image.asset(
                                          'assets/images/carousel/hasil_sp_icon.png',
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.22,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                          Format.convertTo(
                                              (lkTotal + prTotal), 0),
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
                                  return const KetimpanganGini();
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
                                    "GINI RASIO",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.021,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: Text(
                                    ' $thnGini ',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.022,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.005,
                                  color:
                                      const Color.fromARGB(255, 231, 232, 233),
                                  //margin: const EdgeInsets.only(left: 2, top:5),
                                  child: const Text(
                                    '',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                    textAlign: TextAlign.center,
                                  ),
                                ),

                                Row(
                                  children: [
                                    Container(
                                      width: screenWidth * 0.14,
                                      height: screenHeight * 0.055,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 5),
                                      child: SizedBox(
                                        //width: 95,
                                        //height: 95,
                                        child: Image.asset(
                                          'assets/images/carousel/ketimpangan_icon.png',
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.22,
                                      height: screenHeight * 0.035,
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                          Format.convertTo(giniRasiothnNow, 3),
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
              borderRadius: BorderRadius.circular(10),
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


// ignore_for_file: camel_case_types