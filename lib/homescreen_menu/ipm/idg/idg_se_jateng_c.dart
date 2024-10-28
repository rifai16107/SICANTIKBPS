// ignore_for_file: camel_case_types, unused_local_variable, duplicate_ignore, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_idg_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IdgKabkotC extends StatefulWidget {
  const IdgKabkotC({Key? key}) : super(key: key);

  @override
  State<IdgKabkotC> createState() => _IdgKabkotCState();
}

class _IdgKabkotCState extends State<IdgKabkotC> {
  RepositoryIdgKabkot repositoryIdgKabkot = RepositoryIdgKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryIdgKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiidgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String thN1 = isiidgkabkot[index = 0].tahun.substring(0, 4);

              // IDG 2019
              String kabkota1 = isiidgkabkot[index = 0].kab_kota;
              String kabkota2 = isiidgkabkot[index = 1].kab_kota;
              String kabkota3 = isiidgkabkot[index = 2].kab_kota;
              String kabkota4 = isiidgkabkot[index = 3].kab_kota;
              String kabkota5 = isiidgkabkot[index = 4].kab_kota;
              String kabkota6 = isiidgkabkot[index = 5].kab_kota;
              String kabkota7 = isiidgkabkot[index = 6].kab_kota;
              String kabkota8 = isiidgkabkot[index = 7].kab_kota;
              String kabkota9 = isiidgkabkot[index = 8].kab_kota;
              String kabkota10 = isiidgkabkot[index = 9].kab_kota;
              String kabkota11 = isiidgkabkot[index = 10].kab_kota;
              String kabkota12 = isiidgkabkot[index = 11].kab_kota;
              String kabkota13 = isiidgkabkot[index = 12].kab_kota;
              String kabkota14 = isiidgkabkot[index = 13].kab_kota;
              String kabkota15 = isiidgkabkot[index = 14].kab_kota;
              String kabkota16 = isiidgkabkot[index = 15].kab_kota;
              String kabkota17 = isiidgkabkot[index = 16].kab_kota;
              String kabkota18 = isiidgkabkot[index = 17].kab_kota;
              String kabkota19 = isiidgkabkot[index = 18].kab_kota;
              String kabkota20 = isiidgkabkot[index = 19].kab_kota;
              String kabkota21 = isiidgkabkot[index = 20].kab_kota;
              String kabkota22 = isiidgkabkot[index = 21].kab_kota;
              String kabkota23 = isiidgkabkot[index = 22].kab_kota;
              String kabkota24 = isiidgkabkot[index = 23].kab_kota;
              String kabkota25 = isiidgkabkot[index = 24].kab_kota;
              String kabkota26 = isiidgkabkot[index = 25].kab_kota;
              String kabkota27 = isiidgkabkot[index = 26].kab_kota;
              String kabkota28 = isiidgkabkot[index = 27].kab_kota;
              String kabkota29 = isiidgkabkot[index = 28].kab_kota;
              String kabkota30 = isiidgkabkot[index = 29].kab_kota;
              String kabkota31 = isiidgkabkot[index = 30].kab_kota;
              String kabkota32 = isiidgkabkot[index = 31].kab_kota;
              String kabkota33 = isiidgkabkot[index = 32].kab_kota;
              String kabkota34 = isiidgkabkot[index = 33].kab_kota;
              String kabkota35 = isiidgkabkot[index = 34].kab_kota;
              String kabkota36 = isiidgkabkot[index = 35].kab_kota;

