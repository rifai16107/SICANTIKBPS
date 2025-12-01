//ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pertanian_horti_tahunan.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianHortiTahunan extends StatefulWidget {
  const PertanianHortiTahunan({Key? key}) : super(key: key);

  @override
  State<PertanianHortiTahunan> createState() => _PertanianHortiTahunanState();
}

RepositoryPertanianHortiTahunan repositorypertanian =
    RepositoryPertanianHortiTahunan();

class _PertanianHortiTahunanState extends State<PertanianHortiTahunan> {
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
        future: repositorypertanian.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipertanian = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String thn1 = isipertanian[index = 0].tahun.substring(0, 4);
                String thn2 = isipertanian[index = 0].tahun.substring(5, 9);
                String thn3 = isipertanian[index = 0].tahun.substring(10, 14);

                String tanaman1 =
                    "  1. " + isipertanian[index = 0].jenis_tanaman;
                String tanaman2 =
                    "  2. " + isipertanian[index = 1].jenis_tanaman;
                String tanaman3 =
                    "  3. " + isipertanian[index = 2].jenis_tanaman;
                String tanaman4 =
                    "  4. " + isipertanian[index = 3].jenis_tanaman;
                String tanaman5 =
                    "  5. " + isipertanian[index = 4].jenis_tanaman;
                String tanaman6 =
                    "  6. " + isipertanian[index = 5].jenis_tanaman;
                String tanaman7 =
                    "  7. " + isipertanian[index = 6].jenis_tanaman;
                String tanaman8 =
                    "  8. " + isipertanian[index = 7].jenis_tanaman;
                String tanaman9 =
                    "  9. " + isipertanian[index = 8].jenis_tanaman;
                String tanaman10 =
                    "  10. " + isipertanian[index = 9].jenis_tanaman;
                String tanaman11 =
                    "  11. " + isipertanian[index = 10].jenis_tanaman;
                String tanaman12 =
                    "  12. " + isipertanian[index = 11].jenis_tanaman;
                String tanaman13 =
                    "  13. " + isipertanian[index = 12].jenis_tanaman;
                String tanaman14 =
                    "  14. " + isipertanian[index = 13].jenis_tanaman;
                String tanaman15 =
                    "  15. " + isipertanian[index = 14].jenis_tanaman;
                String tanaman16 =
                    "  16. " + isipertanian[index = 15].jenis_tanaman;
                String tanaman17 =
                    "  17. " + isipertanian[index = 16].jenis_tanaman;
                String tanaman18 =
                    "  18. " + isipertanian[index = 17].jenis_tanaman;
                String tanaman19 =
                    "  19. " + isipertanian[index = 18].jenis_tanaman;
                String tanaman20 =
                    "  20. " + isipertanian[index = 19].jenis_tanaman;
                String tanaman21 =
                    "  21. " + isipertanian[index = 20].jenis_tanaman;
                String tanaman22 =
                    "  22. " + isipertanian[index = 21].jenis_tanaman;
                String tanaman23 =
                    "  23. " + isipertanian[index = 22].jenis_tanaman;
                String tanaman24 =
                    "  24. " + isipertanian[index = 23].jenis_tanaman;
                String tanaman25 =
                    "  25. " + isipertanian[index = 24].jenis_tanaman;

