// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_tenaga_kerja_tpt.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider7 extends StatefulWidget {
  const carouselSlider7({super.key});

  @override
  State<carouselSlider7> createState() => _carouselSlider7State();
}

RepositoryPengangguran repositorypengangguran = RepositoryPengangguran();

class _carouselSlider7State extends State<carouselSlider7> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositorypengangguran.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipengangguran = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn5 = (isipengangguran[index = 4].created_at[0] +
                      isipengangguran[index = 4].created_at[1] +
                      isipengangguran[index = 4].created_at[2] +
                      isipengangguran[index = 4].created_at[3])
                  .toString();
              String thn4 = (isipengangguran[index = 3].created_at[0] +
                      isipengangguran[index = 3].created_at[1] +
                      isipengangguran[index = 3].created_at[2] +
                      isipengangguran[index = 3].created_at[3])
                  .toString();

              double tpt5 = double.parse(isipengangguran[index = 4].tpt);
              double tpt4 = double.parse(isipengangguran[index = 3].tpt);

              var deltatpt = tpt5 - tpt4;
              String fenomena = "";

              if (deltatpt >= 0) {
                fenomena = "kenaikan";
              } else {
                fenomena = "penurunan";
              }

              return Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 231, 232, 233),
                  borderRadius: BorderRadius.circular(10),
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
                        height: 56,
                        child: Image.asset(
                          'assets/images/carousel/tpt_carousel_icon.png',
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
                              "Tingkat Pengangguran Terbuka (TPT) Kabupaten Cilacap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn5 : ${Format.convertTo(tpt5, 2)}%",
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn4 : ${Format.convertTo(tpt4, 2)}%",
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Terjadi $fenomena : ${Format.convertTo(deltatpt.abs(), 2)} point %",
                              style: const TextStyle(fontSize: 13),
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