              //IDG dan komponennya tahun n1 (2019)
              double pendapatanN11 =
                  double.parse(isiidgkabkot[index = 0].pendapatan_n3);
              double pendapatanN12 =
                  double.parse(isiidgkabkot[index = 1].pendapatan_n3);
              double pendapatanN13 =
                  double.parse(isiidgkabkot[index = 2].pendapatan_n3);
              double pendapatanN14 =
                  double.parse(isiidgkabkot[index = 3].pendapatan_n3);
              double pendapatanN15 =
                  double.parse(isiidgkabkot[index = 4].pendapatan_n3);
              double pendapatanN16 =
                  double.parse(isiidgkabkot[index = 5].pendapatan_n3);
              double pendapatanN17 =
                  double.parse(isiidgkabkot[index = 6].pendapatan_n3);
              double pendapatanN18 =
                  double.parse(isiidgkabkot[index = 7].pendapatan_n3);
              double pendapatanN19 =
                  double.parse(isiidgkabkot[index = 8].pendapatan_n3);
              double pendapatanN110 =
                  double.parse(isiidgkabkot[index = 9].pendapatan_n3);
              double pendapatanN111 =
                  double.parse(isiidgkabkot[index = 10].pendapatan_n3);
              double pendapatanN112 =
                  double.parse(isiidgkabkot[index = 11].pendapatan_n3);
              double pendapatanN113 =
                  double.parse(isiidgkabkot[index = 12].pendapatan_n3);
              double pendapatanN114 =
                  double.parse(isiidgkabkot[index = 13].pendapatan_n3);
              double pendapatanN115 =
                  double.parse(isiidgkabkot[index = 14].pendapatan_n3);
              double pendapatanN116 =
                  double.parse(isiidgkabkot[index = 15].pendapatan_n3);
              double pendapatanN117 =
                  double.parse(isiidgkabkot[index = 16].pendapatan_n3);
              double pendapatanN118 =
                  double.parse(isiidgkabkot[index = 17].pendapatan_n3);
              double pendapatanN119 =
                  double.parse(isiidgkabkot[index = 18].pendapatan_n3);
              double pendapatanN120 =
                  double.parse(isiidgkabkot[index = 19].pendapatan_n3);
              double pendapatanN121 =
                  double.parse(isiidgkabkot[index = 20].pendapatan_n3);
              double pendapatanN122 =
                  double.parse(isiidgkabkot[index = 21].pendapatan_n3);
              double pendapatanN123 =
                  double.parse(isiidgkabkot[index = 22].pendapatan_n3);
              double pendapatanN124 =
                  double.parse(isiidgkabkot[index = 23].pendapatan_n3);
              double pendapatanN125 =
                  double.parse(isiidgkabkot[index = 24].pendapatan_n3);
              double pendapatanN126 =
                  double.parse(isiidgkabkot[index = 25].pendapatan_n3);
              double pendapatanN127 =
                  double.parse(isiidgkabkot[index = 26].pendapatan_n3);
              double pendapatanN128 =
                  double.parse(isiidgkabkot[index = 27].pendapatan_n3);
              double pendapatanN129 =
                  double.parse(isiidgkabkot[index = 28].pendapatan_n3);
              double pendapatanN130 =
                  double.parse(isiidgkabkot[index = 29].pendapatan_n3);
              double pendapatanN131 =
                  double.parse(isiidgkabkot[index = 30].pendapatan_n3);
              double pendapatanN132 =
                  double.parse(isiidgkabkot[index = 31].pendapatan_n3);
              double pendapatanN133 =
                  double.parse(isiidgkabkot[index = 32].pendapatan_n3);
              double pendapatanN134 =
                  double.parse(isiidgkabkot[index = 33].pendapatan_n3);
              double pendapatanN135 =
                  double.parse(isiidgkabkot[index = 34].pendapatan_n3);
              double pendapatanN136 =
                  double.parse(isiidgkabkot[index = 35].pendapatan_n3);

