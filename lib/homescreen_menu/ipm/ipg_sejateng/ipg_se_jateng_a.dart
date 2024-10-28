// ignore_for_file: camel_case_types, unused_local_variable, duplicate_ignore, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_ipg_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IpgKabkotA extends StatefulWidget {
  const IpgKabkotA({Key? key}) : super(key: key);

  @override
  State<IpgKabkotA> createState() => _IpgKabkotAState();
}

class _IpgKabkotAState extends State<IpgKabkotA> {
  RepositoryIpgKabkot repositoryIpgKabkot = RepositoryIpgKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryIpgKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipgkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // IPG 2019

              String thn1 = isiipgkabkot[index = 0].tahun.substring(0, 4);

              String kabkota1 = isiipgkabkot[index = 0].kab_kota;
              String kabkota2 = isiipgkabkot[index = 1].kab_kota;
              String kabkota3 = isiipgkabkot[index = 2].kab_kota;
              String kabkota4 = isiipgkabkot[index = 3].kab_kota;
              String kabkota5 = isiipgkabkot[index = 4].kab_kota;
              String kabkota6 = isiipgkabkot[index = 5].kab_kota;
              String kabkota7 = isiipgkabkot[index = 6].kab_kota;
              String kabkota8 = isiipgkabkot[index = 7].kab_kota;
              String kabkota9 = isiipgkabkot[index = 8].kab_kota;
              String kabkota10 = isiipgkabkot[index = 9].kab_kota;
              String kabkota11 = isiipgkabkot[index = 10].kab_kota;
              String kabkota12 = isiipgkabkot[index = 11].kab_kota;
              String kabkota13 = isiipgkabkot[index = 12].kab_kota;
              String kabkota14 = isiipgkabkot[index = 13].kab_kota;
              String kabkota15 = isiipgkabkot[index = 14].kab_kota;
              String kabkota16 = isiipgkabkot[index = 15].kab_kota;
              String kabkota17 = isiipgkabkot[index = 16].kab_kota;
              String kabkota18 = isiipgkabkot[index = 17].kab_kota;
              String kabkota19 = isiipgkabkot[index = 18].kab_kota;
              String kabkota20 = isiipgkabkot[index = 19].kab_kota;
              String kabkota21 = isiipgkabkot[index = 20].kab_kota;
              String kabkota22 = isiipgkabkot[index = 21].kab_kota;
              String kabkota23 = isiipgkabkot[index = 22].kab_kota;
              String kabkota24 = isiipgkabkot[index = 23].kab_kota;
              String kabkota25 = isiipgkabkot[index = 24].kab_kota;
              String kabkota26 = isiipgkabkot[index = 25].kab_kota;
              String kabkota27 = isiipgkabkot[index = 26].kab_kota;
              String kabkota28 = isiipgkabkot[index = 27].kab_kota;
              String kabkota29 = isiipgkabkot[index = 28].kab_kota;
              String kabkota30 = isiipgkabkot[index = 29].kab_kota;
              String kabkota31 = isiipgkabkot[index = 30].kab_kota;
              String kabkota32 = isiipgkabkot[index = 31].kab_kota;
              String kabkota33 = isiipgkabkot[index = 32].kab_kota;
              String kabkota34 = isiipgkabkot[index = 33].kab_kota;
              String kabkota35 = isiipgkabkot[index = 34].kab_kota;
              String kabkota36 = isiipgkabkot[index = 35].kab_kota;

