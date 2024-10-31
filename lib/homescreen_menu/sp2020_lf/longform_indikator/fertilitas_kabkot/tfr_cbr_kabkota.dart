import 'package:bps_cilacap/restAPI/repository_longform_fertil_mortal.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_kabkot/body_grafik_tfr_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_kabkot/body_grafik_cbr_kabkot.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class TfrcbrKabkot extends StatefulWidget {
  const TfrcbrKabkot({Key? key}) : super(key: key);

  @override
  State<TfrcbrKabkot> createState() => _TfrcbrKabkotState();
}

RepositoryLongformFertilMortal repositorylongform =
    RepositoryLongformFertilMortal();

class _TfrcbrKabkotState extends State<TfrcbrKabkot> {
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
          'TFR dan CBR',
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

                  double tfr_1 = double.parse(isilongform[index = 0].tfr);
                  double tfr_2 = double.parse(isilongform[index = 1].tfr);
                  double tfr_3 = double.parse(isilongform[index = 2].tfr);
                  double tfr_4 = double.parse(isilongform[index = 3].tfr);
                  double tfr_5 = double.parse(isilongform[index = 4].tfr);
                  double tfr_6 = double.parse(isilongform[index = 5].tfr);
                  double tfr_7 = double.parse(isilongform[index = 6].tfr);
                  double tfr_8 = double.parse(isilongform[index = 7].tfr);
                  double tfr_9 = double.parse(isilongform[index = 8].tfr);
                  double tfr_10 = double.parse(isilongform[index = 9].tfr);
                  double tfr_11 = double.parse(isilongform[index = 10].tfr);
                  double tfr_12 = double.parse(isilongform[index = 11].tfr);
                  double tfr_13 = double.parse(isilongform[index = 12].tfr);
                  double tfr_14 = double.parse(isilongform[index = 13].tfr);
                  double tfr_15 = double.parse(isilongform[index = 14].tfr);
                  double tfr_16 = double.parse(isilongform[index = 15].tfr);
                  double tfr_17 = double.parse(isilongform[index = 16].tfr);
                  double tfr_18 = double.parse(isilongform[index = 17].tfr);
                  double tfr_19 = double.parse(isilongform[index = 17].tfr);
                  double tfr_20 = double.parse(isilongform[index = 18].tfr);
                  double tfr_21 = double.parse(isilongform[index = 19].tfr);
                  double tfr_22 = double.parse(isilongform[index = 20].tfr);
                  double tfr_23 = double.parse(isilongform[index = 21].tfr);
                  double tfr_24 = double.parse(isilongform[index = 23].tfr);
                  double tfr_25 = double.parse(isilongform[index = 24].tfr);
                  double tfr_26 = double.parse(isilongform[index = 25].tfr);
                  double tfr_27 = double.parse(isilongform[index = 26].tfr);
                  double tfr_28 = double.parse(isilongform[index = 27].tfr);
                  double tfr_29 = double.parse(isilongform[index = 28].tfr);
                  double tfr_30 = double.parse(isilongform[index = 29].tfr);
                  double tfr_31 = double.parse(isilongform[index = 30].tfr);
                  double tfr_32 = double.parse(isilongform[index = 31].tfr);
                  double tfr_33 = double.parse(isilongform[index = 32].tfr);
                  double tfr_34 = double.parse(isilongform[index = 33].tfr);
                  double tfr_35 = double.parse(isilongform[index = 34].tfr);
                  double tfr_36 = double.parse(isilongform[index = 35].tfr);

                  double cbr_1 = double.parse(isilongform[index = 0].cbr);
                  double cbr_2 = double.parse(isilongform[index = 1].cbr);
                  double cbr_3 = double.parse(isilongform[index = 2].cbr);
                  double cbr_4 = double.parse(isilongform[index = 3].cbr);
                  double cbr_5 = double.parse(isilongform[index = 4].cbr);
                  double cbr_6 = double.parse(isilongform[index = 5].cbr);
                  double cbr_7 = double.parse(isilongform[index = 6].cbr);
                  double cbr_8 = double.parse(isilongform[index = 7].cbr);
                  double cbr_9 = double.parse(isilongform[index = 8].cbr);
                  double cbr_10 = double.parse(isilongform[index = 9].cbr);
                  double cbr_11 = double.parse(isilongform[index = 10].cbr);
                  double cbr_12 = double.parse(isilongform[index = 11].cbr);
                  double cbr_13 = double.parse(isilongform[index = 12].cbr);
                  double cbr_14 = double.parse(isilongform[index = 13].cbr);
                  double cbr_15 = double.parse(isilongform[index = 14].cbr);
                  double cbr_16 = double.parse(isilongform[index = 15].cbr);
                  double cbr_17 = double.parse(isilongform[index = 16].cbr);
                  double cbr_18 = double.parse(isilongform[index = 17].cbr);
                  double cbr_19 = double.parse(isilongform[index = 18].cbr);
                  double cbr_20 = double.parse(isilongform[index = 19].cbr);
                  double cbr_21 = double.parse(isilongform[index = 20].cbr);
                  double cbr_22 = double.parse(isilongform[index = 21].cbr);
                  double cbr_23 = double.parse(isilongform[index = 22].cbr);
                  double cbr_24 = double.parse(isilongform[index = 23].cbr);
                  double cbr_25 = double.parse(isilongform[index = 24].cbr);
                  double cbr_26 = double.parse(isilongform[index = 25].cbr);
                  double cbr_27 = double.parse(isilongform[index = 26].cbr);
                  double cbr_28 = double.parse(isilongform[index = 27].cbr);
                  double cbr_29 = double.parse(isilongform[index = 28].cbr);
                  double cbr_30 = double.parse(isilongform[index = 29].cbr);
                  double cbr_31 = double.parse(isilongform[index = 30].cbr);
                  double cbr_32 = double.parse(isilongform[index = 31].cbr);
                  double cbr_33 = double.parse(isilongform[index = 32].cbr);
                  double cbr_34 = double.parse(isilongform[index = 33].cbr);
                  double cbr_35 = double.parse(isilongform[index = 34].cbr);
                  double cbr_36 = double.parse(isilongform[index = 35].cbr);