                String produksi_satuan1 =
                    isipertanian[index = 0].produksi_satuan;
                String produksi_satuan2 =
                    isipertanian[index = 1].produksi_satuan;
                String produksi_satuan3 =
                    isipertanian[index = 2].produksi_satuan;
                String produksi_satuan4 =
                    isipertanian[index = 3].produksi_satuan;
                String produksi_satuan5 =
                    isipertanian[index = 4].produksi_satuan;
                String produksi_satuan6 =
                    isipertanian[index = 5].produksi_satuan;
                String produksi_satuan7 =
                    isipertanian[index = 6].produksi_satuan;
                String produksi_satuan8 =
                    isipertanian[index = 7].produksi_satuan;
                String produksi_satuan9 =
                    isipertanian[index = 8].produksi_satuan;
                String produksi_satuan10 =
                    isipertanian[index = 9].produksi_satuan;
                String produksi_satuan11 =
                    isipertanian[index = 10].produksi_satuan;
                String produksi_satuan12 =
                    isipertanian[index = 11].produksi_satuan;
                String produksi_satuan13 =
                    isipertanian[index = 12].produksi_satuan;
                String produksi_satuan14 =
                    isipertanian[index = 13].produksi_satuan;
                String produksi_satuan15 =
                    isipertanian[index = 14].produksi_satuan;
                String produksi_satuan16 =
                    isipertanian[index = 15].produksi_satuan;
                String produksi_satuan17 =
                    isipertanian[index = 16].produksi_satuan;
                String produksi_satuan18 =
                    isipertanian[index = 17].produksi_satuan;
                String produksi_satuan19 =
                    isipertanian[index = 18].produksi_satuan;
                String produksi_satuan20 =
                    isipertanian[index = 19].produksi_satuan;
                String produksi_satuan21 =
                    isipertanian[index = 20].produksi_satuan;
                String produksi_satuan22 =
                    isipertanian[index = 21].produksi_satuan;
                String produksi_satuan23 =
                    isipertanian[index = 22].produksi_satuan;
                String produksi_satuan24 =
                    isipertanian[index = 23].produksi_satuan;
                String produksi_satuan25 =
                    isipertanian[index = 24].produksi_satuan;

                double prod_thn1_1 = double.parse(
                  isipertanian[index = 0].prod_thn1,
                );
                double prod_thn1_2 = double.parse(
                  isipertanian[index = 1].prod_thn1,
                );
                double prod_thn1_3 = double.parse(
                  isipertanian[index = 2].prod_thn1,
                );
                double prod_thn1_4 = double.parse(
                  isipertanian[index = 3].prod_thn1,
                );
                double prod_thn1_5 = double.parse(
                  isipertanian[index = 4].prod_thn1,
                );
                double prod_thn1_6 = double.parse(
                  isipertanian[index = 5].prod_thn1,
                );
                double prod_thn1_7 = double.parse(
                  isipertanian[index = 6].prod_thn1,
                );
                double prod_thn1_8 = double.parse(
                  isipertanian[index = 7].prod_thn1,
                );
                double prod_thn1_9 = double.parse(
                  isipertanian[index = 8].prod_thn1,
                );
                double prod_thn1_10 = double.parse(
                  isipertanian[index = 9].prod_thn1,
                );
                double prod_thn1_11 = double.parse(
                  isipertanian[index = 10].prod_thn1,
                );
                double prod_thn1_12 = double.parse(
                  isipertanian[index = 11].prod_thn1,
                );
                double prod_thn1_13 = double.parse(
                  isipertanian[index = 12].prod_thn1,
                );
                double prod_thn1_14 = double.parse(
                  isipertanian[index = 13].prod_thn1,
                );
                double prod_thn1_15 = double.parse(
                  isipertanian[index = 14].prod_thn1,
                );
                double prod_thn1_16 = double.parse(
                  isipertanian[index = 15].prod_thn1,
                );
                double prod_thn1_17 = double.parse(
                  isipertanian[index = 16].prod_thn1,
                );
                double prod_thn1_18 = double.parse(
                  isipertanian[index = 17].prod_thn1,
                );
                double prod_thn1_19 = double.parse(
                  isipertanian[index = 18].prod_thn1,
                );
                double prod_thn1_20 = double.parse(
                  isipertanian[index = 19].prod_thn1,
                );
                double prod_thn1_21 = double.parse(
                  isipertanian[index = 20].prod_thn1,
                );
                double prod_thn1_22 = double.parse(
                  isipertanian[index = 21].prod_thn1,
                );
                double prod_thn1_23 = double.parse(
                  isipertanian[index = 22].prod_thn1,
                );
                double prod_thn1_24 = double.parse(
                  isipertanian[index = 23].prod_thn1,
                );
                double prod_thn1_25 = double.parse(
                  isipertanian[index = 24].prod_thn1,
                );