              double profesionalN11 =
                  double.parse(isiidgkabkot[index = 0].profesional_n3);
              double profesionalN12 =
                  double.parse(isiidgkabkot[index = 1].profesional_n3);
              double profesionalN13 =
                  double.parse(isiidgkabkot[index = 2].profesional_n3);
              double profesionalN14 =
                  double.parse(isiidgkabkot[index = 3].profesional_n3);
              double profesionalN15 =
                  double.parse(isiidgkabkot[index = 4].profesional_n3);
              double profesionalN16 =
                  double.parse(isiidgkabkot[index = 5].profesional_n3);
              double profesionalN17 =
                  double.parse(isiidgkabkot[index = 6].profesional_n3);
              double profesionalN18 =
                  double.parse(isiidgkabkot[index = 7].profesional_n3);
              double profesionalN19 =
                  double.parse(isiidgkabkot[index = 8].profesional_n3);
              double profesionalN110 =
                  double.parse(isiidgkabkot[index = 9].profesional_n3);
              double profesionalN111 =
                  double.parse(isiidgkabkot[index = 10].profesional_n3);
              double profesionalN112 =
                  double.parse(isiidgkabkot[index = 11].profesional_n3);
              double profesionalN113 =
                  double.parse(isiidgkabkot[index = 12].profesional_n3);
              double profesionalN114 =
                  double.parse(isiidgkabkot[index = 13].profesional_n3);
              double profesionalN115 =
                  double.parse(isiidgkabkot[index = 14].profesional_n3);
              double profesionalN116 =
                  double.parse(isiidgkabkot[index = 15].profesional_n3);
              double profesionalN117 =
                  double.parse(isiidgkabkot[index = 16].profesional_n3);
              double profesionalN118 =
                  double.parse(isiidgkabkot[index = 17].profesional_n3);
              double profesionalN119 =
                  double.parse(isiidgkabkot[index = 18].profesional_n3);
              double profesionalN120 =
                  double.parse(isiidgkabkot[index = 19].profesional_n3);
              double profesionalN121 =
                  double.parse(isiidgkabkot[index = 20].profesional_n3);
              double profesionalN122 =
                  double.parse(isiidgkabkot[index = 21].profesional_n3);
              double profesionalN123 =
                  double.parse(isiidgkabkot[index = 22].profesional_n3);
              double profesionalN124 =
                  double.parse(isiidgkabkot[index = 23].profesional_n3);
              double profesionalN125 =
                  double.parse(isiidgkabkot[index = 24].profesional_n3);
              double profesionalN126 =
                  double.parse(isiidgkabkot[index = 25].profesional_n3);
              double profesionalN127 =
                  double.parse(isiidgkabkot[index = 26].profesional_n3);
              double profesionalN128 =
                  double.parse(isiidgkabkot[index = 27].profesional_n3);
              double profesionalN129 =
                  double.parse(isiidgkabkot[index = 28].profesional_n3);
              double profesionalN130 =
                  double.parse(isiidgkabkot[index = 29].profesional_n3);
              double profesionalN131 =
                  double.parse(isiidgkabkot[index = 30].profesional_n3);
              double profesionalN132 =
                  double.parse(isiidgkabkot[index = 31].profesional_n3);
              double profesionalN133 =
                  double.parse(isiidgkabkot[index = 32].profesional_n3);
              double profesionalN134 =
                  double.parse(isiidgkabkot[index = 33].profesional_n3);
              double profesionalN135 =
                  double.parse(isiidgkabkot[index = 34].profesional_n3);
              double profesionalN136 =
                  double.parse(isiidgkabkot[index = 35].profesional_n3);

