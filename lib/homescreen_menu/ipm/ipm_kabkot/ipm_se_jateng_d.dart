// ignore_for_file: camel_case_types, unused_local_variable, duplicate_ignore, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_ipm_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class IpmKabkotD extends StatefulWidget {
  const IpmKabkotD({Key? key}) : super(key: key);

  @override
  State<IpmKabkotD> createState() => _IpmKabkotDState();
}

class _IpmKabkotDState extends State<IpmKabkotD> {
  RepositoryIpmKabkot repositoryIpmKabkot = RepositoryIpmKabkot();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryIpmKabkot.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipmkabkot = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // IPM 2022

              String kabkota1 = isiipmkabkot[index = 0].kab_kota;
              String kabkota2 = isiipmkabkot[index = 1].kab_kota;
              String kabkota3 = isiipmkabkot[index = 2].kab_kota;
              String kabkota4 = isiipmkabkot[index = 3].kab_kota;
              String kabkota5 = isiipmkabkot[index = 4].kab_kota;
              String kabkota6 = isiipmkabkot[index = 5].kab_kota;
              String kabkota7 = isiipmkabkot[index = 6].kab_kota;
              String kabkota8 = isiipmkabkot[index = 7].kab_kota;
              String kabkota9 = isiipmkabkot[index = 8].kab_kota;
              String kabkota10 = isiipmkabkot[index = 9].kab_kota;
              String kabkota11 = isiipmkabkot[index = 10].kab_kota;
              String kabkota12 = isiipmkabkot[index = 11].kab_kota;
              String kabkota13 = isiipmkabkot[index = 12].kab_kota;
              String kabkota14 = isiipmkabkot[index = 13].kab_kota;
              String kabkota15 = isiipmkabkot[index = 14].kab_kota;
              String kabkota16 = isiipmkabkot[index = 15].kab_kota;
              String kabkota17 = isiipmkabkot[index = 16].kab_kota;
              String kabkota18 = isiipmkabkot[index = 17].kab_kota;
              String kabkota19 = isiipmkabkot[index = 18].kab_kota;
              String kabkota20 = isiipmkabkot[index = 19].kab_kota;
              String kabkota21 = isiipmkabkot[index = 20].kab_kota;
              String kabkota22 = isiipmkabkot[index = 21].kab_kota;
              String kabkota23 = isiipmkabkot[index = 22].kab_kota;
              String kabkota24 = isiipmkabkot[index = 23].kab_kota;
              String kabkota25 = isiipmkabkot[index = 24].kab_kota;
              String kabkota26 = isiipmkabkot[index = 25].kab_kota;
              String kabkota27 = isiipmkabkot[index = 26].kab_kota;
              String kabkota28 = isiipmkabkot[index = 27].kab_kota;
              String kabkota29 = isiipmkabkot[index = 28].kab_kota;
              String kabkota30 = isiipmkabkot[index = 29].kab_kota;
              String kabkota31 = isiipmkabkot[index = 30].kab_kota;
              String kabkota32 = isiipmkabkot[index = 31].kab_kota;
              String kabkota33 = isiipmkabkot[index = 32].kab_kota;
              String kabkota34 = isiipmkabkot[index = 33].kab_kota;
              String kabkota35 = isiipmkabkot[index = 34].kab_kota;
              String kabkota36 = isiipmkabkot[index = 35].kab_kota;