                double prod_thn2_1 = double.parse(
                  isipertanian[index = 0].prod_thn2,
                );
                double prod_thn2_2 = double.parse(
                  isipertanian[index = 1].prod_thn2,
                );
                double prod_thn2_3 = double.parse(
                  isipertanian[index = 2].prod_thn2,
                );
                double prod_thn2_4 = double.parse(
                  isipertanian[index = 3].prod_thn2,
                );
                double prod_thn2_5 = double.parse(
                  isipertanian[index = 4].prod_thn2,
                );
                double prod_thn2_6 = double.parse(
                  isipertanian[index = 5].prod_thn2,
                );
                double prod_thn2_7 = double.parse(
                  isipertanian[index = 6].prod_thn2,
                );
                double prod_thn2_8 = double.parse(
                  isipertanian[index = 7].prod_thn2,
                );
                double prod_thn2_9 = double.parse(
                  isipertanian[index = 8].prod_thn2,
                );
                double prod_thn2_10 = double.parse(
                  isipertanian[index = 9].prod_thn2,
                );
                double prod_thn2_11 = double.parse(
                  isipertanian[index = 10].prod_thn2,
                );
                double prod_thn2_12 = double.parse(
                  isipertanian[index = 11].prod_thn2,
                );
                double prod_thn2_13 = double.parse(
                  isipertanian[index = 12].prod_thn2,
                );
                double prod_thn2_14 = double.parse(
                  isipertanian[index = 13].prod_thn2,
                );
                double prod_thn2_15 = double.parse(
                  isipertanian[index = 14].prod_thn2,
                );
                double prod_thn2_16 = double.parse(
                  isipertanian[index = 15].prod_thn2,
                );
                double prod_thn2_17 = double.parse(
                  isipertanian[index = 16].prod_thn2,
                );
                double prod_thn2_18 = double.parse(
                  isipertanian[index = 17].prod_thn2,
                );
                double prod_thn2_19 = double.parse(
                  isipertanian[index = 18].prod_thn2,
                );
                double prod_thn2_20 = double.parse(
                  isipertanian[index = 19].prod_thn2,
                );
                double prod_thn2_21 = double.parse(
                  isipertanian[index = 20].prod_thn2,
                );
                double prod_thn2_22 = double.parse(
                  isipertanian[index = 21].prod_thn2,
                );
                double prod_thn2_23 = double.parse(
                  isipertanian[index = 22].prod_thn2,
                );
                double prod_thn2_24 = double.parse(
                  isipertanian[index = 23].prod_thn2,
                );
                double prod_thn2_25 = double.parse(
                  isipertanian[index = 24].prod_thn2,
                );

