// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_ketimpangan_gini.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider4 extends StatefulWidget {
  const carouselSlider4({super.key});

  @override
  State<carouselSlider4> createState() => _carouselSlider4State();
}

RepositoryKetimpanganGini repositoryipm = RepositoryKetimpanganGini();

class _carouselSlider4State extends State<carouselSlider4> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryipm.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiginikabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn2 = isiginikabkot[index = 0].tahun.substring(5, 9);
              String thn3 = isiginikabkot[index = 0].tahun.substring(10, 14);

              double giniRasiothn2 =
                  double.parse(isiginikabkot[index = 0].gini2022);
              double giniRasiothn3 =
                  double.parse(isiginikabkot[index = 0].gini2023);
              double deltaGini = giniRasiothn3 - giniRasiothn2;
              String fenomena = "";

              if (deltaGini >= 0) {
                fenomena = "kenaikan";
              } else {
                fenomena = "penurunan";
              }
              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 232, 233),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(top: 2, bottom: 2),
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
                          'assets/images/carousel/ketimpangan_icon.png',
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
                            child: const Text(
                              "Gini Rasio Kabupaten Cilacap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn3  tercatat: ${Format.convertTo(giniRasiothn3, 3)}",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn2  tercatat: ${Format.convertTo(giniRasiothn2, 3)}",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Terjadi $fenomena sebesar: ${Format.convertTo(deltaGini.abs(), 3)}",
                               style: const TextStyle(fontSize:13 ),
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
