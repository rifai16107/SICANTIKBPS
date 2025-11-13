// ignore_for_file: camel_case_types
import 'package:bps_cilacap/restAPI/repository_kemiskinan_kota.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class kemiskinanKabkotD extends StatefulWidget {
  const kemiskinanKabkotD({Key? key}) : super(key: key);

  @override
  State<kemiskinanKabkotD> createState() => _kemiskinanKabkotDState();
}

RepositoryKemiskinanKota repositoryKemiskinanKota = RepositoryKemiskinanKota();

class _kemiskinanKabkotDState extends State<kemiskinanKabkotD> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: FutureBuilder(
      future: repositoryKemiskinanKota.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isikemiskinan = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // KEMISKINAN 2023

              String kabkota1 = isikemiskinan[index = 0].kabkota;
              String kabkota2 = isikemiskinan[index = 1].kabkota;
              String kabkota3 = isikemiskinan[index = 2].kabkota;
              String kabkota4 = isikemiskinan[index = 3].kabkota;
              String kabkota5 = isikemiskinan[index = 4].kabkota;
              String kabkota6 = isikemiskinan[index = 5].kabkota;
              String kabkota7 = isikemiskinan[index = 6].kabkota;
              String kabkota8 = isikemiskinan[index = 7].kabkota;
              String kabkota9 = isikemiskinan[index = 8].kabkota;
              String kabkota10 = isikemiskinan[index = 9].kabkota;
              String kabkota11 = isikemiskinan[index = 10].kabkota;
              String kabkota12 = isikemiskinan[index = 11].kabkota;
              String kabkota13 = isikemiskinan[index = 12].kabkota;
              String kabkota14 = isikemiskinan[index = 13].kabkota;
              String kabkota15 = isikemiskinan[index = 14].kabkota;
              String kabkota16 = isikemiskinan[index = 15].kabkota;
              String kabkota17 = isikemiskinan[index = 16].kabkota;
              String kabkota18 = isikemiskinan[index = 17].kabkota;
              String kabkota19 = isikemiskinan[index = 18].kabkota;
              String kabkota20 = isikemiskinan[index = 19].kabkota;
              String kabkota21 = isikemiskinan[index = 20].kabkota;
              String kabkota22 = isikemiskinan[index = 21].kabkota;
              String kabkota23 = isikemiskinan[index = 22].kabkota;
              String kabkota24 = isikemiskinan[index = 23].kabkota;
              String kabkota25 = isikemiskinan[index = 24].kabkota;
              String kabkota26 = isikemiskinan[index = 25].kabkota;
              String kabkota27 = isikemiskinan[index = 26].kabkota;
              String kabkota28 = isikemiskinan[index = 27].kabkota;
              String kabkota29 = isikemiskinan[index = 28].kabkota;
              String kabkota30 = isikemiskinan[index = 29].kabkota;
              String kabkota31 = isikemiskinan[index = 30].kabkota;
              String kabkota32 = isikemiskinan[index = 31].kabkota;
              String kabkota33 = isikemiskinan[index = 32].kabkota;
              String kabkota34 = isikemiskinan[index = 33].kabkota;
              String kabkota35 = isikemiskinan[index = 34].kabkota;
              String kabkota36 = isikemiskinan[index = 35].kabkota;

              double pmk1 = double.parse(
                isikemiskinan[index = 0].pddk_mskn_n4,
              );
              double pmk2 = double.parse(
                isikemiskinan[index = 1].pddk_mskn_n4,
              );
              double pmk3 = double.parse(
                isikemiskinan[index = 2].pddk_mskn_n4,
              );
              double pmk4 = double.parse(
                isikemiskinan[index = 3].pddk_mskn_n4,
              );
              double pmk5 = double.parse(
                isikemiskinan[index = 4].pddk_mskn_n4,
              );
              double pmk6 = double.parse(
                isikemiskinan[index = 5].pddk_mskn_n4,
              );
              double pmk7 = double.parse(
                isikemiskinan[index = 6].pddk_mskn_n4,
              );
              double pmk8 = double.parse(
                isikemiskinan[index = 7].pddk_mskn_n4,
              );
              double pmk9 = double.parse(
                isikemiskinan[index = 8].pddk_mskn_n4,
              );
              double pmk10 = double.parse(
                isikemiskinan[index = 9].pddk_mskn_n4,
              );
              double pmk11 = double.parse(
                isikemiskinan[index = 10].pddk_mskn_n4,
              );
              double pmk12 = double.parse(
                isikemiskinan[index = 11].pddk_mskn_n4,
              );
              double pmk13 = double.parse(
                isikemiskinan[index = 12].pddk_mskn_n4,
              );
              double pmk14 = double.parse(
                isikemiskinan[index = 13].pddk_mskn_n4,
              );
              double pmk15 = double.parse(
                isikemiskinan[index = 14].pddk_mskn_n4,
              );
              double pmk16 = double.parse(
                isikemiskinan[index = 15].pddk_mskn_n4,
              );
              double pmk17 = double.parse(
                isikemiskinan[index = 16].pddk_mskn_n4,
              );
              double pmk18 = double.parse(
                isikemiskinan[index = 17].pddk_mskn_n4,
              );
              double pmk19 = double.parse(
                isikemiskinan[index = 18].pddk_mskn_n4,
              );
              double pmk20 = double.parse(
                isikemiskinan[index = 19].pddk_mskn_n4,
              );
              double pmk21 = double.parse(
                isikemiskinan[index = 20].pddk_mskn_n4,
              );
              double pmk22 = double.parse(
                isikemiskinan[index = 21].pddk_mskn_n4,
              );
              double pmk23 = double.parse(
                isikemiskinan[index = 22].pddk_mskn_n4,
              );
              double pmk24 = double.parse(
                isikemiskinan[index = 23].pddk_mskn_n4,
              );
              double pmk25 = double.parse(
                isikemiskinan[index = 24].pddk_mskn_n4,
              );
              double pmk26 = double.parse(
                isikemiskinan[index = 25].pddk_mskn_n4,
              );
              double pmk27 = double.parse(
                isikemiskinan[index = 26].pddk_mskn_n4,
              );
              double pmk28 = double.parse(
                isikemiskinan[index = 27].pddk_mskn_n4,
              );
              double pmk29 = double.parse(
                isikemiskinan[index = 28].pddk_mskn_n4,
              );
              double pmk30 = double.parse(
                isikemiskinan[index = 29].pddk_mskn_n4,
              );
              double pmk31 = double.parse(
                isikemiskinan[index = 30].pddk_mskn_n4,
              );
              double pmk32 = double.parse(
                isikemiskinan[index = 31].pddk_mskn_n4,
              );
              double pmk33 = double.parse(
                isikemiskinan[index = 32].pddk_mskn_n4,
              );
              double pmk34 = double.parse(
                isikemiskinan[index = 33].pddk_mskn_n4,
              );
              double pmk35 = double.parse(
                isikemiskinan[index = 34].pddk_mskn_n4,
              );
              double pmk36 = double.parse(
                isikemiskinan[index = 35].pddk_mskn_n4,
              );

              double p0_1 = double.parse(
                isikemiskinan[index = 0].p0_n4,
              );
              double p0_2 = double.parse(
                isikemiskinan[index = 1].p0_n4,
              );
              double p0_3 = double.parse(
                isikemiskinan[index = 2].p0_n4,
              );
              double p0_4 = double.parse(
                isikemiskinan[index = 3].p0_n4,
              );
              double p0_5 = double.parse(
                isikemiskinan[index = 4].p0_n4,
              );
              double p0_6 = double.parse(
                isikemiskinan[index = 5].p0_n4,
              );
              double p0_7 = double.parse(
                isikemiskinan[index = 6].p0_n4,
              );
              double p0_8 = double.parse(
                isikemiskinan[index = 7].p0_n4,
              );
              double p0_9 = double.parse(
                isikemiskinan[index = 8].p0_n4,
              );
              double p0_10 = double.parse(
                isikemiskinan[index = 9].p0_n4,
              );
              double p0_11 = double.parse(
                isikemiskinan[index = 10].p0_n4,
              );
              double p0_12 = double.parse(
                isikemiskinan[index = 11].p0_n4,
              );
              double p0_13 = double.parse(
                isikemiskinan[index = 12].p0_n4,
              );
              double p0_14 = double.parse(
                isikemiskinan[index = 13].p0_n4,
              );
              double p0_15 = double.parse(
                isikemiskinan[index = 14].p0_n4,
              );
              double p0_16 = double.parse(
                isikemiskinan[index = 15].p0_n4,
              );
              double p0_17 = double.parse(
                isikemiskinan[index = 16].p0_n4,
              );
              double p0_18 = double.parse(
                isikemiskinan[index = 17].p0_n4,
              );
              double p0_19 = double.parse(
                isikemiskinan[index = 18].p0_n4,
              );
              double p0_20 = double.parse(
                isikemiskinan[index = 19].p0_n4,
              );
              double p0_21 = double.parse(
                isikemiskinan[index = 20].p0_n4,
              );
              double p0_22 = double.parse(
                isikemiskinan[index = 21].p0_n4,
              );
              double p0_23 = double.parse(
                isikemiskinan[index = 22].p0_n4,
              );
              double p0_24 = double.parse(
                isikemiskinan[index = 23].p0_n4,
              );
              double p0_25 = double.parse(
                isikemiskinan[index = 24].p0_n4,
              );
              double p0_26 = double.parse(
                isikemiskinan[index = 25].p0_n4,
              );
              double p0_27 = double.parse(
                isikemiskinan[index = 26].p0_n4,
              );
              double p0_28 = double.parse(
                isikemiskinan[index = 27].p0_n4,
              );
              double p0_29 = double.parse(
                isikemiskinan[index = 28].p0_n4,
              );
              double p0_30 = double.parse(
                isikemiskinan[index = 29].p0_n4,
              );
              double p0_31 = double.parse(
                isikemiskinan[index = 30].p0_n4,
              );
              double p0_32 = double.parse(
                isikemiskinan[index = 31].p0_n4,
              );
              double p0_33 = double.parse(
                isikemiskinan[index = 32].p0_n4,
              );
              double p0_34 = double.parse(
                isikemiskinan[index = 33].p0_n4,
              );
              double p0_35 = double.parse(
                isikemiskinan[index = 34].p0_n4,
              );
              double p0_36 = double.parse(
                isikemiskinan[index = 35].p0_n4,
              );

              double gk1 = double.parse(
                isikemiskinan[index = 0].gk_n4,
              );
              double gk2 = double.parse(
                isikemiskinan[index = 1].gk_n4,
              );
              double gk3 = double.parse(
                isikemiskinan[index = 2].gk_n4,
              );
              double gk4 = double.parse(
                isikemiskinan[index = 3].gk_n4,
              );
              double gk5 = double.parse(
                isikemiskinan[index = 4].gk_n4,
              );
              double gk6 = double.parse(
                isikemiskinan[index = 5].gk_n4,
              );
              double gk7 = double.parse(
                isikemiskinan[index = 6].gk_n4,
              );
              double gk8 = double.parse(
                isikemiskinan[index = 7].gk_n4,
              );
              double gk9 = double.parse(
                isikemiskinan[index = 8].gk_n4,
              );
              double gk10 = double.parse(
                isikemiskinan[index = 9].gk_n4,
              );
              double gk11 = double.parse(
                isikemiskinan[index = 10].gk_n4,
              );
              double gk12 = double.parse(
                isikemiskinan[index = 11].gk_n4,
              );
              double gk13 = double.parse(
                isikemiskinan[index = 12].gk_n4,
              );
              double gk14 = double.parse(
                isikemiskinan[index = 13].gk_n4,
              );
              double gk15 = double.parse(
                isikemiskinan[index = 14].gk_n4,
              );
              double gk16 = double.parse(
                isikemiskinan[index = 15].gk_n4,
              );
              double gk17 = double.parse(
                isikemiskinan[index = 16].gk_n4,
              );
              double gk18 = double.parse(
                isikemiskinan[index = 17].gk_n4,
              );
              double gk19 = double.parse(
                isikemiskinan[index = 18].gk_n4,
              );
              double gk20 = double.parse(
                isikemiskinan[index = 19].gk_n4,
              );
              double gk21 = double.parse(
                isikemiskinan[index = 20].gk_n4,
              );
              double gk22 = double.parse(
                isikemiskinan[index = 21].gk_n4,
              );
              double gk23 = double.parse(
                isikemiskinan[index = 22].gk_n4,
              );
              double gk24 = double.parse(
                isikemiskinan[index = 23].gk_n4,
              );
              double gk25 = double.parse(
                isikemiskinan[index = 24].gk_n4,
              );
              double gk26 = double.parse(
                isikemiskinan[index = 25].gk_n4,
              );
              double gk27 = double.parse(
                isikemiskinan[index = 26].gk_n4,
              );
              double gk28 = double.parse(
                isikemiskinan[index = 27].gk_n4,
              );
              double gk29 = double.parse(
                isikemiskinan[index = 28].gk_n4,
              );
              double gk30 = double.parse(
                isikemiskinan[index = 29].gk_n4,
              );
              double gk31 = double.parse(
                isikemiskinan[index = 30].gk_n4,
              );
              double gk32 = double.parse(
                isikemiskinan[index = 31].gk_n4,
              );
              double gk33 = double.parse(
                isikemiskinan[index = 32].gk_n4,
              );
              double gk34 = double.parse(
                isikemiskinan[index = 33].gk_n4,
              );
              double gk35 = double.parse(
                isikemiskinan[index = 34].gk_n4,
              );
              double gk36 = double.parse(
                isikemiskinan[index = 35].gk_n4,
              );

              double p1_1 = double.parse(
                isikemiskinan[index = 0].p1_n4,
              );
              double p1_2 = double.parse(
                isikemiskinan[index = 1].p1_n4,
              );
              double p1_3 = double.parse(
                isikemiskinan[index = 2].p1_n4,
              );
              double p1_4 = double.parse(
                isikemiskinan[index = 3].p1_n4,
              );
              double p1_5 = double.parse(
                isikemiskinan[index = 4].p1_n4,
              );
              double p1_6 = double.parse(
                isikemiskinan[index = 5].p1_n4,
              );
              double p1_7 = double.parse(
                isikemiskinan[index = 6].p1_n4,
              );
              double p1_8 = double.parse(
                isikemiskinan[index = 7].p1_n4,
              );
              double p1_9 = double.parse(
                isikemiskinan[index = 8].p1_n4,
              );
              double p1_10 = double.parse(
                isikemiskinan[index = 9].p1_n4,
              );
              double p1_11 = double.parse(
                isikemiskinan[index = 10].p1_n4,
              );
              double p1_12 = double.parse(
                isikemiskinan[index = 11].p1_n4,
              );
              double p1_13 = double.parse(
                isikemiskinan[index = 12].p1_n4,
              );
              double p1_14 = double.parse(
                isikemiskinan[index = 13].p1_n4,
              );
              double p1_15 = double.parse(
                isikemiskinan[index = 14].p1_n4,
              );
              double p1_16 = double.parse(
                isikemiskinan[index = 15].p1_n4,
              );
              double p1_17 = double.parse(
                isikemiskinan[index = 16].p1_n4,
              );
              double p1_18 = double.parse(
                isikemiskinan[index = 17].p1_n4,
              );
              double p1_19 = double.parse(
                isikemiskinan[index = 18].p1_n4,
              );
              double p1_20 = double.parse(
                isikemiskinan[index = 19].p1_n4,
              );
              double p1_21 = double.parse(
                isikemiskinan[index = 20].p1_n4,
              );
              double p1_22 = double.parse(
                isikemiskinan[index = 21].p1_n4,
              );
              double p1_23 = double.parse(
                isikemiskinan[index = 22].p1_n4,
              );
              double p1_24 = double.parse(
                isikemiskinan[index = 23].p1_n4,
              );
              double p1_25 = double.parse(
                isikemiskinan[index = 24].p1_n4,
              );
              double p1_26 = double.parse(
                isikemiskinan[index = 25].p1_n4,
              );
              double p1_27 = double.parse(
                isikemiskinan[index = 26].p1_n4,
              );
              double p1_28 = double.parse(
                isikemiskinan[index = 27].p1_n4,
              );
              double p1_29 = double.parse(
                isikemiskinan[index = 28].p1_n4,
              );
              double p1_30 = double.parse(
                isikemiskinan[index = 29].p1_n4,
              );
              double p1_31 = double.parse(
                isikemiskinan[index = 30].p1_n4,
              );
              double p1_32 = double.parse(
                isikemiskinan[index = 31].p1_n4,
              );
              double p1_33 = double.parse(
                isikemiskinan[index = 32].p1_n4,
              );
              double p1_34 = double.parse(
                isikemiskinan[index = 33].p1_n4,
              );
              double p1_35 = double.parse(
                isikemiskinan[index = 34].p1_n4,
              );
              double p1_36 = double.parse(
                isikemiskinan[index = 35].p1_n4,
              );

              double p2_1 = double.parse(
                isikemiskinan[index = 0].p2_n4,
              );
              double p2_2 = double.parse(
                isikemiskinan[index = 1].p2_n4,
              );
              double p2_3 = double.parse(
                isikemiskinan[index = 2].p2_n4,
              );
              double p2_4 = double.parse(
                isikemiskinan[index = 3].p2_n4,
              );
              double p2_5 = double.parse(
                isikemiskinan[index = 4].p2_n4,
              );
              double p2_6 = double.parse(
                isikemiskinan[index = 5].p2_n4,
              );
              double p2_7 = double.parse(
                isikemiskinan[index = 6].p2_n4,
              );
              double p2_8 = double.parse(
                isikemiskinan[index = 7].p2_n4,
              );
              double p2_9 = double.parse(
                isikemiskinan[index = 8].p2_n4,
              );
              double p2_10 = double.parse(
                isikemiskinan[index = 9].p2_n4,
              );
              double p2_11 = double.parse(
                isikemiskinan[index = 10].p2_n4,
              );
              double p2_12 = double.parse(
                isikemiskinan[index = 11].p2_n4,
              );
              double p2_13 = double.parse(
                isikemiskinan[index = 12].p2_n4,
              );
              double p2_14 = double.parse(
                isikemiskinan[index = 13].p2_n4,
              );
              double p2_15 = double.parse(
                isikemiskinan[index = 14].p2_n4,
              );
              double p2_16 = double.parse(
                isikemiskinan[index = 15].p2_n4,
              );
              double p2_17 = double.parse(
                isikemiskinan[index = 16].p2_n4,
              );
              double p2_18 = double.parse(
                isikemiskinan[index = 17].p2_n4,
              );
              double p2_19 = double.parse(
                isikemiskinan[index = 18].p2_n4,
              );
              double p2_20 = double.parse(
                isikemiskinan[index = 19].p2_n4,
              );
              double p2_21 = double.parse(
                isikemiskinan[index = 20].p2_n4,
              );
              double p2_22 = double.parse(
                isikemiskinan[index = 21].p2_n4,
              );
              double p2_23 = double.parse(
                isikemiskinan[index = 22].p2_n4,
              );
              double p2_24 = double.parse(
                isikemiskinan[index = 23].p2_n4,
              );
              double p2_25 = double.parse(
                isikemiskinan[index = 24].p2_n4,
              );
              double p2_26 = double.parse(
                isikemiskinan[index = 25].p2_n4,
              );
              double p2_27 = double.parse(
                isikemiskinan[index = 26].p2_n4,
              );
              double p2_28 = double.parse(
                isikemiskinan[index = 27].p2_n4,
              );
              double p2_29 = double.parse(
                isikemiskinan[index = 28].p2_n4,
              );
              double p2_30 = double.parse(
                isikemiskinan[index = 29].p2_n4,
              );
              double p2_31 = double.parse(
                isikemiskinan[index = 30].p2_n4,
              );
              double p2_32 = double.parse(
                isikemiskinan[index = 31].p2_n4,
              );
              double p2_33 = double.parse(
                isikemiskinan[index = 32].p2_n4,
              );
              double p2_34 = double.parse(
                isikemiskinan[index = 33].p2_n4,
              );
              double p2_35 = double.parse(
                isikemiskinan[index = 34].p2_n4,
              );
              double p2_36 = double.parse(
                isikemiskinan[index = 35].p2_n4,
              );

              return Scaffold(
                  body: Column(
                children: <Widget>[
                  //Flexible(
                  //fit: FlexFit.tight,
                  //flex: 5,
                  Container(
                    width: screenWidth * 1.0,
                    height: screenHeight * 0.08,
                    color: Colors.green,
                    child: Row(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(
                                right: 3, top: 10, bottom: 10),
                            child: const Text(
                              "Kabupaten/Kota",
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
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: const Text(
                              "Pddk Miskin",
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
                            padding: const EdgeInsets.only(
                                left: 0, top: 10, bottom: 10),
                            child: const Text(
                              "P0",
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
                            padding: const EdgeInsets.only(
                                left: 5, top: 10, bottom: 10),
                            child: const Text(
                              "GK",
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
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, bottom: 10),
                            child: const Text(
                              "P1",
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
                            padding: const EdgeInsets.only(
                                left: 5, top: 10, bottom: 10),
                            child: const Text(
                              "P2",
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk1, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_1, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk1, 3),
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
                                      Format.convertTo(p1_1, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_1, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk2, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_2, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk2, 3),
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
                                      Format.convertTo(p1_2, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_2, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk3, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_3, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk3, 3),
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
                                      Format.convertTo(p1_3, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_3, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk4, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_4, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk4, 3),
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
                                      Format.convertTo(p1_4, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_4, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk5, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_5, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk5, 3),
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
                                      Format.convertTo(p1_5, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_5, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk6, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_6, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk6, 3),
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
                                      Format.convertTo(p1_6, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_6, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk7, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_7, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk7, 3),
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
                                      Format.convertTo(p1_7, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_7, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk8, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_8, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk8, 3),
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
                                      Format.convertTo(p1_8, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_8, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk9, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_9, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk9, 3),
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
                                      Format.convertTo(p1_9, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_9, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk10, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_10, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk10, 3),
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
                                      Format.convertTo(p1_10, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_10, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk11, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_11, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk11, 3),
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
                                      Format.convertTo(p1_11, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_11, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk12, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_12, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk12, 3),
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
                                      Format.convertTo(p1_12, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_12, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk13, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_13, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk13, 3),
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
                                      Format.convertTo(p1_13, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_13, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk14, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_14, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk14, 3),
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
                                      Format.convertTo(p1_14, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_14, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk15, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_15, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk15, 3),
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
                                      Format.convertTo(p1_15, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_15, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk16, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_16, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk16, 3),
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
                                      Format.convertTo(p1_16, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_16, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk17, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_17, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk17, 3),
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
                                      Format.convertTo(p1_17, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_17, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk18, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_18, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk18, 3),
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
                                      Format.convertTo(p1_18, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_18, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk19, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_19, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk19, 3),
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
                                      Format.convertTo(p1_19, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_19, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk20, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_20, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk20, 3),
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
                                      Format.convertTo(p1_20, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_20, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk21, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_21, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk21, 3),
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
                                      Format.convertTo(p1_21, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_21, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk22, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_22, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk22, 3),
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
                                      Format.convertTo(p1_22, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_22, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk23, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_23, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk23, 3),
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
                                      Format.convertTo(p1_23, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_23, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk24, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_24, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk24, 3),
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
                                      Format.convertTo(p1_24, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_24, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk25, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_25, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk25, 3),
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
                                      Format.convertTo(p1_25, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_25, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk26, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_26, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk26, 3),
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
                                      Format.convertTo(p1_26, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_26, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk27, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_27, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk27, 3),
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
                                      Format.convertTo(p1_27, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_27, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk28, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_28, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk28, 3),
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
                                      Format.convertTo(p1_28, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_28, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk29, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_29, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk29, 3),
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
                                      Format.convertTo(p1_29, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_29, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk30, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_30, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk30, 3),
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
                                      Format.convertTo(p1_30, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_30, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk31, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_31, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk31, 3),
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
                                      Format.convertTo(p1_31, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_31, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk32, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_32, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk32, 3),
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
                                      Format.convertTo(p1_32, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_32, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk33, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_33, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk33, 3),
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
                                      Format.convertTo(p1_33, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_33, 2),
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
                            height: screenHeight * 0.049,
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 0, right: 0, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk34, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_34, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk34, 3),
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
                                      Format.convertTo(p1_34, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_34, 2),
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
                                        left: 0, right: 2, top: 1, bottom: 1),
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
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(pmk35, 2),
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
                                        right: 12, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p0_35, 2),
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
                                        right: 0, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(gk35, 3),
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
                                      Format.convertTo(p1_35, 2),
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
                                        right: 10, top: 1, bottom: 1),
                                    child: Text(
                                      Format.convertTo(p2_35, 2),
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
                                        left: 0, right: 3, top: 3, bottom: 3),
                                    child: Text(
                                      kabkota36,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(pmk36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
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
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(p0_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
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
                                        right: 0, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(gk36, 3),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
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
                                      Format.convertTo(p1_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
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
                                        right: 10, top: 3, bottom: 3),
                                    child: Text(
                                      Format.convertTo(p2_36, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
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
                              "Penduduk Miskin dalam satuan ribuan jiwa.",
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
                              "GK (Garis Kemiskinan) dalam satuan ribuan rupiah.",
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
                              "P0 : Persentase penduduk yang berada di bawah Garis Kemiskinan.",
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
                              "P1 : Indeks Kedalaman Kemiskinan.",
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
                              "P2 : Indeks Keparahan Kemiskinan.",
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
