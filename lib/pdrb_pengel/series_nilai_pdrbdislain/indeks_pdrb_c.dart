// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IndeksImplisitC extends StatefulWidget {
  const IndeksImplisitC({Key? key}) : super(key: key);

  @override
  State<IndeksImplisitC> createState() => _IndeksImplisitCState();
}

RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();

class _IndeksImplisitCState extends State<IndeksImplisitC> {
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
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                //indeks implisit pdrb komp pengeluaran 2022 (n-1)
                double kons_ruta_n1 =
                    double.parse(isipdrb[index = 11].kons_ruta);
                double kons_lnprt_n1 =
                    double.parse(isipdrb[index = 11].kons_lnprt);
                double kons_pem_n1 = double.parse(isipdrb[index = 11].kons_pem);
                double pmtb_n1 = double.parse(isipdrb[index = 11].pmtb);
                String inventori_n1 = isipdrb[index = 11].inventori;
                String ekspor_n1 = isipdrb[index = 11].ekspor;
                double total_n1 = double.parse(isipdrb[index = 11].total);
                String tahun_n1 = isipdrb[index = 11].tahun;

                //indeks implisit pdrb komp pengeluaran 2023 (n)
                double kons_ruta_n0 =
                    double.parse(isipdrb[index = 10].kons_ruta);
                double kons_lnprt_n0 =
                    double.parse(isipdrb[index = 10].kons_lnprt);
                double kons_pem_n0 = double.parse(isipdrb[index = 10].kons_pem);
                double pmtb_n0 = double.parse(isipdrb[index = 10].pmtb);
                String inventori_n0 = isipdrb[index = 10].inventori;
                String ekspor_n0 = isipdrb[index = 10].ekspor;
                double total_n0 = double.parse(isipdrb[index = 10].total);
                String tahun_n0 = isipdrb[index = 10].tahun;

                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.065,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 2),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Komponen Pengeluaran",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
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
                                        tahun_n1,
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
                                        tahun_n0,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Konsumsi Rumah tangga
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.065,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Center(
                                        child: Text(
                                          "Pengeluaran Konsumsi Rumahtangga",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_ruta_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_ruta_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Konsumsi LNPRT
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.065,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "Pengeluaran Konsumsi LNPRT",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_lnprt_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_lnprt_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Konsumsi Pemerintah
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.065,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Center(
                                        child: Text(
                                          "Pengeluaran Konsumsi Pemerintah",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_pem_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_pem_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // PMTB
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.06,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 0),
                                      child: const Center(
                                        child: Text(
                                          "Pembentukan Modal Tetap Bruto",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(pmtb_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(pmtb_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Inventori
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.06,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "Perubahan Inventori",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                     inventori_n1,
                                      //Format.convertTo(inventori_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      inventori_n0,
                                      //Format.convertTo(inventori_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Net Ekspor
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.06,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "Net Eskpor",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      ekspor_n1,
                                      //Format.convertTo(ekspor_n1, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      ekspor_n0,
                                      //Format.convertTo(ekspor_n0, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Total/ Nilai PDRB Pengeluaran ADHB

                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.06,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "PDRB Pengeluaran",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.06,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: Text(
                                      Format.convertTo(total_n1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.06,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: Text(
                                      Format.convertTo(total_n0, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            //catatan
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Catatan:",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Tahun $tahun_n1 merupakan angka sementara",
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        "Tahun $tahun_n0 merupakan angka sangat sementara",
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
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