                  return Scaffold(
                      body: Column(
                    children: <Widget>[
                      //Flexible(
                      //fit: FlexFit.tight,
                      //flex: 5,
                      Container(
                          width: screenWidth * 1.0,
                          height: screenHeight * 0.11,
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 0,
                            top: 5,
                            bottom: 5,
                          ),
                          child: const Text(
                            "Total Fertility Rate (TFR) dan Crude Birth Rate (CBR) Kabupaten/Kota Di Jawa Tengah, Hasil Pendataan Long Form SP2020 ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      Container(
                        width: screenWidth * 1.0,
                        height: screenHeight * 0.06,
                        color: Colors.blue,
                        child: Row(
                          children: [
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    right: 3, top: 10, bottom: 0),
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
                            Flexible(
                              fit: FlexFit.tight,
                              flex: 3,
                              child: Container(
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 2),
                                child: const Text(
                                  "TFR",
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
                                height: screenHeight * 0.06,
                                color: Colors.blue,
                                padding: const EdgeInsets.only(
                                    left: 0, top: 10, bottom: 2),
                                child: const Text(
                                  "CBR",
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
                                      flex: 3,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_1, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_1, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_2, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_2, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_3, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_3, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_4, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_4, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_5, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_5, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_6, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_6, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_7, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_7, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_8, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_8, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_9, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_9, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_10, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_10, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_11, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_11, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_12, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_12, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_13, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_13, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_14, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_14, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_15, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_15, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_16, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_16, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_17, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_17, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 6,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_18, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_18, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_19, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_19, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 6,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_20, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_20, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_21, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_21, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_22, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_22, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_23, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_23, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_24, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_24, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_25, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_25, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_26, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_26, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_27, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_27, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_28, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_28, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_29, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_29, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_30, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_30, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_31, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_31, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_32, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_32, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_33, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_33, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_34, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_34, 2),
                                          textAlign: TextAlign.center,
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
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
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(tfr_35, 2),
                                          textAlign: TextAlign.center,
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
                                            right: 0, top: 1, bottom: 1),
                                        child: Text(
                                          Format.convertTo(cbr_35, 2),
                                          textAlign: TextAlign.center,
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
                                color: Colors.blue,
                                child: Row(
                                  children: [
                                    Flexible(
                                      fit: FlexFit.tight,
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 0,
                                            top: 3,
                                            bottom: 2),
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
                                            right: 0, top: 3, bottom: 2),
                                        child: Text(
                                          Format.convertTo(tfr_36, 2),
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
                                      flex: 3,
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                            right: 0, top: 3, bottom: 2),
                                        child: Text(
                                          Format.convertTo(cbr_36, 2),
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
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 4,
                                  bottom: 5,
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
                                      "Angka Kelahiran Total / Total Fertility Rate (TFR) :",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 10),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                        "Rata-rata jumlah anak yang dilahirkan hidup oleh seorang perempuan selama masa usia suburnya (15-49 tahun).",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal),
                                        textAlign: TextAlign.justify),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    alignment: Alignment.centerLeft,
                                    child: const Text(
                                      "Angka Kelahiran Kasar / Crude Birth Rate (CBR) :",
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
                                        "Banyaknya kelahiran hidup per 1000 penduduk pada pertengahan tahun.",
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
                        child: const BodyGrafikTfrKabKot(),
                        direction: AxisDirection.left));
              },
              label: 'Total Fertility Rate (TFR)',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
            ),
            SpeedDialChild(
              backgroundColor: Colors.blueAccent,
              child: const Icon(Icons.bar_chart),
              onTap: () {
                Navigator.push(
                    context,
                    CustomPageRoute(
                        child: const BodyGrafikCbrKabKot(),
                        direction: AxisDirection.left));
              },
              label: 'Crude Birth Rate (CBR)',
              labelBackgroundColor: Colors.black,
              labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
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
