// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pertumbuhan_ekonomi.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider6 extends StatefulWidget {
  const carouselSlider6({super.key});

  @override
  State<carouselSlider6> createState() => _carouselSlider6State();
}

RepositoryPertumbuhanEkonomi repositorypertumbuhan =
    RepositoryPertumbuhanEkonomi();

class _carouselSlider6State extends State<carouselSlider6> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositorypertumbuhan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipertumbuhanekonomi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn4 = (isipertumbuhanekonomi[index = 3].tahun[0] +
                      isipertumbuhanekonomi[index = 3].tahun[1] +
                      isipertumbuhanekonomi[index = 3].tahun[2] +
                      isipertumbuhanekonomi[index = 3].tahun[3])
                  .toString();
              String thn5 = (isipertumbuhanekonomi[index = 4].tahun[0] +
                      isipertumbuhanekonomi[index = 4].tahun[1] +
                      isipertumbuhanekonomi[index = 4].tahun[2] +
                      isipertumbuhanekonomi[index = 4].tahun[3])
                  .toString();

              double pe_4 = double.parse(
                  isipertumbuhanekonomi[index = 3].ekonomi_nonmigas);
              double pe_5 = double.parse(
                  isipertumbuhanekonomi[index = 4].ekonomi_nonmigas);

              var deltape = pe_5 - pe_4;
              String fenomena = "";

              if (deltape >= 0) {
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
                          'assets/images/carousel/pertumbuhan_icon.png',
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
                              "Pertumbuhan Ekonomi Kab. Cilacap (Tanpa Migas)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn5 : ${Format.convertTo(pe_5, 2)}%",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn4 : ${Format.convertTo(pe_4, 2)}%",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Terjadi $fenomena : ${Format.convertTo(deltape.abs(), 2)} point %",
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
