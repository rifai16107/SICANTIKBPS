// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pdrb_pengel.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PdrbPengelAdhkB extends StatefulWidget {
  const PdrbPengelAdhkB({Key? key}) : super(key: key);

  @override
  State<PdrbPengelAdhkB> createState() => _PdrbPengelAdhkBState();
}

RepositoryPdrbPengel repositorypdrb = RepositoryPdrbPengel();

class _PdrbPengelAdhkBState extends State<PdrbPengelAdhkB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
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
                //pdrb komp pengeluaran adhk 2021 (n-3)
                double kons_ruta_n3 = double.parse(
                  isipdrb[index = 18].kons_ruta,
                );
                double kons_lnprt_n3 = double.parse(
                  isipdrb[index = 18].kons_lnprt,
                );
                double kons_pem_n3 = double.parse(isipdrb[index = 18].kons_pem);
                double pmtb_n3 = double.parse(isipdrb[index = 18].pmtb);
                double inventori_n3 = double.parse(
                  isipdrb[index = 18].inventori,
                );
                double ekspor_n3 = double.parse(isipdrb[index = 18].ekspor);
                double total_n3 = double.parse(isipdrb[index = 18].total);
                String tahun_n3 = isipdrb[index = 18].tahun;

                //pdrb komp pengeluaran adhk 2022 (n-2)
                double kons_ruta_n2 = double.parse(
                  isipdrb[index = 17].kons_ruta,
                );
                double kons_lnprt_n2 = double.parse(
                  isipdrb[index = 17].kons_lnprt,
                );
                double kons_pem_n2 = double.parse(isipdrb[index = 17].kons_pem);
                double pmtb_n2 = double.parse(isipdrb[index = 17].pmtb);
                double inventori_n2 = double.parse(
                  isipdrb[index = 17].inventori,
                );
                double ekspor_n2 = double.parse(isipdrb[index = 17].ekspor);
                double total_n2 = double.parse(isipdrb[index = 17].total);
                String tahun_n2 = isipdrb[index = 17].tahun;

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
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Komponen Pengeluaran",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        tahun_n3,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        tahun_n2,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                        horizontal: 4,
                                        vertical: 2,
                                      ),
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
                                      Format.convertTo(kons_ruta_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_ruta_n2, 2),
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
                                        horizontal: 4,
                                        vertical: 2,
                                      ),
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
                                      Format.convertTo(kons_lnprt_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_lnprt_n2, 2),
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
                                        horizontal: 4,
                                        vertical: 2,
                                      ),
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
                                      Format.convertTo(kons_pem_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(kons_pem_n2, 2),
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
                                        horizontal: 4,
                                        vertical: 0,
                                      ),
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
                                      Format.convertTo(pmtb_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(pmtb_n2, 2),
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
                                        horizontal: 4,
                                        vertical: 2,
                                      ),
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
                                      Format.convertTo(inventori_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(inventori_n2, 2),
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
                                        horizontal: 4,
                                        vertical: 2,
                                      ),
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
                                      Format.convertTo(ekspor_n3, 2),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Text(
                                      Format.convertTo(ekspor_n2, 2),
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "PDRB Pengeluaran",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      Format.convertTo(total_n3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.orange,
                                    child: Text(
                                      Format.convertTo(total_n2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