              double uhh1 = double.parse(isiipmkabkot[index = 0].uhh_n4);
              double uhh2 = double.parse(isiipmkabkot[index = 1].uhh_n4);
              double uhh3 = double.parse(isiipmkabkot[index = 2].uhh_n4);
              double uhh4 = double.parse(isiipmkabkot[index = 3].uhh_n4);
              double uhh5 = double.parse(isiipmkabkot[index = 4].uhh_n4);
              double uhh6 = double.parse(isiipmkabkot[index = 5].uhh_n4);
              double uhh7 = double.parse(isiipmkabkot[index = 6].uhh_n4);
              double uhh8 = double.parse(isiipmkabkot[index = 7].uhh_n4);
              double uhh9 = double.parse(isiipmkabkot[index = 8].uhh_n4);
              double uhh10 = double.parse(isiipmkabkot[index = 9].uhh_n4);
              double uhh11 = double.parse(isiipmkabkot[index = 10].uhh_n4);
              double uhh12 = double.parse(isiipmkabkot[index = 11].uhh_n4);
              double uhh13 = double.parse(isiipmkabkot[index = 12].uhh_n4);
              double uhh14 = double.parse(isiipmkabkot[index = 13].uhh_n4);
              double uhh15 = double.parse(isiipmkabkot[index = 14].uhh_n4);
              double uhh16 = double.parse(isiipmkabkot[index = 15].uhh_n4);
              double uhh17 = double.parse(isiipmkabkot[index = 16].uhh_n4);
              double uhh18 = double.parse(isiipmkabkot[index = 17].uhh_n4);
              double uhh19 = double.parse(isiipmkabkot[index = 17].uhh_n4);
              double uhh20 = double.parse(isiipmkabkot[index = 18].uhh_n4);
              double uhh21 = double.parse(isiipmkabkot[index = 19].uhh_n4);
              double uhh22 = double.parse(isiipmkabkot[index = 20].uhh_n4);
              double uhh23 = double.parse(isiipmkabkot[index = 21].uhh_n4);
              double uhh24 = double.parse(isiipmkabkot[index = 23].uhh_n4);
              double uhh25 = double.parse(isiipmkabkot[index = 24].uhh_n4);
              double uhh26 = double.parse(isiipmkabkot[index = 25].uhh_n4);
              double uhh27 = double.parse(isiipmkabkot[index = 26].uhh_n4);
              double uhh28 = double.parse(isiipmkabkot[index = 27].uhh_n4);
              double uhh29 = double.parse(isiipmkabkot[index = 28].uhh_n4);
              double uhh30 = double.parse(isiipmkabkot[index = 29].uhh_n4);
              double uhh31 = double.parse(isiipmkabkot[index = 30].uhh_n4);
              double uhh32 = double.parse(isiipmkabkot[index = 31].uhh_n4);
              double uhh33 = double.parse(isiipmkabkot[index = 32].uhh_n4);
              double uhh34 = double.parse(isiipmkabkot[index = 33].uhh_n4);
              double uhh35 = double.parse(isiipmkabkot[index = 34].uhh_n4);
              double uhh36 = double.parse(isiipmkabkot[index = 35].uhh_n4);

              double rls_1 = double.parse(isiipmkabkot[index = 0].rls_n4);
              double rls_2 = double.parse(isiipmkabkot[index = 1].rls_n4);
              double rls_3 = double.parse(isiipmkabkot[index = 2].rls_n4);
              double rls_4 = double.parse(isiipmkabkot[index = 3].rls_n4);
              double rls_5 = double.parse(isiipmkabkot[index = 4].rls_n4);
              double rls_6 = double.parse(isiipmkabkot[index = 5].rls_n4);
              double rls_7 = double.parse(isiipmkabkot[index = 6].rls_n4);
              double rls_8 = double.parse(isiipmkabkot[index = 7].rls_n4);
              double rls_9 = double.parse(isiipmkabkot[index = 8].rls_n4);
              double rls_10 = double.parse(isiipmkabkot[index = 9].rls_n4);
              double rls_11 = double.parse(isiipmkabkot[index = 10].rls_n4);
              double rls_12 = double.parse(isiipmkabkot[index = 11].rls_n4);
              double rls_13 = double.parse(isiipmkabkot[index = 12].rls_n4);
              double rls_14 = double.parse(isiipmkabkot[index = 13].rls_n4);
              double rls_15 = double.parse(isiipmkabkot[index = 14].rls_n4);
              double rls_16 = double.parse(isiipmkabkot[index = 15].rls_n4);
              double rls_17 = double.parse(isiipmkabkot[index = 16].rls_n4);
              double rls_18 = double.parse(isiipmkabkot[index = 17].rls_n4);
              double rls_19 = double.parse(isiipmkabkot[index = 18].rls_n4);
              double rls_20 = double.parse(isiipmkabkot[index = 19].rls_n4);
              double rls_21 = double.parse(isiipmkabkot[index = 20].rls_n4);
              double rls_22 = double.parse(isiipmkabkot[index = 21].rls_n4);
              double rls_23 = double.parse(isiipmkabkot[index = 22].rls_n4);
              double rls_24 = double.parse(isiipmkabkot[index = 23].rls_n4);
              double rls_25 = double.parse(isiipmkabkot[index = 24].rls_n4);
              double rls_26 = double.parse(isiipmkabkot[index = 25].rls_n4);
              double rls_27 = double.parse(isiipmkabkot[index = 26].rls_n4);
              double rls_28 = double.parse(isiipmkabkot[index = 27].rls_n4);
              double rls_29 = double.parse(isiipmkabkot[index = 28].rls_n4);
              double rls_30 = double.parse(isiipmkabkot[index = 29].rls_n4);
              double rls_31 = double.parse(isiipmkabkot[index = 30].rls_n4);
              double rls_32 = double.parse(isiipmkabkot[index = 31].rls_n4);
              double rls_33 = double.parse(isiipmkabkot[index = 32].rls_n4);
              double rls_34 = double.parse(isiipmkabkot[index = 33].rls_n4);
              double rls_35 = double.parse(isiipmkabkot[index = 34].rls_n4);
              double rls_36 = double.parse(isiipmkabkot[index = 35].rls_n4);

