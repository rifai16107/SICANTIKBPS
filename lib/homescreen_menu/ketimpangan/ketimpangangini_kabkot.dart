import 'package:bps_cilacap/restAPI/repository_ketimpangan_gini.dart';
//import 'package:bps_cilacap/homescreen_menu/ketimpangan/body_grafik_ginikabkot.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';

class GiniKabkot extends StatefulWidget {
  const GiniKabkot({Key? key}) : super(key: key);

  @override
  State<GiniKabkot> createState() => _GiniKabkotState();
}

RepositoryKetimpanganGini repositorygini = RepositoryKetimpanganGini();

class _GiniKabkotState extends State<GiniKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
          future: repositorygini.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isiginikabkot = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String thn1 = isiginikabkot[index = 0].tahun.substring(0, 4);
                  String thn2 = isiginikabkot[index = 0].tahun.substring(5, 9);
                  String thn3 =
                      isiginikabkot[index = 0].tahun.substring(10, 14);

                  String kabkota1 =
                      isiginikabkot[index = 0].wilayah.substring(2);
                  String kabkota2 =
                      isiginikabkot[index = 1].wilayah.substring(2);
                  String kabkota3 =
                      isiginikabkot[index = 2].wilayah.substring(2);
                  String kabkota4 =
                      isiginikabkot[index = 3].wilayah.substring(2);
                  String kabkota5 =
                      isiginikabkot[index = 4].wilayah.substring(2);
                  String kabkota6 =
                      isiginikabkot[index = 5].wilayah.substring(2);
                  String kabkota7 =
                      isiginikabkot[index = 6].wilayah.substring(2);
                  String kabkota8 =
                      isiginikabkot[index = 7].wilayah.substring(2);
                  String kabkota9 =
                      isiginikabkot[index = 8].wilayah.substring(2);
                  String kabkota10 =
                      isiginikabkot[index = 9].wilayah.substring(2);
                  String kabkota11 =
                      isiginikabkot[index = 10].wilayah.substring(2);
                  String kabkota12 =
                      isiginikabkot[index = 11].wilayah.substring(2);
                  String kabkota13 =
                      isiginikabkot[index = 12].wilayah.substring(2);
                  String kabkota14 =
                      isiginikabkot[index = 13].wilayah.substring(2);
                  String kabkota15 =
                      isiginikabkot[index = 14].wilayah.substring(2);
                  String kabkota16 =
                      isiginikabkot[index = 15].wilayah.substring(2);
                  String kabkota17 =
                      isiginikabkot[index = 16].wilayah.substring(2);
                  String kabkota18 =
                      isiginikabkot[index = 17].wilayah.substring(2);
                  String kabkota19 =
                      isiginikabkot[index = 18].wilayah.substring(2);
                  String kabkota20 =
                      isiginikabkot[index = 19].wilayah.substring(2);
                  String kabkota21 =
                      isiginikabkot[index = 20].wilayah.substring(2);
                  String kabkota22 =
                      isiginikabkot[index = 21].wilayah.substring(2);
                  String kabkota23 =
                      isiginikabkot[index = 22].wilayah.substring(2);
                  String kabkota24 =
                      isiginikabkot[index = 23].wilayah.substring(2);
                  String kabkota25 =
                      isiginikabkot[index = 24].wilayah.substring(2);
                  String kabkota26 =
                      isiginikabkot[index = 25].wilayah.substring(2);
                  String kabkota27 =
                      isiginikabkot[index = 26].wilayah.substring(2);
                  String kabkota28 =
                      isiginikabkot[index = 27].wilayah.substring(2);
                  String kabkota29 =
                      isiginikabkot[index = 28].wilayah.substring(2);
                  String kabkota30 =
                      isiginikabkot[index = 29].wilayah.substring(2);
                  String kabkota31 =
                      isiginikabkot[index = 30].wilayah.substring(2);
                  String kabkota32 =
                      isiginikabkot[index = 31].wilayah.substring(2);
                  String kabkota33 =
                      isiginikabkot[index = 32].wilayah.substring(2);
                  String kabkota34 =
                      isiginikabkot[index = 33].wilayah.substring(2);
                  String kabkota35 =
                      isiginikabkot[index = 34].wilayah.substring(2);
                  String kabkota36 = isiginikabkot[index = 35].wilayah;

                  double gini2021_1 =
                      double.parse(isiginikabkot[index = 0].gini2021);
                  double gini2021_2 =
                      double.parse(isiginikabkot[index = 1].gini2021);
                  double gini2021_3 =
                      double.parse(isiginikabkot[index = 2].gini2021);
                  double gini2021_4 =
                      double.parse(isiginikabkot[index = 3].gini2021);
                  double gini2021_5 =
                      double.parse(isiginikabkot[index = 4].gini2021);
                  double gini2021_6 =
                      double.parse(isiginikabkot[index = 5].gini2021);
                  double gini2021_7 =
                      double.parse(isiginikabkot[index = 6].gini2021);
                  double gini2021_8 =
                      double.parse(isiginikabkot[index = 7].gini2021);
                  double gini2021_9 =
                      double.parse(isiginikabkot[index = 8].gini2021);
                  double gini2021_10 =
                      double.parse(isiginikabkot[index = 9].gini2021);
                  double gini2021_11 =
                      double.parse(isiginikabkot[index = 10].gini2021);
                  double gini2021_12 =
                      double.parse(isiginikabkot[index = 11].gini2021);
                  double gini2021_13 =
                      double.parse(isiginikabkot[index = 12].gini2021);
                  double gini2021_14 =
                      double.parse(isiginikabkot[index = 13].gini2021);
                  double gini2021_15 =
                      double.parse(isiginikabkot[index = 14].gini2021);
                  double gini2021_16 =
                      double.parse(isiginikabkot[index = 15].gini2021);
                  double gini2021_17 =
                      double.parse(isiginikabkot[index = 16].gini2021);
                  double gini2021_18 =
                      double.parse(isiginikabkot[index = 17].gini2021);
                  double gini2021_19 =
                      double.parse(isiginikabkot[index = 17].gini2021);
                  double gini2021_20 =
                      double.parse(isiginikabkot[index = 18].gini2021);
                  double gini2021_21 =
                      double.parse(isiginikabkot[index = 19].gini2021);
                  double gini2021_22 =
                      double.parse(isiginikabkot[index = 20].gini2021);
                  double gini2021_23 =
                      double.parse(isiginikabkot[index = 21].gini2021);
                  double gini2021_24 =
                      double.parse(isiginikabkot[index = 23].gini2021);
                  double gini2021_25 =
                      double.parse(isiginikabkot[index = 24].gini2021);
                  double gini2021_26 =
                      double.parse(isiginikabkot[index = 25].gini2021);
                  double gini2021_27 =
                      double.parse(isiginikabkot[index = 26].gini2021);
                  double gini2021_28 =
                      double.parse(isiginikabkot[index = 27].gini2021);
                  double gini2021_29 =
                      double.parse(isiginikabkot[index = 28].gini2021);
                  double gini2021_30 =
                      double.parse(isiginikabkot[index = 29].gini2021);
                  double gini2021_31 =
                      double.parse(isiginikabkot[index = 30].gini2021);
                  double gini2021_32 =
                      double.parse(isiginikabkot[index = 31].gini2021);
                  double gini2021_33 =
                      double.parse(isiginikabkot[index = 32].gini2021);
                  double gini2021_34 =
                      double.parse(isiginikabkot[index = 33].gini2021);
                  double gini2021_35 =
                      double.parse(isiginikabkot[index = 34].gini2021);
                  double gini2021_36 =
                      double.parse(isiginikabkot[index = 35].gini2021);

                  double gini2022_1 =
                      double.parse(isiginikabkot[index = 0].gini2022);
                  double gini2022_2 =
                      double.parse(isiginikabkot[index = 1].gini2022);
                  double gini2022_3 =
                      double.parse(isiginikabkot[index = 2].gini2022);
                  double gini2022_4 =
                      double.parse(isiginikabkot[index = 3].gini2022);
                  double gini2022_5 =
                      double.parse(isiginikabkot[index = 4].gini2022);
                  double gini2022_6 =
                      double.parse(isiginikabkot[index = 5].gini2022);
                  double gini2022_7 =
                      double.parse(isiginikabkot[index = 6].gini2022);
                  double gini2022_8 =
                      double.parse(isiginikabkot[index = 7].gini2022);
                  double gini2022_9 =
                      double.parse(isiginikabkot[index = 8].gini2022);
                  double gini2022_10 =
                      double.parse(isiginikabkot[index = 9].gini2022);
                  double gini2022_11 =
                      double.parse(isiginikabkot[index = 10].gini2022);
                  double gini2022_12 =
                      double.parse(isiginikabkot[index = 11].gini2022);
                  double gini2022_13 =
                      double.parse(isiginikabkot[index = 12].gini2022);
                  double gini2022_14 =
                      double.parse(isiginikabkot[index = 13].gini2022);
                  double gini2022_15 =
                      double.parse(isiginikabkot[index = 14].gini2022);
                  double gini2022_16 =
                      double.parse(isiginikabkot[index = 15].gini2022);
                  double gini2022_17 =
                      double.parse(isiginikabkot[index = 16].gini2022);
                  double gini2022_18 =
                      double.parse(isiginikabkot[index = 17].gini2022);
                  double gini2022_19 =
                      double.parse(isiginikabkot[index = 18].gini2022);
                  double gini2022_20 =
                      double.parse(isiginikabkot[index = 19].gini2022);
                  double gini2022_21 =
                      double.parse(isiginikabkot[index = 20].gini2022);
                  double gini2022_22 =
                      double.parse(isiginikabkot[index = 21].gini2022);
                  double gini2022_23 =
                      double.parse(isiginikabkot[index = 22].gini2022);
                  double gini2022_24 =
                      double.parse(isiginikabkot[index = 23].gini2022);
                  double gini2022_25 =
                      double.parse(isiginikabkot[index = 24].gini2022);
                  double gini2022_26 =
                      double.parse(isiginikabkot[index = 25].gini2022);
                  double gini2022_27 =
                      double.parse(isiginikabkot[index = 26].gini2022);
                  double gini2022_28 =
                      double.parse(isiginikabkot[index = 27].gini2022);
                  double gini2022_29 =
                      double.parse(isiginikabkot[index = 28].gini2022);
                  double gini2022_30 =
                      double.parse(isiginikabkot[index = 29].gini2022);
                  double gini2022_31 =
                      double.parse(isiginikabkot[index = 30].gini2022);
                  double gini2022_32 =
                      double.parse(isiginikabkot[index = 31].gini2022);
                  double gini2022_33 =
                      double.parse(isiginikabkot[index = 32].gini2022);
                  double gini2022_34 =
                      double.parse(isiginikabkot[index = 33].gini2022);
                  double gini2022_35 =
                      double.parse(isiginikabkot[index = 34].gini2022);
                  double gini2022_36 =
                      double.parse(isiginikabkot[index = 35].gini2022);

                  double gini2023_1 =
                      double.parse(isiginikabkot[index = 0].gini2023);
                  double gini2023_2 =
                      double.parse(isiginikabkot[index = 1].gini2023);
                  double gini2023_3 =
                      double.parse(isiginikabkot[index = 2].gini2023);
                  double gini2023_4 =
                      double.parse(isiginikabkot[index = 3].gini2023);
                  double gini2023_5 =
                      double.parse(isiginikabkot[index = 4].gini2023);
                  double gini2023_6 =
                      double.parse(isiginikabkot[index = 5].gini2023);
                  double gini2023_7 =
                      double.parse(isiginikabkot[index = 6].gini2023);
                  double gini2023_8 =
                      double.parse(isiginikabkot[index = 7].gini2023);
                  double gini2023_9 =
                      double.parse(isiginikabkot[index = 8].gini2023);
                  double gini2023_10 =
                      double.parse(isiginikabkot[index = 9].gini2023);
                  double gini2023_11 =
                      double.parse(isiginikabkot[index = 10].gini2023);
                  double gini2023_12 =
                      double.parse(isiginikabkot[index = 11].gini2023);
                  double gini2023_13 =
                      double.parse(isiginikabkot[index = 12].gini2023);
                  double gini2023_14 =
                      double.parse(isiginikabkot[index = 13].gini2023);
                  double gini2023_15 =
                      double.parse(isiginikabkot[index = 14].gini2023);
                  double gini2023_16 =
                      double.parse(isiginikabkot[index = 15].gini2023);
                  double gini2023_17 =
                      double.parse(isiginikabkot[index = 16].gini2023);
                  double gini2023_18 =
                      double.parse(isiginikabkot[index = 17].gini2023);
                  double gini2023_19 =
                      double.parse(isiginikabkot[index = 18].gini2023);
                  double gini2023_20 =
                      double.parse(isiginikabkot[index = 19].gini2023);
                  double gini2023_21 =
                      double.parse(isiginikabkot[index = 20].gini2023);
                  double gini2023_22 =
                      double.parse(isiginikabkot[index = 21].gini2023);
                  double gini2023_23 =
                      double.parse(isiginikabkot[index = 22].gini2023);
                  double gini2023_24 =
                      double.parse(isiginikabkot[index = 23].gini2023);
                  double gini2023_25 =
                      double.parse(isiginikabkot[index = 24].gini2023);
                  double gini2023_26 =
                      double.parse(isiginikabkot[index = 25].gini2023);
                  double gini2023_27 =
                      double.parse(isiginikabkot[index = 26].gini2023);
                  double gini2023_28 =
                      double.parse(isiginikabkot[index = 27].gini2023);
                  double gini2023_29 =
                      double.parse(isiginikabkot[index = 28].gini2023);
                  double gini2023_30 =
                      double.parse(isiginikabkot[index = 29].gini2023);
                  double gini2023_31 =
                      double.parse(isiginikabkot[index = 30].gini2023);
                  double gini2023_32 =
                      double.parse(isiginikabkot[index = 31].gini2023);
                  double gini2023_33 =
                      double.parse(isiginikabkot[index = 32].gini2023);
                  double gini2023_34 =
                      double.parse(isiginikabkot[index = 33].gini2023);
                  double gini2023_35 =
                      double.parse(isiginikabkot[index = 34].gini2023);
                  double gini2023_36 =
                      double.parse(isiginikabkot[index = 35].gini2023);

                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: screenHeight * 0.1,
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 15,
                            bottom: 15,
                          ),
                          child: Text(
                            "Gini Rasio (Koefisien Gini Rasio) Kabupaten/Kota Di Jawa Tengah, Tahun $thn1-$thn3",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.06,
                        color: Colors.green,
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 4,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                    right: 3, top: 10, bottom: 0),
                                child: const Text(
                                  "Kabupaten/Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 2),
                                child: Text(
                                  thn1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 2),
                                child: Text(
                                  thn2,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.green,
                                padding: const EdgeInsets.only(
                                    left: 10, top: 10, bottom: 2),
                                child: Text(
                                  thn3,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //),
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
                              // Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_1, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_1, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_1, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_2, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_2, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_2, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_3, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_3, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_3, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Banjarnegara

                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_4, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_4, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_4, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_5, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_5, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_5, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_6, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_6, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_6, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_7, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_7, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_7, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_8, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_8, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_8, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_9, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_9, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_9, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_10, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_10, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_10, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_11, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_11, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_11, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_12, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_12, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_12, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_13, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_13, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_13, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_14, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_14, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_14, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_15, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_15, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_15, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_16, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_16, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_16, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_17, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_17, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_17, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 6,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_18, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_18, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_18, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_19, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_19, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_19, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 6,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_20, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_20, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_20, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_21, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_21, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_21, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_22, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_22, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_22, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_23, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_23, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_23, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_24, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_24, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_24, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_25, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_25, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_25, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_26, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_26, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_26, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_27, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_27, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_27, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_28, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_28, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_28, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_29, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_29, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_29, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_30, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_30, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_30, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_31, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_31, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_31, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_32, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_32, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_32, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_33, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_33, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_33, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_34, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_34, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_34, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2021_35, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2022_35, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(gini2023_35, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Total
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.050,
                                color: Colors.green,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 4,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 15,
                                            top: 3,
                                            bottom: 3),
                                        child: Text(
                                          kabkota36,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 3, bottom: 3),
                                        child: Text(
                                          Format.convertTo(gini2021_36, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 3, bottom: 3),
                                        child: Text(
                                          Format.convertTo(gini2022_36, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 15, top: 3, bottom: 3),
                                        child: Text(
                                          Format.convertTo(gini2023_36, 3),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.white),
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
                                  bottom: 60,
                                ),
                                child: const Text(
                                  " Sumber Data : Survei Sosial Ekonomi Nasional (SUSENAS)",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
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
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          }),
    );
  }
}
