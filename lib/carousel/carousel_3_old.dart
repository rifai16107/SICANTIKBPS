// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider3 extends StatefulWidget {
  const carouselSlider3({super.key});

  @override
  State<carouselSlider3> createState() => _carouselSlider3State();
}

RepositoryIpm repositoryipm = RepositoryIpm();

class _carouselSlider3State extends State<carouselSlider3> {
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
          List isiipm = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahunn_1 = isiipm[index = 3].created_at[0] +
                  isiipm[index = 3].created_at[1] +
                  isiipm[index = 3].created_at[2] +
                  isiipm[index = 3].created_at[3];
              String tahunnow = isiipm[index = 4].created_at[0] +
                  isiipm[index = 4].created_at[1] +
                  isiipm[index = 4].created_at[2] +
                  isiipm[index = 4].created_at[3];

              double ipmA = double.parse(isiipm[index = 3].ipm_lfsp2020);
              double ipmB = double.parse(isiipm[index = 4].ipm_lfsp2020);
              double deltaipm = ipmB - ipmA;
              String fenomena = "";

              if (deltaipm >= 0) {
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
                          'assets/images/carousel/ipm_carousel_icon.png',
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
                              "IPM Kabupaten Cilacap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $tahunnow  tercatat: ${Format.convertTo(ipmB, 2)}",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $tahunn_1  tercatat: ${Format.convertTo(ipmA, 2)}",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Terjadi $fenomena sebesar: ${Format.convertTo(deltaipm.abs(), 2)}",
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