              double hls_1 = double.parse(isiipmkabkot[index = 0].hls_n4);
              double hls_2 = double.parse(isiipmkabkot[index = 1].hls_n4);
              double hls_3 = double.parse(isiipmkabkot[index = 2].hls_n4);
              double hls_4 = double.parse(isiipmkabkot[index = 3].hls_n4);
              double hls_5 = double.parse(isiipmkabkot[index = 4].hls_n4);
              double hls_6 = double.parse(isiipmkabkot[index = 5].hls_n4);
              double hls_7 = double.parse(isiipmkabkot[index = 6].hls_n4);
              double hls_8 = double.parse(isiipmkabkot[index = 7].hls_n4);
              double hls_9 = double.parse(isiipmkabkot[index = 8].hls_n4);
              double hls_10 = double.parse(isiipmkabkot[index = 9].hls_n4);
              double hls_11 = double.parse(isiipmkabkot[index = 10].hls_n4);
              double hls_12 = double.parse(isiipmkabkot[index = 11].hls_n4);
              double hls_13 = double.parse(isiipmkabkot[index = 12].hls_n4);
              double hls_14 = double.parse(isiipmkabkot[index = 13].hls_n4);
              double hls_15 = double.parse(isiipmkabkot[index = 14].hls_n4);
              double hls_16 = double.parse(isiipmkabkot[index = 15].hls_n4);
              double hls_17 = double.parse(isiipmkabkot[index = 16].hls_n4);
              double hls_18 = double.parse(isiipmkabkot[index = 17].hls_n4);
              double hls_19 = double.parse(isiipmkabkot[index = 18].hls_n4);
              double hls_20 = double.parse(isiipmkabkot[index = 19].hls_n4);
              double hls_21 = double.parse(isiipmkabkot[index = 20].hls_n4);
              double hls_22 = double.parse(isiipmkabkot[index = 21].hls_n4);
              double hls_23 = double.parse(isiipmkabkot[index = 22].hls_n4);
              double hls_24 = double.parse(isiipmkabkot[index = 23].hls_n4);
              double hls_25 = double.parse(isiipmkabkot[index = 24].hls_n4);
              double hls_26 = double.parse(isiipmkabkot[index = 25].hls_n4);
              double hls_27 = double.parse(isiipmkabkot[index = 26].hls_n4);
              double hls_28 = double.parse(isiipmkabkot[index = 27].hls_n4);
              double hls_29 = double.parse(isiipmkabkot[index = 28].hls_n4);
              double hls_30 = double.parse(isiipmkabkot[index = 29].hls_n4);
              double hls_31 = double.parse(isiipmkabkot[index = 30].hls_n4);
              double hls_32 = double.parse(isiipmkabkot[index = 31].hls_n4);
              double hls_33 = double.parse(isiipmkabkot[index = 32].hls_n4);
              double hls_34 = double.parse(isiipmkabkot[index = 33].hls_n4);
              double hls_35 = double.parse(isiipmkabkot[index = 34].hls_n4);
              double hls_36 = double.parse(isiipmkabkot[index = 35].hls_n4);

