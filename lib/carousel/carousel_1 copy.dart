import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
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
              String kab = "Cilacap";
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
              double yony1 = double.parse(isiindikatorutama[index = 2].nilai);
              double ytod1 = double.parse(isiindikatorutama[index = 1].nilai);
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 232, 233),
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: const EdgeInsets.only(top: 0, bottom: 0),
                width: screenWidth,
                height: screenHeight,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 3,
                      child: SizedBox(
                        width: 55,
                        height: 55,
                        child: Image.asset(
                          'assets/images/carousel/inflasi_bulanan_icon.png',
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              child: Text(
                                "Inflasi $bln $tahun Kabupaten $kab",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Inflasi Month to Month : ${Format.convertTo(mtom1, 2)}%",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Inflasi Year to Date : ${Format.convertTo(ytod1, 2)}%",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Inflasi Year on Year : ${Format.convertTo(yony1, 2)}%",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        )),
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