              double ipmLk_1 = double.parse(isiipgkabkot[index = 0].ipm_lk_n1);
              double ipmLk_2 = double.parse(isiipgkabkot[index = 1].ipm_lk_n1);
              double ipmLk_3 = double.parse(isiipgkabkot[index = 2].ipm_lk_n1);
              double ipmLk_4 = double.parse(isiipgkabkot[index = 3].ipm_lk_n1);
              double ipmLk_5 = double.parse(isiipgkabkot[index = 4].ipm_lk_n1);
              double ipmLk_6 = double.parse(isiipgkabkot[index = 5].ipm_lk_n1);
              double ipmLk_7 = double.parse(isiipgkabkot[index = 6].ipm_lk_n1);
              double ipmLk_8 = double.parse(isiipgkabkot[index = 7].ipm_lk_n1);
              double ipmLk_9 = double.parse(isiipgkabkot[index = 8].ipm_lk_n1);
              double ipmLk_10 = double.parse(isiipgkabkot[index = 9].ipm_lk_n1);
              double ipmLk_11 =
                  double.parse(isiipgkabkot[index = 10].ipm_lk_n1);
              double ipmLk_12 =
                  double.parse(isiipgkabkot[index = 11].ipm_lk_n1);
              double ipmLk_13 =
                  double.parse(isiipgkabkot[index = 12].ipm_lk_n1);
              double ipmLk_14 =
                  double.parse(isiipgkabkot[index = 13].ipm_lk_n1);
              double ipmLk_15 =
                  double.parse(isiipgkabkot[index = 14].ipm_lk_n1);
              double ipmLk_16 =
                  double.parse(isiipgkabkot[index = 15].ipm_lk_n1);
              double ipmLk_17 =
                  double.parse(isiipgkabkot[index = 16].ipm_lk_n1);
              double ipmLk_18 =
                  double.parse(isiipgkabkot[index = 17].ipm_lk_n1);
              double ipmLk_19 =
                  double.parse(isiipgkabkot[index = 18].ipm_lk_n1);
              double ipmLk_20 =
                  double.parse(isiipgkabkot[index = 19].ipm_lk_n1);
              double ipmLk_21 =
                  double.parse(isiipgkabkot[index = 20].ipm_lk_n1);
              double ipmLk_22 =
                  double.parse(isiipgkabkot[index = 21].ipm_lk_n1);
              double ipmLk_23 =
                  double.parse(isiipgkabkot[index = 22].ipm_lk_n1);
              double ipmLk_24 =
                  double.parse(isiipgkabkot[index = 23].ipm_lk_n1);
              double ipmLk_25 =
                  double.parse(isiipgkabkot[index = 24].ipm_lk_n1);
              double ipmLk_26 =
                  double.parse(isiipgkabkot[index = 25].ipm_lk_n1);
              double ipmLk_27 =
                  double.parse(isiipgkabkot[index = 26].ipm_lk_n1);
              double ipmLk_28 =
                  double.parse(isiipgkabkot[index = 27].ipm_lk_n1);
              double ipmLk_29 =
                  double.parse(isiipgkabkot[index = 28].ipm_lk_n1);
              double ipmLk_30 =
                  double.parse(isiipgkabkot[index = 29].ipm_lk_n1);
              double ipmLk_31 =
                  double.parse(isiipgkabkot[index = 30].ipm_lk_n1);
              double ipmLk_32 =
                  double.parse(isiipgkabkot[index = 31].ipm_lk_n1);
              double ipmLk_33 =
                  double.parse(isiipgkabkot[index = 32].ipm_lk_n1);
              double ipmLk_34 =
                  double.parse(isiipgkabkot[index = 33].ipm_lk_n1);
              double ipmLk_35 =
                  double.parse(isiipgkabkot[index = 34].ipm_lk_n1);
              double ipmLk_36 =
                  double.parse(isiipgkabkot[index = 35].ipm_lk_n1);

