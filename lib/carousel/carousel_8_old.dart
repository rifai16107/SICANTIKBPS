import 'dart:async';
import 'dart:convert';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// TPK dan RLS Hotel bintang
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

class carouselSlider8old extends StatefulWidget {
  const carouselSlider8old({super.key});

  @override
  State<carouselSlider8old> createState() => _carouselSlider8oldState();
}

RepositoryIndikatorUtama repositoryindikatorutama = RepositoryIndikatorUtama();

class _carouselSlider8oldState extends State<carouselSlider8old> {
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
              String tahun = isiindikatorutama[index = 16].tahun;
              String bulann1 = isiindikatorutama[index = 15].bulan;
              String bulanNow = isiindikatorutama[index = 16].bulan;

              String blnn1 = "";
              if (bulann1 == "Jan") {
                blnn1 = "Januari";
              } else if (bulann1 == "Feb") {
                blnn1 = "Februari";
              } else if (bulann1 == "Mar") {
                blnn1 = "Maret";
              } else if (bulann1 == "Apr") {
                blnn1 = "April";
              } else if (bulann1 == "Mei") {
                blnn1 = "Mei";
              } else if (bulann1 == "Jun") {
                blnn1 = "Juni";
              } else if (bulann1 == "Jul") {
                blnn1 = "Juli";
              } else if (bulann1 == "Ags") {
                blnn1 = "Agustus";
              } else if (bulann1 == "Sep") {
                blnn1 = "September";
              } else if (bulann1 == "Okt") {
                blnn1 = "Oktober";
              } else if (bulann1 == "Nov") {
                blnn1 = "November";
              } else {
                blnn1 = "Desember";
              }
              String blnNow = "";
              if (bulanNow == "Jan") {
                blnNow = "Januari";
              } else if (bulanNow == "Feb") {
                blnNow = "Februari";
              } else if (bulanNow == "Mar") {
                blnNow = "Maret";
              } else if (bulanNow == "Apr") {
                blnNow = "April";
              } else if (bulanNow == "Mei") {
                blnNow = "Mei";
              } else if (bulanNow == "Jun") {
                blnNow = "Juni";
              } else if (bulanNow == "Jul") {
                blnNow = "Juli";
              } else if (bulanNow == "Ags") {
                blnNow = "Agustus";
              } else if (bulanNow == "Sep") {
                blnNow = "September";
              } else if (bulanNow == "Okt") {
                blnNow = "Oktober";
              } else if (bulanNow == "Nov") {
                blnNow = "November";
              } else {
                blnNow = "Desember";
              }

              double tpkn1 = double.parse(isiindikatorutama[index = 15].nilai);
              double tpkNow = double.parse(isiindikatorutama[index = 16].nilai);

              double rlmn1 = double.parse(isiindikatorutama[index = 17].nilai);
              double rlmNow = double.parse(isiindikatorutama[index = 18].nilai);

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
                          'assets/images/carousel/hotel_carousel_icon.png',
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 9,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 2),
                              child: Text(
                                "TPK dan RLM Hotel Bintang di $kab Tahun $tahun",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Divider(),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 5),
                              child: Text(
                                "$blnNow: TPK= ${Format.convertTo(tpkNow, 2)}; RLM=${Format.convertTo(rlmNow, 2)}",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 5),
                              child: Text(
                                "$blnn1: TPK= ${Format.convertTo(tpkn1, 2)}; RLM=${Format.convertTo(rlmn1, 2)}",
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