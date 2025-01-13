// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IndeksImplisitB extends StatefulWidget {
  const IndeksImplisitB({Key? key}) : super(key: key);

  @override
  State<IndeksImplisitB> createState() => _IndeksImplisitBState();
}

RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();

class _IndeksImplisitBState extends State<IndeksImplisitB> {
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
                //indeks implisit pdrb komp pengeluaran 2020 (n-3)
                double kons_ruta_n3 =
                    double.parse(isipdrb[index = 13].kons_ruta);
                double kons_lnprt_n3 =
                    double.parse(isipdrb[index = 13].kons_lnprt);
                double kons_pem_n3 = double.parse(isipdrb[index = 13].kons_pem);
                double pmtb_n3 = double.parse(isipdrb[index = 13].pmtb);
                String inventori_n3 = isipdrb[index = 13].inventori;
                String ekspor_n3 = isipdrb[index = 13].ekspor;
                double total_n3 = double.parse(isipdrb[index = 13].total);
                String tahun_n3 = isipdrb[index = 13].tahun;

                //indeks implisit pdrb komp pengeluaran 2021 (n-2)
                double kons_ruta_n2 =
                    double.parse(isipdrb[index = 12].kons_ruta);
                double kons_lnprt_n2 =
                    double.parse(isipdrb[index = 12].kons_lnprt);
                double kons_pem_n2 = double.parse(isipdrb[index = 12].kons_pem);
                double pmtb_n2 = double.parse(isipdrb[index = 12].pmtb);
                String inventori_n2 = isipdrb[index = 12].inventori;
                String ekspor_n2 = isipdrb[index = 12].ekspor;
                double total_n2 = double.parse(isipdrb[index = 12].total);
                String tahun_n2 = isipdrb[index = 12].tahun;

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
                            flex: 2,
                            child: Container(
                              height: screenHeight * 0.065,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 2),
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  tahun_n3,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Container(
                              height: screenHeight * 0.065,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 2),
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  tahun_n2,
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_ruta_n3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_ruta_n2, 2),
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_lnprt_n3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_lnprt_n2, 2),
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_pem_n3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_pem_n2, 2),
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pmtb_n3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pmtb_n2, 2),
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        inventori_n3,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        inventori_n2,
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        ekspor_n3,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        ekspor_n2,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13,
                                        ),
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
                                    width: 0.44 * screenWidth,
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
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(total_n3, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(total_n2, 2),
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
