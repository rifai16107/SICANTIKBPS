// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_inflasi_yony.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class InflasiBulananYonyA extends StatefulWidget {
  const InflasiBulananYonyA({Key? key}) : super(key: key);

  @override
  State<InflasiBulananYonyA> createState() => _InflasiBulananYonyAState();
}

RepositoryInflasiYony repositoryinflasi = RepositoryInflasiYony();

class _InflasiBulananYonyAState extends State<InflasiBulananYonyA> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryinflasi.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiinflasi = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                double tkif1 = double.parse(isiinflasi[index = 1].sembako);
                double tkif2 = double.parse(isiinflasi[index = 1].sandang);
                double tkif3 = double.parse(isiinflasi[index = 1].perumahan);
                double tkif4 = double.parse(isiinflasi[index = 1].perlengkapan);
                double tkif5 = double.parse(isiinflasi[index = 1].kesehatan);
                double tkif6 = double.parse(isiinflasi[index = 1].transportasi);
                double tkif7 = double.parse(isiinflasi[index = 1].informasi);
                double tkif8 = double.parse(isiinflasi[index = 1].rekreasi);
                double tkif9 = double.parse(isiinflasi[index = 1].pendidikan);
                double tkif10 =
                    double.parse(isiinflasi[index = 1].penyedia_pangan);
                double tkif11 =
                    double.parse(isiinflasi[index = 1].perawatan_pribadi);
                double totaltingkat = double.parse(isiinflasi[index = 1].total);

                double anif1 = double.parse(isiinflasi[index = 0].sembako);
                double anif2 = double.parse(isiinflasi[index = 0].sandang);
                double anif3 = double.parse(isiinflasi[index = 0].perumahan);
                double anif4 = double.parse(isiinflasi[index = 0].perlengkapan);
                double anif5 = double.parse(isiinflasi[index = 0].kesehatan);
                double anif6 = double.parse(isiinflasi[index = 0].transportasi);
                double anif7 = double.parse(isiinflasi[index = 0].informasi);
                double anif8 = double.parse(isiinflasi[index = 0].rekreasi);
                double anif9 = double.parse(isiinflasi[index = 0].pendidikan);
                double anif10 =
                    double.parse(isiinflasi[index = 0].penyedia_pangan);
                double anif11 =
                    double.parse(isiinflasi[index = 0].perawatan_pribadi);
                double totalandil = double.parse(isiinflasi[index = 0].total);

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
                                        "Kelompok Pengeluaran",
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
                                    child: const Center(
                                      child: Text(
                                        "Inflasi",
                                        style: TextStyle(
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
                                    child: const Center(
                                      child: Text(
                                        "Andil Inflasi",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Makanan, Minuman, Tembakau
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
                                          vertical: 2),
                                      child: const Center(
                                        child: Text(
                                          "Makanan, Minuman, Tembakau",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif1, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif1, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Pakaian dan Alas Kaki
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.045,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Pakaian & ALas Kaki",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif2, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif2, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Perumahan, Air, Listrik, BB lain
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
                                          vertical: 2),
                                      child: const Center(
                                        child: Text(
                                          "Perumahan, Air, Listrik & Bahan Bakar",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif3, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif3, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Perlengkapan, Pemeliharaan Rutin Rumah Tangga
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.08,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: const Center(
                                        child: Text(
                                          "Perlengkapan, Peralatan dan Pemeliharaan Rutin Rumah Tangga",
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif4, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif4, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Kesehatan
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.04,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Kesehatan",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif5, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(Format.convertTo(anif5, 4)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Transportasi
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.04,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Transportasi",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif6, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif6, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Informasi, Komunikasi, Keuangan
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.07,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: const Text(
                                        "Informasi, Komunikasi, Keuangan",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif7, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif7, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Rekreasi, Olahraga, Budaya
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
                                          vertical: 2),
                                      child: const Text(
                                        "Rekreasi, Olahraga & Budaya",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif8, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif8, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Pendidikan
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.04,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Pendidikan",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif9, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif9, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Penyedia Makanan Minuman / Restoran
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              height: screenHeight * 0.07,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 0),
                                      child: const Text(
                                        "Penyedia Makanan & Minuman/Restoran",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif10, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif10, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Perawatan Pribadi, Jasa Lainnya
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: const Text(
                                        "Perawatan Pribadi & Jasa Lainnya",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif11, 2),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif11, 4),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Total
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Umum",
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
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(totaltingkat, 2),
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
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 5),
                                    color: Colors.green,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(totalandil, 4),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.25,
                                      child: const Text(
                                        "Catatan:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Inflasi Year on Year (y-on-y) bulan ke-n mengitung inflasi bulan ke-n tahun N terhadap bulan ke-n tahun (N-1).",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Tahun 2023 menggunakan tahun dasar 2018.",
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.95,
                                      child: const Text(
                                        "Tahun 2024 menggunakan tahun dasar 2022",
                                        style: TextStyle(fontSize: 11),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: screenHeight * 0.05,
                                      width: screenWidth * 0.97,
                                      child: const Text(
                                        " ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
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
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
    );
  }
}
