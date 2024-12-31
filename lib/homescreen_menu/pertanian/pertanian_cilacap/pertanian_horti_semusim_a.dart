//ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pertanian_horti_semusim.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class PertanianHortiSemusimA extends StatefulWidget {
  const PertanianHortiSemusimA({Key? key}) : super(key: key);

  @override
  State<PertanianHortiSemusimA> createState() =>
      _PertanianHortiSemusimAState();
}

RepositoryPertanianHortiSemusim repositorypertanian =
    RepositoryPertanianHortiSemusim();

class _PertanianHortiSemusimAState extends State<PertanianHortiSemusimA> {
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

              String thn1=isipertanian[index = 0].tahun.substring(0, 4);
              String thn2=isipertanian[index = 0].tahun.substring(5, 9);
              String thn3=isipertanian[index = 0].tahun.substring(10, 14);

              String tanaman1 = "  1. " + isipertanian[index = 0].jenis_tanaman;
              String tanaman2 = "  2. " + isipertanian[index = 1].jenis_tanaman;
              String tanaman3 = "  3. " + isipertanian[index = 2].jenis_tanaman;
              String tanaman4 = "  4. " + isipertanian[index = 3].jenis_tanaman;
              String tanaman5 = "  5. " + isipertanian[index = 4].jenis_tanaman;
              String tanaman6 = "  6. " + isipertanian[index = 5].jenis_tanaman;
              String tanaman7 = "  7. " + isipertanian[index = 6].jenis_tanaman;
              String tanaman8 = "  8. " + isipertanian[index = 7].jenis_tanaman;
              String tanaman9 = "  9. " + isipertanian[index = 8].jenis_tanaman;
              String tanaman10 = "  10. " + isipertanian[index = 9].jenis_tanaman;
              String tanaman11 = "  11. " + isipertanian[index = 10].jenis_tanaman;
              String tanaman12 = "  12. " + isipertanian[index = 11].jenis_tanaman;
              String tanaman13 = "  13. " + isipertanian[index = 12].jenis_tanaman;
              String tanaman14 = "  14. " + isipertanian[index = 13].jenis_tanaman;
              String tanaman15 = "  15. " + isipertanian[index = 14].jenis_tanaman;
              String tanaman16 = "  16. " + isipertanian[index = 15].jenis_tanaman;
              String tanaman17 = "  17. " + isipertanian[index = 16].jenis_tanaman;
              String tanaman18 = "  18. " + isipertanian[index = 17].jenis_tanaman;
              String tanaman19 = "  19. " + isipertanian[index = 18].jenis_tanaman;
              String tanaman20 = "  20. " + isipertanian[index = 19].jenis_tanaman;
              String tanaman21 = "  21. " + isipertanian[index = 20].jenis_tanaman;
              String tanaman22 = "  22. " + isipertanian[index = 21].jenis_tanaman;
              String tanaman23 = "  23. " + isipertanian[index = 22].jenis_tanaman;
              String tanaman24 = "  24. " + isipertanian[index = 23].jenis_tanaman;
              String tanaman25 = "  25. " + isipertanian[index = 24].jenis_tanaman;
              String tanaman26 = "  26. " + isipertanian[index = 25].jenis_tanaman;

              String luas_satuan1 = isipertanian[index = 0].luas_satuan;
              String luas_satuan2 = isipertanian[index = 1].luas_satuan;
              String luas_satuan3 = isipertanian[index = 2].luas_satuan;
              String luas_satuan4 = isipertanian[index = 3].luas_satuan;
              String luas_satuan5 = isipertanian[index = 4].luas_satuan;
              String luas_satuan6 = isipertanian[index = 5].luas_satuan;
              String luas_satuan7 = isipertanian[index = 6].luas_satuan;
              String luas_satuan8 = isipertanian[index = 7].luas_satuan;
              String luas_satuan9 = isipertanian[index = 8].luas_satuan;
              String luas_satuan10 =isipertanian[index = 9].luas_satuan;
              String luas_satuan11 =isipertanian[index = 10].luas_satuan;
              String luas_satuan12 =isipertanian[index = 11].luas_satuan;
              String luas_satuan13 =isipertanian[index = 12].luas_satuan;
              String luas_satuan14 =isipertanian[index = 13].luas_satuan;
              String luas_satuan15 =isipertanian[index = 14].luas_satuan;
              String luas_satuan16 =isipertanian[index = 15].luas_satuan;
              String luas_satuan17 =isipertanian[index = 16].luas_satuan;
              String luas_satuan18 =isipertanian[index = 17].luas_satuan;
              String luas_satuan19 =isipertanian[index = 18].luas_satuan;
              String luas_satuan20 =isipertanian[index = 19].luas_satuan;
              String luas_satuan21 =isipertanian[index = 20].luas_satuan;
              String luas_satuan22 =isipertanian[index = 21].luas_satuan;
              String luas_satuan23 =isipertanian[index = 22].luas_satuan;
              String luas_satuan24 =isipertanian[index = 23].luas_satuan;
              String luas_satuan25 =isipertanian[index = 24].luas_satuan;
              String luas_satuan26 =isipertanian[index = 25].luas_satuan;
              