              double ppp_1 = double.parse(isiipmkabkot[index = 0].ppp_n4);
              double ppp_2 = double.parse(isiipmkabkot[index = 1].ppp_n4);
              double ppp_3 = double.parse(isiipmkabkot[index = 2].ppp_n4);
              double ppp_4 = double.parse(isiipmkabkot[index = 3].ppp_n4);
              double ppp_5 = double.parse(isiipmkabkot[index = 4].ppp_n4);
              double ppp_6 = double.parse(isiipmkabkot[index = 5].ppp_n4);
              double ppp_7 = double.parse(isiipmkabkot[index = 6].ppp_n4);
              double ppp_8 = double.parse(isiipmkabkot[index = 7].ppp_n4);
              double ppp_9 = double.parse(isiipmkabkot[index = 8].ppp_n4);
              double ppp_10 = double.parse(isiipmkabkot[index = 9].ppp_n4);
              double ppp_11 = double.parse(isiipmkabkot[index = 10].ppp_n4);
              double ppp_12 = double.parse(isiipmkabkot[index = 11].ppp_n4);
              double ppp_13 = double.parse(isiipmkabkot[index = 12].ppp_n4);
              double ppp_14 = double.parse(isiipmkabkot[index = 13].ppp_n4);
              double ppp_15 = double.parse(isiipmkabkot[index = 14].ppp_n4);
              double ppp_16 = double.parse(isiipmkabkot[index = 15].ppp_n4);
              double ppp_17 = double.parse(isiipmkabkot[index = 16].ppp_n4);
              double ppp_18 = double.parse(isiipmkabkot[index = 17].ppp_n4);
              double ppp_19 = double.parse(isiipmkabkot[index = 18].ppp_n4);
              double ppp_20 = double.parse(isiipmkabkot[index = 19].ppp_n4);
              double ppp_21 = double.parse(isiipmkabkot[index = 20].ppp_n4);
              double ppp_22 = double.parse(isiipmkabkot[index = 21].ppp_n4);
              double ppp_23 = double.parse(isiipmkabkot[index = 22].ppp_n4);
              double ppp_24 = double.parse(isiipmkabkot[index = 23].ppp_n4);
              double ppp_25 = double.parse(isiipmkabkot[index = 24].ppp_n4);
              double ppp_26 = double.parse(isiipmkabkot[index = 25].ppp_n4);
              double ppp_27 = double.parse(isiipmkabkot[index = 26].ppp_n4);
              double ppp_28 = double.parse(isiipmkabkot[index = 27].ppp_n4);
              double ppp_29 = double.parse(isiipmkabkot[index = 28].ppp_n4);
              double ppp_30 = double.parse(isiipmkabkot[index = 29].ppp_n4);
              double ppp_31 = double.parse(isiipmkabkot[index = 30].ppp_n4);
              double ppp_32 = double.parse(isiipmkabkot[index = 31].ppp_n4);
              double ppp_33 = double.parse(isiipmkabkot[index = 32].ppp_n4);
              double ppp_34 = double.parse(isiipmkabkot[index = 33].ppp_n4);
              double ppp_35 = double.parse(isiipmkabkot[index = 34].ppp_n4);
              double ppp_36 = double.parse(isiipmkabkot[index = 35].ppp_n4);