                double prod_thn3_1 = double.parse(
                  isipertanian[index = 0].prod_thn3,
                );
                double prod_thn3_2 = double.parse(
                  isipertanian[index = 1].prod_thn3,
                );
                double prod_thn3_3 = double.parse(
                  isipertanian[index = 2].prod_thn3,
                );
                double prod_thn3_4 = double.parse(
                  isipertanian[index = 3].prod_thn3,
                );
                double prod_thn3_5 = double.parse(
                  isipertanian[index = 4].prod_thn3,
                );
                double prod_thn3_6 = double.parse(
                  isipertanian[index = 5].prod_thn3,
                );
                double prod_thn3_7 = double.parse(
                  isipertanian[index = 6].prod_thn3,
                );
                double prod_thn3_8 = double.parse(
                  isipertanian[index = 7].prod_thn3,
                );
                double prod_thn3_9 = double.parse(
                  isipertanian[index = 8].prod_thn3,
                );
                double prod_thn3_10 = double.parse(
                  isipertanian[index = 9].prod_thn3,
                );
                double prod_thn3_11 = double.parse(
                  isipertanian[index = 10].prod_thn3,
                );
                double prod_thn3_12 = double.parse(
                  isipertanian[index = 11].prod_thn3,
                );
                double prod_thn3_13 = double.parse(
                  isipertanian[index = 12].prod_thn3,
                );
                double prod_thn3_14 = double.parse(
                  isipertanian[index = 13].prod_thn3,
                );
                double prod_thn3_15 = double.parse(
                  isipertanian[index = 14].prod_thn3,
                );
                double prod_thn3_16 = double.parse(
                  isipertanian[index = 15].prod_thn3,
                );
                double prod_thn3_17 = double.parse(
                  isipertanian[index = 16].prod_thn3,
                );
                double prod_thn3_18 = double.parse(
                  isipertanian[index = 17].prod_thn3,
                );
                double prod_thn3_19 = double.parse(
                  isipertanian[index = 18].prod_thn3,
                );
                double prod_thn3_20 = double.parse(
                  isipertanian[index = 19].prod_thn3,
                );
                double prod_thn3_21 = double.parse(
                  isipertanian[index = 20].prod_thn3,
                );
                double prod_thn3_22 = double.parse(
                  isipertanian[index = 21].prod_thn3,
                );
                double prod_thn3_23 = double.parse(
                  isipertanian[index = 22].prod_thn3,
                );
                double prod_thn3_24 = double.parse(
                  isipertanian[index = 23].prod_thn3,
                );
                double prod_thn3_25 = double.parse(
                  isipertanian[index = 24].prod_thn3,
                );

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
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Jenis Tanaman",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: const Center(
                                      child: Text(
                                        "Satuan",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
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
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn1,
                                        textAlign: TextAlign.center,
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
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn2,
                                        textAlign: TextAlign.center,
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
                                      vertical: 5,
                                    ),
                                    color: Colors.orange,
                                    child: Center(
                                      child: Text(
                                        thn3,
                                        textAlign: TextAlign.center,
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

                            // 1. Alpukat
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman1,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_1, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_1, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_1, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //2. Anggur
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman2,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan2,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_2, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //3. Apel
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman3,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan3,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_3, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_3, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_3, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //4. Belimbing
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman4,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan4,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_4, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //5. Duku/langsat
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman5,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan5,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_5, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_5, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_5, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //6. Durian
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman6,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan6,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_6, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //7. jambu air
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman7,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan7,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_7, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_7, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_7, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 8. Jambu biji
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman8,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan8,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_8, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //9. Jengkol
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman9,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan9,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_9, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_9, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_9, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //10. Jeruk besar
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman10,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan10,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_10, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //11. Jeruk Siam
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman11,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan11,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_11, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_11, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_11, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //12. Mangga
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman12,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan12,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_12, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_12, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_12, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 13 Manggis
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman13,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan13,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_13, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_13, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_13, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //14 Markisa
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman14,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan14,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_14, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_14, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_14, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //15 Melinjo
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman15,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan15,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_15, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_15, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_15, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // 16 Nangka/Cempedak
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman16,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan16,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_16, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_16, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_16, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //17 Nenas
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman17,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan17,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_17, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_17, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_17, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //18 Pepaya
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman18,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan18,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_18, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_18, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_18, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //19 Petai
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman19,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan19,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_19, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_19, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_19, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //20 Pisang
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman20,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan20,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_20, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_20, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_20, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //21 Rambutan
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman21,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan21,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_21, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_21, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_21, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //22 Salak
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman22,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan22,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_22, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_22, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_22, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //23 Sawo
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman23,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan23,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_23, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_23, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_23, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //24 Sirsak
                            Container(
                              height: screenHeight * 0.035,
                              color: const Color.fromARGB(255, 238, 221, 189),
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman24,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan24,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_24, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_24, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_24, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //25 Sukun
                            Container(
                              height: screenHeight * 0.035,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 3,
                                      ),
                                      child: Text(
                                        tanaman25,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      produksi_satuan25,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn1_25, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn2_25, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Text(
                                      Format.convertTo(prod_thn3_25, 0),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Divider(thickness: 2),

                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 4, left: 4),
                              child: const Text(
                                " Sumber Data : BPS, Statistik Pertanian Hortikultura SPH-SBS",
                                style: TextStyle(
                                  fontSize: 11,
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
    );
  }
}
