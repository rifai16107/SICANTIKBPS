import 'package:bps_cilacap/restAPI/repository_longform_fertil_mortal.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/mortalitas_kabkot/body_grafik_imr_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/mortalitas_kabkot/body_grafik_cmr_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/mortalitas_kabkot/body_grafik_u5mr_kabkot.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class MortalitasKabkot extends StatefulWidget {
  const MortalitasKabkot({Key? key}) : super(key: key);

  @override
  State<MortalitasKabkot> createState() => _MortalitasKabkotState();
}

RepositoryLongformFertilMortal repositorylongform =
    RepositoryLongformFertilMortal();

class _MortalitasKabkotState extends State<MortalitasKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Indikartor Mortalitas Kabupaten/Kota',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
          future: repositorylongform.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isilongform = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String kabkota1 = isilongform[index = 0].wilayah;
                  String kabkota2 = isilongform[index = 1].wilayah;
                  String kabkota3 = isilongform[index = 2].wilayah;
                  String kabkota4 = isilongform[index = 3].wilayah;
                  String kabkota5 = isilongform[index = 4].wilayah;
                  String kabkota6 = isilongform[index = 5].wilayah;
                  String kabkota7 = isilongform[index = 6].wilayah;
                  String kabkota8 = isilongform[index = 7].wilayah;
                  String kabkota9 = isilongform[index = 8].wilayah;
                  String kabkota10 = isilongform[index = 9].wilayah;
                  String kabkota11 = isilongform[index = 10].wilayah;
                  String kabkota12 = isilongform[index = 11].wilayah;
                  String kabkota13 = isilongform[index = 12].wilayah;
                  String kabkota14 = isilongform[index = 13].wilayah;
                  String kabkota15 = isilongform[index = 14].wilayah;
                  String kabkota16 = isilongform[index = 15].wilayah;
                  String kabkota17 = isilongform[index = 16].wilayah;
                  String kabkota18 = isilongform[index = 17].wilayah;
                  String kabkota19 = isilongform[index = 18].wilayah;
                  String kabkota20 = isilongform[index = 19].wilayah;
                  String kabkota21 = isilongform[index = 20].wilayah;
                  String kabkota22 = isilongform[index = 21].wilayah;
                  String kabkota23 = isilongform[index = 22].wilayah;
                  String kabkota24 = isilongform[index = 23].wilayah;
                  String kabkota25 = isilongform[index = 24].wilayah;
                  String kabkota26 = isilongform[index = 25].wilayah;
                  String kabkota27 = isilongform[index = 26].wilayah;
                  String kabkota28 = isilongform[index = 27].wilayah;
                  String kabkota29 = isilongform[index = 28].wilayah;
                  String kabkota30 = isilongform[index = 29].wilayah;
                  String kabkota31 = isilongform[index = 30].wilayah;
                  String kabkota32 = isilongform[index = 31].wilayah;
                  String kabkota33 = isilongform[index = 32].wilayah;
                  String kabkota34 = isilongform[index = 33].wilayah;
                  String kabkota35 = isilongform[index = 34].wilayah;
                  String kabkota36 = isilongform[index = 35].wilayah;

                  double imr_1 = double.parse(isilongform[index = 0].imr);
                  double imr_2 = double.parse(isilongform[index = 1].imr);
                  double imr_3 = double.parse(isilongform[index = 2].imr);
                  double imr_4 = double.parse(isilongform[index = 3].imr);
                  double imr_5 = double.parse(isilongform[index = 4].imr);
                  double imr_6 = double.parse(isilongform[index = 5].imr);
                  double imr_7 = double.parse(isilongform[index = 6].imr);
                  double imr_8 = double.parse(isilongform[index = 7].imr);
                  double imr_9 = double.parse(isilongform[index = 8].imr);
                  double imr_10 = double.parse(isilongform[index = 9].imr);
                  double imr_11 = double.parse(isilongform[index = 10].imr);
                  double imr_12 = double.parse(isilongform[index = 11].imr);
                  double imr_13 = double.parse(isilongform[index = 12].imr);
                  double imr_14 = double.parse(isilongform[index = 13].imr);
                  double imr_15 = double.parse(isilongform[index = 14].imr);
                  double imr_16 = double.parse(isilongform[index = 15].imr);
                  double imr_17 = double.parse(isilongform[index = 16].imr);
                  double imr_18 = double.parse(isilongform[index = 17].imr);
                  double imr_19 = double.parse(isilongform[index = 17].imr);
                  double imr_20 = double.parse(isilongform[index = 18].imr);
                  double imr_21 = double.parse(isilongform[index = 19].imr);
                  double imr_22 = double.parse(isilongform[index = 20].imr);
                  double imr_23 = double.parse(isilongform[index = 21].imr);
                  double imr_24 = double.parse(isilongform[index = 23].imr);
                  double imr_25 = double.parse(isilongform[index = 24].imr);
                  double imr_26 = double.parse(isilongform[index = 25].imr);
                  double imr_27 = double.parse(isilongform[index = 26].imr);
                  double imr_28 = double.parse(isilongform[index = 27].imr);
                  double imr_29 = double.parse(isilongform[index = 28].imr);
                  double imr_30 = double.parse(isilongform[index = 29].imr);
                  double imr_31 = double.parse(isilongform[index = 30].imr);
                  double imr_32 = double.parse(isilongform[index = 31].imr);
                  double imr_33 = double.parse(isilongform[index = 32].imr);
                  double imr_34 = double.parse(isilongform[index = 33].imr);
                  double imr_35 = double.parse(isilongform[index = 34].imr);
                  double imr_36 = double.parse(isilongform[index = 35].imr);

                  double cmr_1 = double.parse(isilongform[index = 0].cmr);
                  double cmr_2 = double.parse(isilongform[index = 1].cmr);
                  double cmr_3 = double.parse(isilongform[index = 2].cmr);
                  double cmr_4 = double.parse(isilongform[index = 3].cmr);
                  double cmr_5 = double.parse(isilongform[index = 4].cmr);
                  double cmr_6 = double.parse(isilongform[index = 5].cmr);
                  double cmr_7 = double.parse(isilongform[index = 6].cmr);
                  double cmr_8 = double.parse(isilongform[index = 7].cmr);
                  double cmr_9 = double.parse(isilongform[index = 8].cmr);
                  double cmr_10 = double.parse(isilongform[index = 9].cmr);
                  double cmr_11 = double.parse(isilongform[index = 10].cmr);
                  double cmr_12 = double.parse(isilongform[index = 11].cmr);
                  double cmr_13 = double.parse(isilongform[index = 12].cmr);
                  double cmr_14 = double.parse(isilongform[index = 13].cmr);
                  double cmr_15 = double.parse(isilongform[index = 14].cmr);
                  double cmr_16 = double.parse(isilongform[index = 15].cmr);
                  double cmr_17 = double.parse(isilongform[index = 16].cmr);
                  double cmr_18 = double.parse(isilongform[index = 17].cmr);
                  double cmr_19 = double.parse(isilongform[index = 18].cmr);
                  double cmr_20 = double.parse(isilongform[index = 19].cmr);
                  double cmr_21 = double.parse(isilongform[index = 20].cmr);
                  double cmr_22 = double.parse(isilongform[index = 21].cmr);
                  double cmr_23 = double.parse(isilongform[index = 22].cmr);
                  double cmr_24 = double.parse(isilongform[index = 23].cmr);
                  double cmr_25 = double.parse(isilongform[index = 24].cmr);
                  double cmr_26 = double.parse(isilongform[index = 25].cmr);
                  double cmr_27 = double.parse(isilongform[index = 26].cmr);
                  double cmr_28 = double.parse(isilongform[index = 27].cmr);
                  double cmr_29 = double.parse(isilongform[index = 28].cmr);
                  double cmr_30 = double.parse(isilongform[index = 29].cmr);
                  double cmr_31 = double.parse(isilongform[index = 30].cmr);
                  double cmr_32 = double.parse(isilongform[index = 31].cmr);
                  double cmr_33 = double.parse(isilongform[index = 32].cmr);
                  double cmr_34 = double.parse(isilongform[index = 33].cmr);
                  double cmr_35 = double.parse(isilongform[index = 34].cmr);
                  double cmr_36 = double.parse(isilongform[index = 35].cmr);

                  double u5mr_1 = double.parse(isilongform[index = 0].u5mr);
                  double u5mr_2 = double.parse(isilongform[index = 1].u5mr);
                  double u5mr_3 = double.parse(isilongform[index = 2].u5mr);
                  double u5mr_4 = double.parse(isilongform[index = 3].u5mr);
                  double u5mr_5 = double.parse(isilongform[index = 4].u5mr);
                  double u5mr_6 = double.parse(isilongform[index = 5].u5mr);
                  double u5mr_7 = double.parse(isilongform[index = 6].u5mr);
                  double u5mr_8 = double.parse(isilongform[index = 7].u5mr);
                  double u5mr_9 = double.parse(isilongform[index = 8].u5mr);
                  double u5mr_10 = double.parse(isilongform[index = 9].u5mr);
                  double u5mr_11 = double.parse(isilongform[index = 10].u5mr);
                  double u5mr_12 = double.parse(isilongform[index = 11].u5mr);
                  double u5mr_13 = double.parse(isilongform[index = 12].u5mr);
                  double u5mr_14 = double.parse(isilongform[index = 13].u5mr);
                  double u5mr_15 = double.parse(isilongform[index = 14].u5mr);
                  double u5mr_16 = double.parse(isilongform[index = 15].u5mr);
                  double u5mr_17 = double.parse(isilongform[index = 16].u5mr);
                  double u5mr_18 = double.parse(isilongform[index = 17].u5mr);
                  double u5mr_19 = double.parse(isilongform[index = 18].u5mr);
                  double u5mr_20 = double.parse(isilongform[index = 19].u5mr);
                  double u5mr_21 = double.parse(isilongform[index = 20].u5mr);
                  double u5mr_22 = double.parse(isilongform[index = 21].u5mr);
                  double u5mr_23 = double.parse(isilongform[index = 22].u5mr);
                  double u5mr_24 = double.parse(isilongform[index = 23].u5mr);
                  double u5mr_25 = double.parse(isilongform[index = 24].u5mr);
                  double u5mr_26 = double.parse(isilongform[index = 25].u5mr);
                  double u5mr_27 = double.parse(isilongform[index = 26].u5mr);
                  double u5mr_28 = double.parse(isilongform[index = 27].u5mr);
                  double u5mr_29 = double.parse(isilongform[index = 28].u5mr);
                  double u5mr_30 = double.parse(isilongform[index = 29].u5mr);
                  double u5mr_31 = double.parse(isilongform[index = 30].u5mr);
                  double u5mr_32 = double.parse(isilongform[index = 31].u5mr);
                  double u5mr_33 = double.parse(isilongform[index = 32].u5mr);
                  double u5mr_34 = double.parse(isilongform[index = 33].u5mr);
                  double u5mr_35 = double.parse(isilongform[index = 34].u5mr);
                  double u5mr_36 = double.parse(isilongform[index = 35].u5mr);

                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: screenHeight * 0.1,
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          child: const Text(
                            "IMR, CMR dan U5MR Kabupaten/Kota Di Jawa Tengah, Hasil Pendataan Long Form SP2020 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.06,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenWidth * 0.38,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 10, top: 10, bottom: 10),
                                child: const Text(
                                  "Kabupaten/Kota",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 10),
                                child: const Text(
                                  "IMR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 10),
                                child: const Text(
                                  "CMR",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.2,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 10),
                                child: const Text(
                                  "U5MR",
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
                              // 1 Cilacap
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota1,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_1, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_1, 2),
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

                              //2 Banyumas
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota2,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_2, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_2, 2),
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

                              //3 Purbalingga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota3,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_3, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_3, 2),
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

                              //4 Banjarnegara

                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota4,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_4, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_4, 2),
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

                              //5 Kebumen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota5,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_5, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_5, 2),
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

                              //6 Purworejo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota6,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_6, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_6, 2),
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

                              // 7 Wonosobo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota7,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_7, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_7, 2),
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

                              //8 Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota8,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_8, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_8, 2),
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

                              //9 Boyolali
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota9,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_9, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_9, 2),
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

                              //10 Klaten
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota10,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_10, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_10, 2),
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

                              //11 Sukoharjo
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota11,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_11, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_11, 2),
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

                              //12 Wonogiri
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota12,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_12, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_12, 2),
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

                              //13 Karanganyar
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota13,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_13, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_13, 2),
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

                              //14 Sragen
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota14,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_14, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_14, 2),
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

                              //15 Grobogan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota15,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_15, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_15, 2),
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

                              //16 Blora
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota16,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_16, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_16, 2),
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

                              //17 Rembang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota17,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_17, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_17, 2),
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

                              //18 Pati
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota18,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_18, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_18, 2),
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

                              //19 Kudus
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota19,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_19, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_19, 2),
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

                              //20 Jepara
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota20,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_20, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_20, 2),
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

                              //21 Demak
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota21,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_21, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_21, 2),
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
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota22,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_22, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_22, 2),
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

                              //23 Temanggung
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota23,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_23, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_23, 2),
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

                              //24 Kendal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota24,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_24, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_24, 2),
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

                              //25 Batang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota25,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_25, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_25, 2),
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

                              //26 Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota26,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_26, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_26, 2),
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

                              //27 Pemalang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota27,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_27, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_27, 2),
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

                              //28 Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota28,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_28, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_28, 2),
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

                              //29 Brebes
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota29,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_29, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_29, 2),
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

                              // 30 Kota Magelang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota30,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_30, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_30, 2),
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

                              //31 Kota Surakarta
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota31,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_31, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_31, 2),
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

                              //32 Kota Salatiga
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota32,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_32, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_32, 2),
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

                              //33 Kota Semarang
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota33,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_33, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_33, 2),
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

                              //34 Kota Pekalongan
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota34,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_34, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_34, 2),
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

                              //35 Kota Tegal
                              Container(
                                width: screenWidth * 1.0,
                                height: screenHeight * 0.032,
                                color: Colors.transparent,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota35,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_35, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_35, 2),
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
                                height: screenHeight * 0.045,
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.38,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 3,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          kabkota36,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(imr_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 20, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cmr_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.2,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 1,
                                            right: 20,
                                            top: 1,
                                            bottom: 1),
                                        child: Text(
                                          Format.convertTo(u5mr_36, 2),
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
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
                                  bottom: 4,
                                ),
                                child: const Text(
                                  " Sumber Data : Pendataan Long Form SP 2020 (dilaksanakan pada tahun 2022)",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Keterangan:",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Angka Kematian Bayi (AKB) / Infant Mortality Rate (IMR) :",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        "Banyaknya kematian bayi usia di bawah satu tahun, per 1000 kelahiran hidup pada satu tahun tertentu.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Angka Kematian Balita (AKBa) / Under-Five Mortality Rate (U5MR) :",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        "Jumlah penduduk umur 0-4 tahun (balita) yang meninggal sebelum mencapai umur tepat 5 tahun pada tahun tertentu per 1000 kelahiran hidup.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Angka Kematian Anak / Child Mortality Rate (CMR) :",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, bottom: 80),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        "Jumlah kematian penduduk umur 1-4 tahun pada tahun tertentu per 1.000 kelahiran hidup.",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify),
                                  ),
                                ],
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
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: SpeedDial(
          icon: Icons.bar_chart_outlined,
          visible: true,
          //mini:true,
          //animatedIcon:AnimatedIcons.menu_close,
          activeIcon: Icons.close,
          buttonSize: const Size(45, 45),
          curve: Curves.elasticInOut,
          direction: SpeedDialDirection.right,
          //animatedIconTheme: const IconThemeData(size: 25),
          //animatedIcon: AnimatedIcons.list_view,
          closeManually: false,
          children: [
            SpeedDialChild(
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikImrKabKot(),
                        direction: AxisDirection.left));
              },
              label: 'IMR',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 11),
            ),
            SpeedDialChild(
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikCmrKabKot(),
                        direction: AxisDirection.left));
              },
              label: 'CMR',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 11),
            ),
            SpeedDialChild(
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikU5mrKabKot(),
                        direction: AxisDirection.left));
              },
              label: 'U5MR',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ]),
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
            pageBuilder: (context, animation, secondaryAnimation) => child);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) =>
      SlideTransition(
        position: Tween<Offset>(begin: getBeginOffset(), end: Offset.zero)
            .animate(animation),
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
