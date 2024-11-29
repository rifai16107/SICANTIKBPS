import 'package:bps_cilacap/restAPI/repository_inflasi_kota.dart';
import 'package:flutter/material.dart';

class carouselSlider1 extends StatefulWidget {
  const carouselSlider1({super.key});

  @override
  State<carouselSlider1> createState() => _carouselSlider1State();
}

RepositoryInflasiKota repositoryinflasikota = RepositoryInflasiKota();

class _carouselSlider1State extends State<carouselSlider1> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return FutureBuilder(
      future: repositoryinflasikota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiinflasi = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab = isiinflasi[index = 16].nama;
              String tahun = isiinflasi[index = 16].tahun;
              String bulan = isiinflasi[index = 16].bulan.substring(0, 3);
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

              double mtom1 = double.parse(isiinflasi[index = 16].mtom);
              double yony1 = double.parse(isiinflasi[index = 16].ytoy);
              double ytod1 = double.parse(isiinflasi[index = 16].ytod);
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
                                "Inflasi Month to Month : ${mtom1.toStringAsFixed(2)}%",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Inflasi Year to Date : ${ytod1.toStringAsFixed(2)}%",
                                style: const TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerRight,
                              margin: const EdgeInsets.only(right: 15),
                              child: Text(
                                "Inflasi Year on Year : ${yony1.toStringAsFixed(2)}%",
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