              double parlemenN11 =
                  double.parse(isiidgkabkot[index = 0].parlemen_n3);
              double parlemenN12 =
                  double.parse(isiidgkabkot[index = 1].parlemen_n3);
              double parlemenN13 =
                  double.parse(isiidgkabkot[index = 2].parlemen_n3);
              double parlemenN14 =
                  double.parse(isiidgkabkot[index = 3].parlemen_n3);
              double parlemenN15 =
                  double.parse(isiidgkabkot[index = 4].parlemen_n3);
              double parlemenN16 =
                  double.parse(isiidgkabkot[index = 5].parlemen_n3);
              double parlemenN17 =
                  double.parse(isiidgkabkot[index = 6].parlemen_n3);
              double parlemenN18 =
                  double.parse(isiidgkabkot[index = 7].parlemen_n3);
              double parlemenN19 =
                  double.parse(isiidgkabkot[index = 8].parlemen_n3);
              double parlemenN110 =
                  double.parse(isiidgkabkot[index = 9].parlemen_n3);
              double parlemenN111 =
                  double.parse(isiidgkabkot[index = 10].parlemen_n3);
              double parlemenN112 =
                  double.parse(isiidgkabkot[index = 11].parlemen_n3);
              double parlemenN113 =
                  double.parse(isiidgkabkot[index = 12].parlemen_n3);
              double parlemenN114 =
                  double.parse(isiidgkabkot[index = 13].parlemen_n3);
              double parlemenN115 =
                  double.parse(isiidgkabkot[index = 14].parlemen_n3);
              double parlemenN116 =
                  double.parse(isiidgkabkot[index = 15].parlemen_n3);
              double parlemenN117 =
                  double.parse(isiidgkabkot[index = 16].parlemen_n3);
              double parlemenN118 =
                  double.parse(isiidgkabkot[index = 17].parlemen_n3);
              double parlemenN119 =
                  double.parse(isiidgkabkot[index = 18].parlemen_n3);
              double parlemenN120 =
                  double.parse(isiidgkabkot[index = 19].parlemen_n3);
              double parlemenN121 =
                  double.parse(isiidgkabkot[index = 20].parlemen_n3);
              double parlemenN122 =
                  double.parse(isiidgkabkot[index = 21].parlemen_n3);
              double parlemenN123 =
                  double.parse(isiidgkabkot[index = 22].parlemen_n3);
              double parlemenN124 =
                  double.parse(isiidgkabkot[index = 23].parlemen_n3);
              double parlemenN125 =
                  double.parse(isiidgkabkot[index = 24].parlemen_n3);
              double parlemenN126 =
                  double.parse(isiidgkabkot[index = 25].parlemen_n3);
              double parlemenN127 =
                  double.parse(isiidgkabkot[index = 26].parlemen_n3);
              double parlemenN128 =
                  double.parse(isiidgkabkot[index = 27].parlemen_n3);
              double parlemenN129 =
                  double.parse(isiidgkabkot[index = 28].parlemen_n3);
              double parlemenN130 =
                  double.parse(isiidgkabkot[index = 29].parlemen_n3);
              double parlemenN131 =
                  double.parse(isiidgkabkot[index = 30].parlemen_n3);
              double parlemenN132 =
                  double.parse(isiidgkabkot[index = 31].parlemen_n3);
              double parlemenN133 =
                  double.parse(isiidgkabkot[index = 32].parlemen_n3);
              double parlemenN134 =
                  double.parse(isiidgkabkot[index = 33].parlemen_n3);
              double parlemenN135 =
                  double.parse(isiidgkabkot[index = 34].parlemen_n3);
              double parlemenN136 =
                  double.parse(isiidgkabkot[index = 35].parlemen_n3);