              double luas_thn1_1 = double.parse(isipertanian[index = 0].luas_thn1);
              double luas_thn1_2 = double.parse(isipertanian[index = 1].luas_thn1);
              double luas_thn1_3 = double.parse(isipertanian[index = 2].luas_thn1);
              double luas_thn1_4 = double.parse(isipertanian[index = 3].luas_thn1);
              double luas_thn1_5 = double.parse(isipertanian[index = 4].luas_thn1);
              double luas_thn1_6 = double.parse(isipertanian[index = 5].luas_thn1);
              double luas_thn1_7 = double.parse(isipertanian[index = 6].luas_thn1);
              double luas_thn1_8 = double.parse(isipertanian[index = 7].luas_thn1);
              double luas_thn1_9 = double.parse(isipertanian[index = 8].luas_thn1);
              double luas_thn1_10 = double.parse(isipertanian[index = 9].luas_thn1);
              double luas_thn1_11 = double.parse(isipertanian[index = 10].luas_thn1);
              double luas_thn1_12 = double.parse(isipertanian[index = 11].luas_thn1);
              double luas_thn1_13 = double.parse(isipertanian[index = 12].luas_thn1);
              double luas_thn1_14 = double.parse(isipertanian[index = 13].luas_thn1);
              double luas_thn1_15 = double.parse(isipertanian[index = 14].luas_thn1);
              double luas_thn1_16 = double.parse(isipertanian[index = 15].luas_thn1);
              double luas_thn1_17 = double.parse(isipertanian[index = 16].luas_thn1);
              double luas_thn1_18 = double.parse(isipertanian[index = 17].luas_thn1);
              double luas_thn1_19 = double.parse(isipertanian[index = 18].luas_thn1);
              double luas_thn1_20 = double.parse(isipertanian[index = 19].luas_thn1);
              double luas_thn1_21 = double.parse(isipertanian[index = 20].luas_thn1);
              double luas_thn1_22 = double.parse(isipertanian[index = 21].luas_thn1);
              double luas_thn1_23 = double.parse(isipertanian[index = 22].luas_thn1);
              double luas_thn1_24 = double.parse(isipertanian[index = 23].luas_thn1);
              double luas_thn1_25 = double.parse(isipertanian[index = 24].luas_thn1);
              double luas_thn1_26 = double.parse(isipertanian[index = 25].luas_thn1);

              double luas_thn2_1 = double.parse(isipertanian[index = 0].luas_thn2);
              double luas_thn2_2 = double.parse(isipertanian[index = 1].luas_thn2);
              double luas_thn2_3 = double.parse(isipertanian[index = 2].luas_thn2);
              double luas_thn2_4 = double.parse(isipertanian[index = 3].luas_thn2);
              double luas_thn2_5 = double.parse(isipertanian[index = 4].luas_thn2);
              double luas_thn2_6 = double.parse(isipertanian[index = 5].luas_thn2);
              double luas_thn2_7 = double.parse(isipertanian[index = 6].luas_thn2);
              double luas_thn2_8 = double.parse(isipertanian[index = 7].luas_thn2);
              double luas_thn2_9 = double.parse(isipertanian[index = 8].luas_thn2);
              double luas_thn2_10 = double.parse(isipertanian[index = 9].luas_thn2);
              double luas_thn2_11 = double.parse(isipertanian[index = 10].luas_thn2);
              double luas_thn2_12 = double.parse(isipertanian[index = 11].luas_thn2);
              double luas_thn2_13 = double.parse(isipertanian[index = 12].luas_thn2);
              double luas_thn2_14 = double.parse(isipertanian[index = 13].luas_thn2);
              double luas_thn2_15 = double.parse(isipertanian[index = 14].luas_thn2);
              double luas_thn2_16 = double.parse(isipertanian[index = 15].luas_thn2);
              double luas_thn2_17 = double.parse(isipertanian[index = 16].luas_thn2);
              double luas_thn2_18 = double.parse(isipertanian[index = 17].luas_thn2);
              double luas_thn2_19 = double.parse(isipertanian[index = 18].luas_thn2);
              double luas_thn2_20 = double.parse(isipertanian[index = 19].luas_thn2);
              double luas_thn2_21 = double.parse(isipertanian[index = 20].luas_thn2);
              double luas_thn2_22 = double.parse(isipertanian[index = 21].luas_thn2);
              double luas_thn2_23 = double.parse(isipertanian[index = 22].luas_thn2);
              double luas_thn2_24 = double.parse(isipertanian[index = 23].luas_thn2);
              double luas_thn2_25 = double.parse(isipertanian[index = 24].luas_thn2);
              double luas_thn2_26 = double.parse(isipertanian[index = 25].luas_thn2);