              double ipmPr_1 = double.parse(isiipgkabkot[index = 0].ipm_pr_n1);
              double ipmPr_2 = double.parse(isiipgkabkot[index = 1].ipm_pr_n1);
              double ipmPr_3 = double.parse(isiipgkabkot[index = 2].ipm_pr_n1);
              double ipmPr_4 = double.parse(isiipgkabkot[index = 3].ipm_pr_n1);
              double ipmPr_5 = double.parse(isiipgkabkot[index = 4].ipm_pr_n1);
              double ipmPr_6 = double.parse(isiipgkabkot[index = 5].ipm_pr_n1);
              double ipmPr_7 = double.parse(isiipgkabkot[index = 6].ipm_pr_n1);
              double ipmPr_8 = double.parse(isiipgkabkot[index = 7].ipm_pr_n1);
              double ipmPr_9 = double.parse(isiipgkabkot[index = 8].ipm_pr_n1);
              double ipmPr_10 = double.parse(isiipgkabkot[index = 9].ipm_pr_n1);
              double ipmPr_11 =
                  double.parse(isiipgkabkot[index = 10].ipm_pr_n1);
              double ipmPr_12 =
                  double.parse(isiipgkabkot[index = 11].ipm_pr_n1);
              double ipmPr_13 =
                  double.parse(isiipgkabkot[index = 12].ipm_pr_n1);
              double ipmPr_14 =
                  double.parse(isiipgkabkot[index = 13].ipm_pr_n1);
              double ipmPr_15 =
                  double.parse(isiipgkabkot[index = 14].ipm_pr_n1);
              double ipmPr_16 =
                  double.parse(isiipgkabkot[index = 15].ipm_pr_n1);
              double ipmPr_17 =
                  double.parse(isiipgkabkot[index = 16].ipm_pr_n1);
              double ipmPr_18 =
                  double.parse(isiipgkabkot[index = 17].ipm_pr_n1);
              double ipmPr_19 =
                  double.parse(isiipgkabkot[index = 18].ipm_pr_n1);
              double ipmPr_20 =
                  double.parse(isiipgkabkot[index = 19].ipm_pr_n1);
              double ipmPr_21 =
                  double.parse(isiipgkabkot[index = 20].ipm_pr_n1);
              double ipmPr_22 =
                  double.parse(isiipgkabkot[index = 21].ipm_pr_n1);
              double ipmPr_23 =
                  double.parse(isiipgkabkot[index = 22].ipm_pr_n1);
              double ipmPr_24 =
                  double.parse(isiipgkabkot[index = 23].ipm_pr_n1);
              double ipmPr_25 =
                  double.parse(isiipgkabkot[index = 24].ipm_pr_n1);
              double ipmPr_26 =
                  double.parse(isiipgkabkot[index = 25].ipm_pr_n1);
              double ipmPr_27 =
                  double.parse(isiipgkabkot[index = 26].ipm_pr_n1);
              double ipmPr_28 =
                  double.parse(isiipgkabkot[index = 27].ipm_pr_n1);
              double ipmPr_29 =
                  double.parse(isiipgkabkot[index = 28].ipm_pr_n1);
              double ipmPr_30 =
                  double.parse(isiipgkabkot[index = 29].ipm_pr_n1);
              double ipmPr_31 =
                  double.parse(isiipgkabkot[index = 30].ipm_pr_n1);
              double ipmPr_32 =
                  double.parse(isiipgkabkot[index = 31].ipm_pr_n1);
              double ipmPr_33 =
                  double.parse(isiipgkabkot[index = 32].ipm_pr_n1);
              double ipmPr_34 =
                  double.parse(isiipgkabkot[index = 33].ipm_pr_n1);
              double ipmPr_35 =
                  double.parse(isiipgkabkot[index = 34].ipm_pr_n1);
              double ipmPr_36 =
                  double.parse(isiipgkabkot[index = 35].ipm_pr_n1);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.04,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Container(
                            height: screenHeight * 0.03,
                            color: Colors.green,
                            padding: const EdgeInsets.only(
                                right: 25, top: 5, bottom: 0),
                            child: const Text(
                              "Kabupaten/",
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
                          flex: 4,
                          child: Container(
                            height: screenHeight * 0.03,
                            color: Colors.green,
                            padding: const EdgeInsets.only(
                                left: 10, top: 5, bottom: 2),
                            child: Text(
                              thn1,
                              textAlign: TextAlign.center,
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
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.04,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Container(
                            height: screenHeight * 0.04,
                            color: Colors.green,
                            padding: const EdgeInsets.only(
                                right: 25, top: 0, bottom: 8),
                            child: const Text(
                              "Kota",
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
                            height: screenHeight * 0.04,
                            color: Colors.green,
                            padding: const EdgeInsets.only(
                                left: 10, top: 3, bottom: 5),
                            child: const Text(
                              "Lk",
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
                            height: screenHeight * 0.04,
                            color: Colors.green,
                            padding: const EdgeInsets.only(
                                left: 10, top: 3, bottom: 5),
                            child: const Text(
                              "Pr",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.white),
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
                          // Cilacap
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota1,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_1, 2),
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

                          //Banyumas
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota2,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_2, 2),
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

                          //Purbalingga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota3,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_3, 2),
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

                          //Banjarnegara

                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota4,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_4, 2),
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

                          //Kebumen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota5,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_5, 2),
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

                          //Purworejo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota6,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_6, 2),
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

                          // Wonosobo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota7,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_7, 2),
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

                          //Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota8,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_8, 2),
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

                          //Boyolali
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota9,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_9, 2),
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

                          //Klaten
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota10,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_10, 2),
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

                          //Sukoharjo
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota11,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_11, 2),
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

                          //Wonogiri
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota12,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_12, 2),
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