              double ipm_1 =
                  double.parse(isiipmkabkot[index = 0].ipm_lfsp2020_n4);
              double ipm_2 =
                  double.parse(isiipmkabkot[index = 1].ipm_lfsp2020_n4);
              double ipm_3 =
                  double.parse(isiipmkabkot[index = 2].ipm_lfsp2020_n4);
              double ipm_4 =
                  double.parse(isiipmkabkot[index = 3].ipm_lfsp2020_n4);
              double ipm_5 =
                  double.parse(isiipmkabkot[index = 4].ipm_lfsp2020_n4);
              double ipm_6 =
                  double.parse(isiipmkabkot[index = 5].ipm_lfsp2020_n4);
              double ipm_7 =
                  double.parse(isiipmkabkot[index = 6].ipm_lfsp2020_n4);
              double ipm_8 =
                  double.parse(isiipmkabkot[index = 7].ipm_lfsp2020_n4);
              double ipm_9 =
                  double.parse(isiipmkabkot[index = 8].ipm_lfsp2020_n4);
              double ipm_10 =
                  double.parse(isiipmkabkot[index = 9].ipm_lfsp2020_n4);
              double ipm_11 =
                  double.parse(isiipmkabkot[index = 10].ipm_lfsp2020_n4);
              double ipm_12 =
                  double.parse(isiipmkabkot[index = 11].ipm_lfsp2020_n4);
              double ipm_13 =
                  double.parse(isiipmkabkot[index = 12].ipm_lfsp2020_n4);
              double ipm_14 =
                  double.parse(isiipmkabkot[index = 13].ipm_lfsp2020_n4);
              double ipm_15 =
                  double.parse(isiipmkabkot[index = 14].ipm_lfsp2020_n4);
              double ipm_16 =
                  double.parse(isiipmkabkot[index = 15].ipm_lfsp2020_n4);
              double ipm_17 =
                  double.parse(isiipmkabkot[index = 16].ipm_lfsp2020_n4);
              double ipm_18 =
                  double.parse(isiipmkabkot[index = 17].ipm_lfsp2020_n4);
              double ipm_19 =
                  double.parse(isiipmkabkot[index = 18].ipm_lfsp2020_n4);
              double ipm_20 =
                  double.parse(isiipmkabkot[index = 19].ipm_lfsp2020_n4);
              double ipm_21 =
                  double.parse(isiipmkabkot[index = 20].ipm_lfsp2020_n4);
              double ipm_22 =
                  double.parse(isiipmkabkot[index = 21].ipm_lfsp2020_n4);
              double ipm_23 =
                  double.parse(isiipmkabkot[index = 22].ipm_lfsp2020_n4);
              double ipm_24 =
                  double.parse(isiipmkabkot[index = 23].ipm_lfsp2020_n4);
              double ipm_25 =
                  double.parse(isiipmkabkot[index = 24].ipm_lfsp2020_n4);
              double ipm_26 =
                  double.parse(isiipmkabkot[index = 25].ipm_lfsp2020_n4);
              double ipm_27 =
                  double.parse(isiipmkabkot[index = 26].ipm_lfsp2020_n4);
              double ipm_28 =
                  double.parse(isiipmkabkot[index = 27].ipm_lfsp2020_n4);
              double ipm_29 =
                  double.parse(isiipmkabkot[index = 28].ipm_lfsp2020_n4);
              double ipm_30 =
                  double.parse(isiipmkabkot[index = 29].ipm_lfsp2020_n4);
              double ipm_31 =
                  double.parse(isiipmkabkot[index = 30].ipm_lfsp2020_n4);
              double ipm_32 =
                  double.parse(isiipmkabkot[index = 31].ipm_lfsp2020_n4);
              double ipm_33 =
                  double.parse(isiipmkabkot[index = 32].ipm_lfsp2020_n4);
              double ipm_34 =
                  double.parse(isiipmkabkot[index = 33].ipm_lfsp2020_n4);
              double ipm_35 =
                  double.parse(isiipmkabkot[index = 34].ipm_lfsp2020_n4);
              double ipm_36 =
                  double.parse(isiipmkabkot[index = 35].ipm_lfsp2020_n4);

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.08,
                    color: Colors.orange,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Container(
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                right: 3, top: 5, bottom: 0),
                            child: const Text(
                              'Kabupaten/\n'
                              'Kota',
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
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                left: 5, top: 5, bottom: 2),
                            child: const Text(
                              'UHH\n'
                              '(tahun)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                left: 5, top: 5, bottom: 2),
                            child: const Text(
                              'RLS\n'
                              '(tahun)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                left: 3, top: 5, bottom: 2),
                            child: const Text(
                              'HLS\n'
                              '(tahun)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                left: 0, top: 5, bottom: 2),
                            child: const Text(
                              'PPP\n'
                              '(juta Rp)',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.5,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 2,
                          child: Container(
                            height: screenHeight * 0.08,
                            color: Colors.orange,
                            padding: const EdgeInsets.only(
                                left: 6, top: 10, bottom: 0),
                            child: const Text(
                              "IPM",
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh1, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_1, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_1, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_1, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_1, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh2, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_2, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_2, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_2, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_2, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh3, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_3, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_3, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_3, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_3, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh4, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_4, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_4, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_4, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_4, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh5, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_5, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_5, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_5, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_5, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh6, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_6, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_6, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_6, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_6, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh7, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_7, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_7, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_7, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_7, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh8, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_8, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_8, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_8, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_8, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh9, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_9, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_9, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_9, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_9, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh10, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_10, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_10, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_10, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_10, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh11, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_11, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_11, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_11, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_11, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh12, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_12, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_12, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_12, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_12, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh13, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_13, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_13, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_13, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_13, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh14, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_14, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_14, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_14, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_14, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh15, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_15, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_15, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_15, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_15, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh16, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_16, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_16, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_16, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_16, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh17, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_17, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_17, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_17, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_17, 2),
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
                                        left: 5, right: 6, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh18, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_18, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_18, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_18, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_18, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh19, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_19, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_19, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_19, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_19, 2),
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
                                        left: 5, right: 6, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh20, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_20, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_20, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_20, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_20, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh21, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_21, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_21, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_21, 3),
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
                                        left: 5, right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_21, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh22, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_22, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_22, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_22, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_22, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh23, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_23, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_23, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_23, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_23, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh24, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_24, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_24, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_24, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_24, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh25, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_25, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_25, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_25, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_25, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh26, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_26, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_26, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_26, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_26, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh27, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_27, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_27, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_27, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_27, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh28, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_28, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_28, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_28, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_28, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh29, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_29, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_29, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_29, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_29, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh30, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_30, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_30, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_30, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_30, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh31, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_31, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_31, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_31, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_31, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh32, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_32, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_32, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_32, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_32, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh33, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_33, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_33, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_33, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_33, 2),
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
                                        left: 5, right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      kabkota34,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontSize: 12.7,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh34, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_34, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_34, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_34, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_34, 2),
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
                                        left: 5, right: 3, top: 1, bottom: 1),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(uhh35, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(rls_35, 2),
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
                                        right: 5, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(hls_35, 2),
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
                                        right: 3, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ppp_35, 3),
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
                                        right: 6, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(ipm_35, 2),
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
                            color: Colors.orange,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 3, top: 3, bottom: 3),
                                    child: Text(
                                      kabkota36,
                                      textAlign: TextAlign.center,
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
                                        right: 3, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(uhh36, 2),
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
                                        right: 5, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(rls_36, 2),
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
                                        right: 5, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(hls_36, 2),
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
                                        right: 3, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(ppp_36, 3),
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
                                        right: 6, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(ipm_36, 2),
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
                              "Tahun 2019 UHH dihitung berdasarkan SP2010, tahun 2020-2023 UHH dihitung berdasarkan SP2020 Long Form.",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
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
                              "UHH : Usia Harapan Hidup (tahun).",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
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
                              "RLS : Rata-rata Lama Sekolah (tahun).",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
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
                              "HLS : Harapan Lama Sekolah (tahun).",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
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
                              "PPP : Pengeluaran Per kapita disesuaikan/Purchasing Power Parity (Juta Rupiah).",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.normal),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 14,
                              bottom: 4,
                            ),
                            child: const Text(
                              "IPM : Indeks Pembangunan Manusia (Human Development Index).",
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
