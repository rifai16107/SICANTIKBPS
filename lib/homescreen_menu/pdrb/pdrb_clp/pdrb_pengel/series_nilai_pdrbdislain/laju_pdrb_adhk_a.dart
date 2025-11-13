// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class LajuPdrbAdhkA extends StatefulWidget {
  const LajuPdrbAdhkA({Key? key}) : super(key: key);

  @override
  State<LajuPdrbAdhkA> createState() => _LajuPdrbAdhkAState();
}

RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();

class _LajuPdrbAdhkAState extends State<LajuPdrbAdhkA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorypdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                //laju pdrb komp pengeluaran adhk 2019 (n-4)
                double kons_ruta_n4 =
                    double.parse(isipdrb[index = 9].kons_ruta);
                double kons_lnprt_n4 =
                    double.parse(isipdrb[index = 9].kons_lnprt);
                double kons_pem_n4 = double.parse(isipdrb[index = 9].kons_pem);
                double pmtb_n4 = double.parse(isipdrb[index = 9].pmtb);
                double inventori_n4 =
                    double.parse(isipdrb[index = 9].inventori);
                double ekspor_n4 = double.parse(isipdrb[index = 9].ekspor);
                double total_n4 = double.parse(isipdrb[index = 9].total);
                String tahun_n4 = isipdrb[index = 9].tahun;

                return Scaffold(
                    body: Column(
                  children: <Widget>[
                    //Flexible(
                    //fit: FlexFit.tight,
                    //flex: 5,
                    Container(
                      width: screenWidth * 1.0,
                      height: screenHeight * 0.065,
                      color: Colors.green,
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 3, bottom: 3),
                              child: const Text(
                                "Komponen Pengeluaran",
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
                            flex: 3,
                            child: Container(
                              height: screenHeight * 0.065,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 2),
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  tahun_n4,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
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
                            // Pengeluaran Konsumsi Ruta
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.5 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi Rumahtangga",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_ruta_n4, 2),
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

                            //Pengeluaran Konsumsi LNPRT
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.50 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi LNPRT",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_lnprt_n4, 2),
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

                            //Konsumsi Pemerintah
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.5 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi Pemerintah",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_pem_n4, 2),
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

                            //Pemebntukan PMTB
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.5 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pembentukan Modal Tetap Bruto",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pmtb_n4, 2),
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

                            //Perubahan Inventori
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.50 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Perubahan Inventori",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(inventori_n4, 2),
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

                            //Net Ekspor
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.5 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "Net Eskpor",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(ekspor_n4, 2),
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

                            //PDRB Pengeluaran
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.050,
                              color: Colors.green,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.5 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 3, bottom: 3),
                                      child: const Text(
                                        "PDRB Pengeluaran",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.45 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 50, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(total_n4, 2),
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
        },
      ),
    );
  }
}
