// ignore_for_file: camel_case_types, prefer_doubleerpolation_to_compose_strings, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_pertanian_pangan.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianPanganB extends StatefulWidget {
  const PertanianPanganB({Key? key}) : super(key: key);

  @override
  State<PertanianPanganB> createState() =>
      _PertanianPanganBState();
}

RepositoryPertanianPangan repositorypertanian =
    RepositoryPertanianPangan();

class _PertanianPanganBState extends State<PertanianPanganB> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositorypertanian.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipertanian = snapshot.data as List;
          return ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
             
              String tanaman1 = "  1. " + isipertanian[index = 8].jenis_tanaman;
              String tanaman2 = "  2. " + isipertanian[index = 9].jenis_tanaman;
              String tanaman3 = "  3. " + isipertanian[index = 10].jenis_tanaman;
              String tanaman4 = "  4. " + isipertanian[index = 11].jenis_tanaman;
              String tanaman5 = "  5. " + isipertanian[index = 12].jenis_tanaman;
              String tanaman6 = "  6. " + isipertanian[index = 13].jenis_tanaman;
              String tanaman7 = "  7. " + isipertanian[index = 14].jenis_tanaman;
              String tanaman8 = "  8. " + isipertanian[index = 15].jenis_tanaman;
              

              double luas1 = double.parse(isipertanian[index = 8].luas);
              double luas2 = double.parse(isipertanian[index = 9].luas);
              double luas3 = double.parse(isipertanian[index = 10].luas);
              double luas4 = double.parse(isipertanian[index = 11].luas);
              double luas5 = double.parse(isipertanian[index = 12].luas);
              double luas6 = double.parse(isipertanian[index = 13].luas);
              double luas7 = double.parse(isipertanian[index = 14].luas);
              double luas8 = double.parse(isipertanian[index = 15].luas);
              

              double produktivitas1 = double.parse(isipertanian[index = 8].produktivitas);
              double produktivitas2 = double.parse(isipertanian[index = 9].produktivitas);
              double produktivitas3 = double.parse(isipertanian[index = 10].produktivitas);
              double produktivitas4 = double.parse(isipertanian[index = 11].produktivitas);
              double produktivitas5 = double.parse(isipertanian[index = 12].produktivitas);
              double produktivitas6 = double.parse(isipertanian[index = 13].produktivitas);
              double produktivitas7 = double.parse(isipertanian[index = 14].produktivitas);
              double produktivitas8 = double.parse(isipertanian[index = 15].produktivitas);
              
              double produksi1 = double.parse(isipertanian[index = 8].produksi);
              double produksi2 = double.parse(isipertanian[index = 9].produksi);
              double produksi3 = double.parse(isipertanian[index = 10].produksi);
              double produksi4 = double.parse(isipertanian[index = 11].produksi);
              double produksi5 = double.parse(isipertanian[index = 12].produksi);
              double produksi6 = double.parse(isipertanian[index = 13].produksi);
              double produksi7 = double.parse(isipertanian[index = 14].produksi);
              double produksi8 = double.parse(isipertanian[index = 15].produksi);

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
                                  height: screenHeight * 0.09,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Jenis Tanaman",
                                      textAlign: TextAlign.center,
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
                                  height: screenHeight * 0.09,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Luas  (Ha)",
                                      textAlign:TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  height: screenHeight * 0.09,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Produktivitas (Kwintal/Ha)",
                                      textAlign:TextAlign.center,
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
                                  height: screenHeight * 0.09,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 10),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Produksi (Ton)",
                                      textAlign:TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // PAdi Sawah
                          Container(
                             height: screenHeight*0.05,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman1,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas1, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas1, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi1, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // PAdi Ladang
                          Container(
                            height: screenHeight*0.05,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman2,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas2, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas2, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi2, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Jagung
                          Container(
                            height: screenHeight*0.05,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman3,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas3, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas3, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi3, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // ketela Pohon
                          Container(
                            height: screenHeight*0.05,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman4,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas4, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas4, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi4, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Ketela Rambat
                          Container(
                            height: screenHeight*0.05,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman5,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas5, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas5, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi5, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          // Kacang Tanah
                          Container(
                            height: screenHeight*0.05,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman6,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas6, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas6, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi6, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Kedelai
                          Container(
                            height: screenHeight*0.05,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman7,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas7, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas7, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi7, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Kacang Hijau
                          Container(
                            height: screenHeight*0.05,
                            color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman8,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas8, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produktivitas8, 2),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(produksi8, 1),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                              thickness: 2,
                            ),
                          
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                            ),
                            child: const Text(
                              " Sumber Data : Dinas Pertanian Kabupaten Cilacap",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.normal),
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
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}