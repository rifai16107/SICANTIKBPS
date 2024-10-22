// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_kemiskinan.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider5 extends StatefulWidget {
  const carouselSlider5({super.key});

  @override
  State<carouselSlider5> createState() => _carouselSlider5State();
}

RepositoryKemiskinan repositorykemiskinan = RepositoryKemiskinan();

class _carouselSlider5State extends State<carouselSlider5> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositorykemiskinan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isikemiskinan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thn4 = (isikemiskinan[index = 3].created_at[0] +
                      isikemiskinan[index = 3].created_at[1] +
                      isikemiskinan[index = 3].created_at[2] +
                      isikemiskinan[index = 3].created_at[3])
                  .toString();
              String thn5 = (isikemiskinan[index = 4].created_at[0] +
                      isikemiskinan[index = 4].created_at[1] +
                      isikemiskinan[index = 4].created_at[2] +
                      isikemiskinan[index = 4].created_at[3])
                  .toString();

              double p0_4 = double.parse(isikemiskinan[index = 3].p0);
              double p0_5 = double.parse(isikemiskinan[index = 4].p0);

              var deltap0 = p0_5 - p0_4;
              String fenomena = "";

              if (deltap0 >= 0) {
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
                          'assets/images/carousel/kemiskinan_icon.png',
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
                              "Kemiskinan Kabupaten Cilacap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn5 : ${Format.convertTo(p0_5, 2)}%",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Tahun $thn4 : ${Format.convertTo(p0_4, 2)}%",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Terjadi $fenomena : ${Format.convertTo(deltap0.abs(), 2)} point %",
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
