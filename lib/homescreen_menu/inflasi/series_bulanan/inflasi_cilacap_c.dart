// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/grafik_inflasi/body_grafik_inflasi_bulanan.dart';
import 'package:bps_cilacap/format_angka.dart';

class InflasiBulananC extends StatefulWidget {
  const InflasiBulananC({Key? key}) : super(key: key);

  @override
  State<InflasiBulananC> createState() => _InflasiBulananCState();
}

RepositoryInflasi repositoryinflasi = RepositoryInflasi();

class _InflasiBulananCState extends State<InflasiBulananC> {
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
                double ihk1 = double.parse(isiinflasi[index = 8].sembako);
                double ihk2 = double.parse(isiinflasi[index = 8].sandang);
                double ihk3 = double.parse(isiinflasi[index = 8].perumahan);
                double ihk4 = double.parse(isiinflasi[index = 8].perlengkapan);
                double ihk5 = double.parse(isiinflasi[index = 8].kesehatan);
                double ihk6 = double.parse(isiinflasi[index = 8].transportasi);
                double ihk7 = double.parse(isiinflasi[index = 8].informasi);
                double ihk8 = double.parse(isiinflasi[index = 8].rekreasi);
                double ihk9 = double.parse(isiinflasi[index = 8].pendidikan);
                double ihk10 = double.parse(
                  isiinflasi[index = 8].penyedia_pangan,
                );
                double ihk11 = double.parse(
                  isiinflasi[index = 8].perawatan_pribadi,
                );
                double ihkumum = double.parse(isiinflasi[index = 8].total);

                double tkif1 = double.parse(isiinflasi[index = 7].sembako);
                double tkif2 = double.parse(isiinflasi[index = 7].sandang);
                double tkif3 = double.parse(isiinflasi[index = 7].perumahan);
                double tkif4 = double.parse(isiinflasi[index = 7].perlengkapan);
                double tkif5 = double.parse(isiinflasi[index = 7].kesehatan);
                double tkif6 = double.parse(isiinflasi[index = 7].transportasi);
                double tkif7 = double.parse(isiinflasi[index = 7].informasi);
                double tkif8 = double.parse(isiinflasi[index = 7].rekreasi);
                double tkif9 = double.parse(isiinflasi[index = 7].pendidikan);
                double tkif10 = double.parse(
                  isiinflasi[index = 7].penyedia_pangan,
                );
                double tkif11 = double.parse(
                  isiinflasi[index = 7].perawatan_pribadi,
                );
                double totaltingkat = double.parse(isiinflasi[index = 7].total);

                double anif1 = double.parse(isiinflasi[index = 6].sembako);
                double anif2 = double.parse(isiinflasi[index = 6].sandang);
                double anif3 = double.parse(isiinflasi[index = 6].perumahan);
                double anif4 = double.parse(isiinflasi[index = 6].perlengkapan);
                double anif5 = double.parse(isiinflasi[index = 6].kesehatan);
                double anif6 = double.parse(isiinflasi[index = 6].transportasi);
                double anif7 = double.parse(isiinflasi[index = 6].informasi);
                double anif8 = double.parse(isiinflasi[index = 6].rekreasi);
                double anif9 = double.parse(isiinflasi[index = 6].pendidikan);
                double anif10 = double.parse(
                  isiinflasi[index = 6].penyedia_pangan,
                );
                double anif11 = double.parse(
                  isiinflasi[index = 6].perawatan_pribadi,
                );
                double totalandil = double.parse(isiinflasi[index = 6].total);

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
                                        "IHK",
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
                                      child: const Center(
                                        child: Text(
                                          "Makanan, Minuman, Tembakau",
                                          style: TextStyle(fontSize: 12.5),
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
                                        Format.convertTo(ihk1, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif1, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif1, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk2, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif2, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif2, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                          style: TextStyle(fontSize: 12.5),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk3, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif3, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif3, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                          "Perlengkapan, Peralatan & Pemeliharaan Rutin Rumah Tangga",
                                          style: TextStyle(fontSize: 12.5),
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
                                        Format.convertTo(ihk4, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif4, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif4, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk5, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif5, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif5, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk6, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif6, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif6, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk7, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif7, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif7, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk8, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif8, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif8, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk9, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif9, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif9, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk10, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif10, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif10, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                        "Perawatan Pribadi & Jasa Lainnya",
                                        style: TextStyle(fontSize: 12.5),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihk11, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(tkif11, 2),
                                        style: const TextStyle(fontSize: 12.5),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(anif11, 4),
                                        style: const TextStyle(fontSize: 12.5),
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
                                    height: screenHeight * 0.05,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        Format.convertTo(ihkumum, 2),
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
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 50, left: 4),
                              child: const Text(
                                "  ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
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
              child: CircularProgressIndicator(strokeWidth: 3),
            );
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CustomPageRoute(
              child: const BodyGrafikInflasiBulanan(),
              direction: AxisDirection.left,
            ),
          );
        },
        foregroundColor: Colors.orange,
        mini: true,
        child: const Icon(Icons.bar_chart),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
    child: child,
  );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
