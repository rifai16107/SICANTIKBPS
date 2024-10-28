import 'package:bps_cilacap/restAPI/repository_nilai_pdrb.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class TabelNilaiPdrb extends StatefulWidget {
  const TabelNilaiPdrb({super.key});

  @override
  State<TabelNilaiPdrb> createState() => _TabelNilaiPdrbState();
}

RepositoryNilaiPdrb repositorynilaipdrb = RepositoryNilaiPdrb();

class _TabelNilaiPdrbState extends State<TabelNilaiPdrb> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorynilaipdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th1 = isipdrb[index = 0].tahun;
                String th2 = isipdrb[index = 1].tahun;
                String th3 = isipdrb[index = 2].tahun;
                String th4 = isipdrb[index = 3].tahun;
                String th5 = isipdrb[index = 4].tahun;

                double nilaiadhbmigas1 =
                    double.parse(isipdrb[index = 0].nilai_adhb_migas);
                double nilaiadhbmigas2 =
                    double.parse(isipdrb[index = 1].nilai_adhb_migas);
                double nilaiadhbmigas3 =
                    double.parse(isipdrb[index = 2].nilai_adhb_migas);
                double nilaiadhbmigas4 =
                    double.parse(isipdrb[index = 3].nilai_adhb_migas);
                double nilaiadhbmigas5 =
                    double.parse(isipdrb[index = 4].nilai_adhb_migas);

                double nilaiadhbtanpamigas1 =
                    double.parse(isipdrb[index = 0].nilai_adhb_tanpa_migas);
                double nilaiadhbtanpamigas2 =
                    double.parse(isipdrb[index = 1].nilai_adhb_tanpa_migas);
                double nilaiadhbtanpamigas3 =
                    double.parse(isipdrb[index = 2].nilai_adhb_tanpa_migas);
                double nilaiadhbtanpamigas4 =
                    double.parse(isipdrb[index = 3].nilai_adhb_tanpa_migas);
                double nilaiadhbtanpamigas5 =
                    double.parse(isipdrb[index = 4].nilai_adhb_tanpa_migas);

                double nilaiadhkmigas1 =
                    double.parse(isipdrb[index = 0].nilai_adhk_migas);
                double nilaiadhkmigas2 =
                    double.parse(isipdrb[index = 1].nilai_adhk_migas);
                double nilaiadhkmigas3 =
                    double.parse(isipdrb[index = 2].nilai_adhk_migas);
                double nilaiadhkmigas4 =
                    double.parse(isipdrb[index = 3].nilai_adhk_migas);
                double nilaiadhkmigas5 =
                    double.parse(isipdrb[index = 4].nilai_adhk_migas);

                double nilaiadhktanpamigas1 =
                    double.parse(isipdrb[index = 0].nilai_adhk_tanpa_migas);
                double nilaiadhktanpamigas2 =
                    double.parse(isipdrb[index = 1].nilai_adhk_tanpa_migas);
                double nilaiadhktanpamigas3 =
                    double.parse(isipdrb[index = 2].nilai_adhk_tanpa_migas);
                double nilaiadhktanpamigas4 =
                    double.parse(isipdrb[index = 3].nilai_adhk_tanpa_migas);
                double nilaiadhktanpamigas5 =
                    double.parse(isipdrb[index = 4].nilai_adhk_tanpa_migas);

                return Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.only(
                            left:1, right:1,top:10, bottom: 5),
                        child: Text(
                          "Nilai PDRB Kabupaten Cilacap Atas Dasar Harga Berlaku (ADHB) Menurut Lapangan Usaha (Juta Rp), $th1-$th5",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "Tahun",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "PDRB ADHB Dengan Migas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "PDRB ADHB Tanpa Migas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // <-- 2018
                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbmigas1, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbtanpamigas1, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2019
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th2,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbmigas2, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbtanpamigas2, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2020
                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th3,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbmigas3, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbtanpamigas3, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2021
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th4,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbmigas4, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbtanpamigas4, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2022
                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th5,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbmigas5, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhbtanpamigas5, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(235, 71, 65, 65),
                      thickness: 1,
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                            left:1, right:1,top:10, bottom: 5),
                        child: Text(
                          "Nilai PDRB Kabupaten Cilacap Atas Dasar Harga Konstan (ADHK) Menurut Lapangan Usaha (Juta Rp), $th1-$th5",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )),
                    Row(
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "Tahun",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "PDRB ADHK Dengan Migas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.07,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                "PDRB ADHK Tanpa Migas",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // <-- 2018 ADHK

                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhkmigas1, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhktanpamigas1, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2019
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th2,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhkmigas2, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhktanpamigas2, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2020
                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th3,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhkmigas3, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhktanpamigas3, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2021
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th4,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhkmigas4, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhktanpamigas4, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- 2022
                    Container(
                      color: Colors.transparent,
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th5,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhkmigas5, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                          Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(
                              Format.convertTo(nilaiadhktanpamigas5, 2),
                              textAlign: TextAlign.right,
                              style: const TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color.fromARGB(235, 71, 65, 65),
                      thickness: 1,
                    ),
                  ],
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(
              child: CircularProgressIndicator(
            strokeWidth: 1,
          ));
        },
      ),
    );
  }
}
