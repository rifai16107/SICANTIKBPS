// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_inflasi_yony.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class InflasiBulananYonyB extends StatefulWidget {
  const InflasiBulananYonyB({Key? key}) : super(key: key);

  @override
  State<InflasiBulananYonyB> createState() => _InflasiBulananYonyBState();
}

RepositoryInflasiYony repositoryinflasi = RepositoryInflasiYony();

class _InflasiBulananYonyBState extends State<InflasiBulananYonyB> {
  static const TextStyle myTextStyle = TextStyle(
    fontSize: 12.5, // Set your desired font size here
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
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
        future: repositoryinflasi.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiinflasi = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                double tkif1 = double.parse(isiinflasi[index = 3].sembako);
                double tkif2 = double.parse(isiinflasi[index = 3].sandang);
                double tkif3 = double.parse(isiinflasi[index = 3].perumahan);
                double tkif4 = double.parse(isiinflasi[index = 3].perlengkapan);
                double tkif5 = double.parse(isiinflasi[index = 3].kesehatan);
                double tkif6 = double.parse(isiinflasi[index = 3].transportasi);
                double tkif7 = double.parse(isiinflasi[index = 3].informasi);
                double tkif8 = double.parse(isiinflasi[index = 3].rekreasi);
                double tkif9 = double.parse(isiinflasi[index = 3].pendidikan);
                double tkif10 = double.parse(
                  isiinflasi[index = 3].penyedia_pangan,
                );
                double tkif11 = double.parse(
                  isiinflasi[index = 3].perawatan_pribadi,
                );
                double totaltingkat = double.parse(isiinflasi[index = 3].total);

                double anif1 = double.parse(isiinflasi[index = 2].sembako);
                double anif2 = double.parse(isiinflasi[index = 2].sandang);
                double anif3 = double.parse(isiinflasi[index = 2].perumahan);
                double anif4 = double.parse(isiinflasi[index = 2].perlengkapan);
                double anif5 = double.parse(isiinflasi[index = 2].kesehatan);
                double anif6 = double.parse(isiinflasi[index = 2].transportasi);
                double anif7 = double.parse(isiinflasi[index = 2].informasi);
                double anif8 = double.parse(isiinflasi[index = 2].rekreasi);
                double anif9 = double.parse(isiinflasi[index = 2].pendidikan);
                double anif10 = double.parse(
                  isiinflasi[index = 2].penyedia_pangan,
                );
                double anif11 = double.parse(
                  isiinflasi[index = 2].perawatan_pribadi,
                );
                double totalandil = double.parse(isiinflasi[index = 2].total);

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
                                        'Kelompok\n'
                                        'Pengeluaran',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
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
                                    child: const Center(
                                      child: Text(
                                        "Inflasi",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
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
                                    child: const Center(
                                      child: Text(
                                        'Andil\n'
                                        'Inflasi',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold,
                                        ),
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Makanan, Minuman, Tembakau",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif1, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif1, 4),
                                        style: myTextStyle,
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Pakaian & ALas Kaki",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif2, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif2, 4),
                                        style: myTextStyle,
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
                                        vertical: 2,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Perumahan, Air, Listrik & Bahan Bakar",
                                          textAlign: TextAlign.left,
                                          style: myTextStyle,
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
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif3, 4),
                                        style: myTextStyle,
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
                              height: screenHeight * 0.095,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 0,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Perlengkapan, Peralatan dan Pemeliharaan Rutin Rumah Tangga",
                                          textAlign: TextAlign.left,
                                          style: myTextStyle,
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
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif4, 4),
                                        style: myTextStyle,
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Kesehatan",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif5, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif5, 4),
                                        style: myTextStyle,
                                      ),
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Transportasi",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif6, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif6, 4),
                                        style: myTextStyle,
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
                                        vertical: 0,
                                      ),
                                      child: const Text(
                                        "Informasi, Komunikasi, Keuangan",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif7, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif7, 4),
                                        style: myTextStyle,
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Rekreasi, Olahraga & Budaya",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif8, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif8, 4),
                                        style: myTextStyle,
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
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Pendidikan",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif9, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif9, 4),
                                        style: myTextStyle,
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
                                        vertical: 0,
                                      ),
                                      child: const Text(
                                        "Penyedia Makanan & Minuman/Restoran",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif10, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif10, 4),
                                        style: myTextStyle,
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
                              height: screenHeight * 0.06,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 2,
                                      ),
                                      child: const Text(
                                        "Perawatan Pribadi & Jasa Lainnya",
                                        textAlign: TextAlign.left,
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif11, 2),
                                        style: myTextStyle,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif11, 4),
                                        style: myTextStyle,
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
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Umum",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.5,
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
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(totaltingkat, 2),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.5,
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
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(totalandil, 4),
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.5,
                                        ),
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
                                          fontSize: 12,
                                        ),
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
                                          fontSize: 11,
                                        ),
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
                                          fontSize: 10,
                                        ),
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
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
    );
  }
}