                          //Karanganyar
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota13,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_13, 2),
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

                          //Sragen
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota14,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_14, 2),
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

                          //Grobogan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota15,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_15, 2),
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

                          //Blora
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota16,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_16, 2),
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

                          //Rembang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota17,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_17, 2),
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

                          //Pati
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota18,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_18, 2),
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

                          //Kudus
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota19,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_19, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_19, 2),
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

                          //Jepara
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota20,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_20, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_20, 2),
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

                          //Demak
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota21,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_21, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_21, 2),
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

                          //Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota22,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_22, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_22, 2),
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

                          //Temanggung
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota23,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_23, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_23, 2),
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

                          //Kendal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota24,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_24, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_24, 2),
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

                          //Batang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota25,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_25, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_25, 2),
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

                          //Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota26,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_26, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_26, 2),
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

                          //Pemalang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota27,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_27, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_27, 2),
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

                          //Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota28,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_28, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_28, 2),
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

                          //Brebes
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota29,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_29, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_29, 2),
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

                          // Kota Magelang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota30,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_30, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_30, 2),
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

                          //Kota Surakarta
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota31,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_31, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_31, 2),
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

                          //Kota Salatiga
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota32,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_32, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_32, 2),
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

                          //Kota Semarang
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota33,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_33, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_33, 2),
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

                          //Kota Pekalongan
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota34,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_34, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_34, 2),
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

                          //Kota Tegal
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.032,
                            color: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota35,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmLk_35, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipmPr_35, 2),
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

                          //Total
                          Container(
                            width: screenWidth * 1.0,
                            height: screenHeight * 0.050,
                            color: Colors.green,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 25, top: 3, bottom: 3),
                                    child: Text(
                                      kabkota36,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
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
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(ipmLk_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
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
                                    padding: const EdgeInsets.only(
                                        right: 25, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(ipmPr_36, 2),
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
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 0,
                            ),
                            child: const Text(
                              " Keterangan :",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 14,
                              bottom: 0,
                            ),
                            child: const Text(
                              "Komponen penyusun IPM menurut jenis kelamin sama dengan komponen pembentuk IPM, terdiri dari UHH, RLS, HLS, PPP.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 4,
                              bottom: 10,
                            ),
                            child: const Text(
                              " Sumber Data : Survei Sosial Ekonomi Nasional (SUSENAS)",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
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
          return const Center(child: CircularProgressIndicator(strokeWidth: 3));
        }
      },
    ));
  }
}