              double idgN11 = double.parse(isiidgkabkot[index = 0].idg_n3);
              double idgN12 = double.parse(isiidgkabkot[index = 1].idg_n3);
              double idgN13 = double.parse(isiidgkabkot[index = 2].idg_n3);
              double idgN14 = double.parse(isiidgkabkot[index = 3].idg_n3);
              double idgN15 = double.parse(isiidgkabkot[index = 4].idg_n3);
              double idgN16 = double.parse(isiidgkabkot[index = 5].idg_n3);
              double idgN17 = double.parse(isiidgkabkot[index = 6].idg_n3);
              double idgN18 = double.parse(isiidgkabkot[index = 7].idg_n3);
              double idgN19 = double.parse(isiidgkabkot[index = 8].idg_n3);
              double idgN110 = double.parse(isiidgkabkot[index = 9].idg_n3);
              double idgN111 = double.parse(isiidgkabkot[index = 10].idg_n3);
              double idgN112 = double.parse(isiidgkabkot[index = 11].idg_n3);
              double idgN113 = double.parse(isiidgkabkot[index = 12].idg_n3);
              double idgN114 = double.parse(isiidgkabkot[index = 13].idg_n3);
              double idgN115 = double.parse(isiidgkabkot[index = 14].idg_n3);
              double idgN116 = double.parse(isiidgkabkot[index = 15].idg_n3);
              double idgN117 = double.parse(isiidgkabkot[index = 16].idg_n3);
              double idgN118 = double.parse(isiidgkabkot[index = 17].idg_n3);
              double idgN119 = double.parse(isiidgkabkot[index = 18].idg_n3);
              double idgN120 = double.parse(isiidgkabkot[index = 19].idg_n3);
              double idgN121 = double.parse(isiidgkabkot[index = 20].idg_n3);
              double idgN122 = double.parse(isiidgkabkot[index = 21].idg_n3);
              double idgN123 = double.parse(isiidgkabkot[index = 22].idg_n3);
              double idgN124 = double.parse(isiidgkabkot[index = 23].idg_n3);
              double idgN125 = double.parse(isiidgkabkot[index = 24].idg_n3);
              double idgN126 = double.parse(isiidgkabkot[index = 25].idg_n3);
              double idgN127 = double.parse(isiidgkabkot[index = 26].idg_n3);
              double idgN128 = double.parse(isiidgkabkot[index = 27].idg_n3);
              double idgN129 = double.parse(isiidgkabkot[index = 28].idg_n3);
              double idgN130 = double.parse(isiidgkabkot[index = 29].idg_n3);
              double idgN131 = double.parse(isiidgkabkot[index = 30].idg_n3);
              double idgN132 = double.parse(isiidgkabkot[index = 31].idg_n3);
              double idgN133 = double.parse(isiidgkabkot[index = 32].idg_n3);
              double idgN134 = double.parse(isiidgkabkot[index = 33].idg_n3);
              double idgN135 = double.parse(isiidgkabkot[index = 34].idg_n3);
              double idgN136 = double.parse(isiidgkabkot[index = 35].idg_n3);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.02,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            color: Colors.green,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Sumbangan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Perempuan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Keterlibatan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Indeks",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.02,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Kabupaten/",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Pendapatan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Sbg Tenaga",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Perempuan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.02,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Pemberda-",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.03,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Kota",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Perempuan",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "Profesional",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "di Parlemen",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 1, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "yaan Gender",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.03,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 2),
                            color: Colors.green,
                            child: const Text(
                              "",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "(persen)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "(persen)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "(persen)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.03,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2, vertical: 0),
                            color: Colors.green,
                            child: const Text(
                              "(IDG)",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    //flex:16,
                    child: SingleChildScrollView(
                      //child: Flexible(
                      //flex: 20,
                      //fit: FlexFit.tight,
                      //child: SizedBox(
                      //width: screenWidth,
                      //height: screenHeight,
                      child: Column(
                        children: [
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota1,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN11, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN11, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN11, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN11, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Banyumas
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota2,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN12, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN12, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN12, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN12, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Purbalingga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota3,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN13, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN13, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN13, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN13, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Banjarnegara
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota4,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN14, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN14, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN14, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN14, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //Kebumen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota5,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN15, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN15, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN15, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN15, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Purworejo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota6,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN16, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN16, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN16, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN16, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Wonosobo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota7,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN17, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN17, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN17, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN17, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota8,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN18, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN18, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN18, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN18, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Boyolali
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota9,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN19, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN19, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN19, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN19, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Klaten
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota10,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN110, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN110, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN110, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN110, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Sukoharjo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota11,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN111, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN111, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN111, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN111, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Wonogiri
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota12,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN112, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN112, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN112, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN112, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Karanganyar
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota13,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN113, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN113, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN113, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN113, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Sragen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota14,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN114, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN114, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN114, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN114, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Grobogan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota15,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN115, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN115, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN115, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN115, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Blora
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota16,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN116, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN116, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN116, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN116, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Rembang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota17,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN117, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN117, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN117, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN117, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Pati
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota18,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN118, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN118, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN118, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN118, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Kudus
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota19,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN119, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN119, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN119, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN119, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Jepara
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota20,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN120, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN120, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN120, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN120, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Demak
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota21,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN121, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN121, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN121, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN121, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota22,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN122, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN122, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN122, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN122, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Temanggung
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota23,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN123, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN123, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN123, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN123, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kendal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota24,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN124, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN124, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN124, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN124, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Batang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota25,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN125, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN125, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN125, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN125, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota26,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN126, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN126, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN126, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN126, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Pemalang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota27,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN127, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN127, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN127, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN127, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota28,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN128, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN128, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN128, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN128, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Brebes
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota29,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN129, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN129, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN129, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN129, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kota Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota30,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN130, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN130, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN130, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN130, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kota Surakarta
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota31,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN131, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN131, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN131, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN131, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Kota Salatiga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota32,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN132, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN132, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN132, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN132, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kota Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota33,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN133, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN133, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN133, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN133, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Kota Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota34,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN134, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN134, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN134, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN134, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Kota Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.038,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota35,
                                      style: const TextStyle(fontSize: 12),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN135, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN135, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN135, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN135, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Jateng
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.050,
                            color: Colors.green,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 1, vertical: 2),
                                    child: Text(
                                      kabkota36,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(pendapatanN136, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(profesionalN136, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(parlemenN136, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    child: Text(
                                      Format.convertTo(idgN136, 2),
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 20,
                            ),
                            child: const Text(
                              " Sumber Data : BPS, diolah dari berbagai sumber.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ));
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('Database Error');
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}