              double luas_thn3_1 = double.parse(isipertanian[index = 0].luas_thn3);
              double luas_thn3_2 = double.parse(isipertanian[index = 1].luas_thn3);
              double luas_thn3_3 = double.parse(isipertanian[index = 2].luas_thn3);
              double luas_thn3_4 = double.parse(isipertanian[index = 3].luas_thn3);
              double luas_thn3_5 = double.parse(isipertanian[index = 4].luas_thn3);
              double luas_thn3_6 = double.parse(isipertanian[index = 5].luas_thn3);
              double luas_thn3_7 = double.parse(isipertanian[index = 6].luas_thn3);
              double luas_thn3_8 = double.parse(isipertanian[index = 7].luas_thn3);
              double luas_thn3_9 = double.parse(isipertanian[index = 8].luas_thn3);
              double luas_thn3_10 = double.parse(isipertanian[index = 9].luas_thn3);
              double luas_thn3_11 = double.parse(isipertanian[index = 10].luas_thn3);
              double luas_thn3_12 = double.parse(isipertanian[index = 11].luas_thn3);
              double luas_thn3_13 = double.parse(isipertanian[index = 12].luas_thn3);
              double luas_thn3_14 = double.parse(isipertanian[index = 13].luas_thn3);
              double luas_thn3_15 = double.parse(isipertanian[index = 14].luas_thn3);
              double luas_thn3_16 = double.parse(isipertanian[index = 15].luas_thn3);
              double luas_thn3_17 = double.parse(isipertanian[index = 16].luas_thn3);
              double luas_thn3_18 = double.parse(isipertanian[index = 17].luas_thn3);
              double luas_thn3_19 = double.parse(isipertanian[index = 18].luas_thn3);
              double luas_thn3_20 = double.parse(isipertanian[index = 19].luas_thn3);
              double luas_thn3_21 = double.parse(isipertanian[index = 20].luas_thn3);
              double luas_thn3_22 = double.parse(isipertanian[index = 21].luas_thn3);
              double luas_thn3_23 = double.parse(isipertanian[index = 22].luas_thn3);
              double luas_thn3_24 = double.parse(isipertanian[index = 23].luas_thn3);
              double luas_thn3_25 = double.parse(isipertanian[index = 24].luas_thn3);
              double luas_thn3_26 = double.parse(isipertanian[index = 25].luas_thn3);
              

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
                                      horizontal: 2, vertical: 5),
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
                                  height: screenHeight * 0.065,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  color: Colors.green,
                                  child: const Center(
                                    child: Text(
                                      "Satuan",
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
                                  height: screenHeight * 0.065,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 5),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn1,
                                      textAlign:TextAlign.center,
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
                                      horizontal: 2, vertical: 5),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn2,
                                      textAlign:TextAlign.center,
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
                                      horizontal: 2, vertical: 5),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      thn3,
                                      textAlign:TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Bawang daun
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_1, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                          //bawang merah
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan2,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_2, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_2, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_2, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        //bawang putih
                        Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_3, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ), 

                          //Bayam
                        Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan4,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_4, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_4, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_4, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),  
                          
                          //Blewah
                         Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan5,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_5, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),  
                          
                          //Buncis
                         Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan6,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_6, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_6, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_6, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),  
                          
                          //cabai besar
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan7,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_7, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),    
                          
                          // Cabai rawit
                         Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
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
                                  flex: 1,
                                  child: Text(
                                    luas_satuan8,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_8, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_8, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_8, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ), 

                          //Jamur
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan9,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_9, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),   
                          
                          //Kacang merah
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan10,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_10, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_10, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_10, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ), 

                          //kacang panjang
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan11,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_11, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_11, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_11, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ), 

                          //kangkung
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan12,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_12, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_12, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_12, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 13 kembang kol
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan13,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_13, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_13, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_13, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //14 kentang
                        Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan14,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_14, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_14, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_14, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //15 ketimun
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan15,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_15, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_15, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_15, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // 16 Kubis
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan16,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_16, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_16, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_16, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //17 Labu siam
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan17,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_17, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_17, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_17, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //18 Lobak
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan18,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_18, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_18, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_18, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //19 Melon
                         Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan19,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_19, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_19, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_19, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //20 Paprika
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan20,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_20, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_20, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_20, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //21 Petsai/sawi
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan21,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_21, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_21, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_21, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //22 Semangka
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan22,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_22, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_22, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_22, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //23 Stroberi
                          Container(
                             height: screenHeight*0.035,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan23,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_23, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_23, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_23, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //24 terung
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan24,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_24, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_24, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_24, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //25 Tomat
                          Container(
                             height: screenHeight*0.03,
                             color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
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
                                    luas_satuan25,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_25, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_25, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_25, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //26 Wortel
                          Container(
                             height: screenHeight*0.035,
                             color: const Color.fromARGB(255, 210, 228, 210),
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text(
                                      tanaman26,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Text(
                                    luas_satuan26,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn1_26, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn2_26, 0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Text(
                                    Format.convertTo(luas_thn3_26, 0),
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
                              " Sumber Data : BPS, Statistik Pertanian Hortikultura SPH-SBS",
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
