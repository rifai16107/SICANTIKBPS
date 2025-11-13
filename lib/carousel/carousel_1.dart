import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_inflasi.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//Carousel Inflasi
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

class carouselSlider1 extends StatefulWidget {
  const carouselSlider1({super.key});

  @override
  State<carouselSlider1> createState() => _carouselSlider1State();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider1State extends State<carouselSlider1> {
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
              String tahun = isiindikatorutama[index = 0].tahun.substring(0, 4);
              String bulan = isiindikatorutama[index = 0].bulan.substring(0, 3);
              String bln = "";
              if (bulan == "Jan") {
                bln = "Januari";
              } else if (bulan == "Feb") {
                bln = "Februari";
              } else if (bulan == "Mar") {
                bln = "Maret";
              } else if (bulan == "Apr") {
                bln = "April";
              } else if (bulan == "Mei") {
                bln = "Mei";
              } else if (bulan == "Jun") {
                bln = "Juni";
              } else if (bulan == "Jul") {
                bln = "Juli";
              } else if (bulan == "Ags") {
                bln = "Agustus";
              } else if (bulan == "Sep") {
                bln = "September";
              } else if (bulan == "Okt") {
                bln = "Oktober";
              } else if (bulan == "Nov") {
                bln = "November";
              } else {
                bln = "Desember";
              }

              double mtom1 = double.parse(isiindikatorutama[index = 0].nilai);
              double ytod1 = double.parse(isiindikatorutama[index = 1].nilai);
              double yony1 = double.parse(isiindikatorutama[index = 2].nilai);
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
                                  return const SeriesBulanan();
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
                                    "INFLASI (persen)",
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
                                    '$bln $tahun',
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
                                    'm-to-m',
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
                                      margin: const EdgeInsets.only(top: 10),
                                      child: SizedBox(
                                        //width: 95,
                                        //height: 95,
                                        child: Image.asset(
                                          'assets/images/carousel/inflasi_bulanan_icon.png',
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
                                          " ${Format.convertTo(mtom1, 2)}",
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
                                  return const SeriesInflasi();
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
                                    "INFLASI (persen)",
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
                                    '$bln $tahun',
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
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
                                        child: const Text(
                                          "y-to-d",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
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
                                        child: const Text(
                                          "y-on-y",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
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
                                          " ${Format.convertTo(ytod1, 2)}",
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
                                          " ${Format.convertTo(yony1, 2)}",
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
        



// ignore_for_file: camel_case_types