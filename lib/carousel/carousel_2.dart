import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class carouselSlider2 extends StatefulWidget {
  const carouselSlider2({super.key});

  @override
  State<carouselSlider2> createState() => _carouselSlider2State();
}

RepositoryJumlahPenduduk repositoryJumlahPenduduk = RepositoryJumlahPenduduk();

class _carouselSlider2State extends State<carouselSlider2> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryJumlahPenduduk.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipenduduk = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String tahun = isipenduduk[index = 0].tahun;
              int lkTotal = int.parse(isipenduduk[index = 0].total);
              int prTotal = int.parse(isipenduduk[index = 1].total);

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
                        height: 55,
                        child: Image.asset(
                          'assets/images/carousel/hasil_sp_icon.png',
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
                              "Penduduk Kab. Cilacap Tahun $tahun (Proyeksi Penduduk)",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Divider(),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Laki - Laki : ${Format.convertTo(lkTotal, 0)} Jiwa",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Perempuan :    ${Format.convertTo(prTotal, 0)} Jiwa",
                               style: const TextStyle(fontSize:13 ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              "Total : ${Format.convertTo((lkTotal + prTotal), 0)} Jiwa",
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


// ignore_for_file: camel_case_types