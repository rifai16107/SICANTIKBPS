// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_penduduk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/body_grafik_pddk_kabkot.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class JumlahPendudukKabkotE extends StatefulWidget {
  const JumlahPendudukKabkotE({Key? key}) : super(key: key);

  @override
  State<JumlahPendudukKabkotE> createState() => _JumlahPendudukKabkotEState();
}

RepositoryJumlahPendudukKabkot jumlahPendudukKabkot =
    RepositoryJumlahPendudukKabkot();

class _JumlahPendudukKabkotEState extends State<JumlahPendudukKabkotE> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: jumlahPendudukKabkot.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipendudukkabkot = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String kab1 = " " + isipendudukkabkot[index = 0].wilayah;
                String kab2 = " " + isipendudukkabkot[index = 1].wilayah;
                String kab3 = " " + isipendudukkabkot[index = 2].wilayah;
                String kab4 = " " + isipendudukkabkot[index = 3].wilayah;
                String kab5 = " " + isipendudukkabkot[index = 4].wilayah;
                String kab6 = " " + isipendudukkabkot[index = 5].wilayah;
                String kab7 = " " + isipendudukkabkot[index = 6].wilayah;
                String kab8 = " " + isipendudukkabkot[index = 7].wilayah;
                String kab9 = " " + isipendudukkabkot[index = 8].wilayah;
                String kab10 = " " + isipendudukkabkot[index = 9].wilayah;
                String kab11 = " " + isipendudukkabkot[index = 10].wilayah;
                String kab12 = " " + isipendudukkabkot[index = 11].wilayah;
                String kab13 = " " + isipendudukkabkot[index = 12].wilayah;
                String kab14 = " " + isipendudukkabkot[index = 13].wilayah;
                String kab15 = " " + isipendudukkabkot[index = 14].wilayah;
                String kab16 = " " + isipendudukkabkot[index = 15].wilayah;
                String kab17 = " " + isipendudukkabkot[index = 16].wilayah;
                String kab18 = " " + isipendudukkabkot[index = 17].wilayah;
                String kab19 = " " + isipendudukkabkot[index = 18].wilayah;
                String kab20 = " " + isipendudukkabkot[index = 19].wilayah;
                String kab21 = " " + isipendudukkabkot[index = 20].wilayah;
                String kab22 = " " + isipendudukkabkot[index = 21].wilayah;
                String kab23 = " " + isipendudukkabkot[index = 22].wilayah;
                String kab24 = " " + isipendudukkabkot[index = 23].wilayah;
                String kab25 = " " + isipendudukkabkot[index = 24].wilayah;
                String kab26 = " " + isipendudukkabkot[index = 25].wilayah;
                String kab27 = " " + isipendudukkabkot[index = 26].wilayah;
                String kab28 = " " + isipendudukkabkot[index = 27].wilayah;
                String kab29 = " " + isipendudukkabkot[index = 28].wilayah;
                String kab30 = " " + isipendudukkabkot[index = 29].wilayah;
                String kab31 = " " + isipendudukkabkot[index = 30].wilayah;
                String kab32 = " " + isipendudukkabkot[index = 31].wilayah;
                String kab33 = " " + isipendudukkabkot[index = 32].wilayah;
                String kab34 = " " + isipendudukkabkot[index = 33].wilayah;
                String kab35 = " " + isipendudukkabkot[index = 34].wilayah;
                String prov = " " + isipendudukkabkot[index = 35].wilayah;

                int lk1 = int.parse(isipendudukkabkot[index = 0].lk5);
                int lk2 = int.parse(isipendudukkabkot[index = 1].lk5);
                int lk3 = int.parse(isipendudukkabkot[index = 2].lk5);
                int lk4 = int.parse(isipendudukkabkot[index = 3].lk5);
                int lk5 = int.parse(isipendudukkabkot[index = 4].lk5);
                int lk6 = int.parse(isipendudukkabkot[index = 5].lk5);
                int lk7 = int.parse(isipendudukkabkot[index = 6].lk5);
                int lk8 = int.parse(isipendudukkabkot[index = 7].lk5);
                int lk9 = int.parse(isipendudukkabkot[index = 8].lk5);
                int lk10 = int.parse(isipendudukkabkot[index = 9].lk5);
                int lk11 = int.parse(isipendudukkabkot[index = 10].lk5);
                int lk12 = int.parse(isipendudukkabkot[index = 11].lk5);
                int lk13 = int.parse(isipendudukkabkot[index = 12].lk5);
                int lk14 = int.parse(isipendudukkabkot[index = 13].lk5);
                int lk15 = int.parse(isipendudukkabkot[index = 14].lk5);
                int lk16 = int.parse(isipendudukkabkot[index = 15].lk5);
                int lk17 = int.parse(isipendudukkabkot[index = 16].lk5);
                int lk18 = int.parse(isipendudukkabkot[index = 17].lk5);
                int lk19 = int.parse(isipendudukkabkot[index = 18].lk5);
                int lk20 = int.parse(isipendudukkabkot[index = 19].lk5);
                int lk21 = int.parse(isipendudukkabkot[index = 20].lk5);
                int lk22 = int.parse(isipendudukkabkot[index = 21].lk5);
                int lk23 = int.parse(isipendudukkabkot[index = 22].lk5);
                int lk24 = int.parse(isipendudukkabkot[index = 23].lk5);
                int lk25 = int.parse(isipendudukkabkot[index = 24].lk5);
                int lk26 = int.parse(isipendudukkabkot[index = 25].lk5);
                int lk27 = int.parse(isipendudukkabkot[index = 26].lk5);
                int lk28 = int.parse(isipendudukkabkot[index = 27].lk5);
                int lk29 = int.parse(isipendudukkabkot[index = 28].lk5);
                int lk30 = int.parse(isipendudukkabkot[index = 29].lk5);
                int lk31 = int.parse(isipendudukkabkot[index = 30].lk5);
                int lk32 = int.parse(isipendudukkabkot[index = 31].lk5);
                int lk33 = int.parse(isipendudukkabkot[index = 32].lk5);
                int lk34 = int.parse(isipendudukkabkot[index = 33].lk5);
                int lk35 = int.parse(isipendudukkabkot[index = 34].lk5);
                int lkTotal = int.parse(isipendudukkabkot[index = 35].lk5);

                int pr1 = int.parse(isipendudukkabkot[index = 0].pr5);
                int pr2 = int.parse(isipendudukkabkot[index = 1].pr5);
                int pr3 = int.parse(isipendudukkabkot[index = 2].pr5);
                int pr4 = int.parse(isipendudukkabkot[index = 3].pr5);
                int pr5 = int.parse(isipendudukkabkot[index = 4].pr5);
                int pr6 = int.parse(isipendudukkabkot[index = 5].pr5);
                int pr7 = int.parse(isipendudukkabkot[index = 6].pr5);
                int pr8 = int.parse(isipendudukkabkot[index = 7].pr5);
                int pr9 = int.parse(isipendudukkabkot[index = 8].pr5);
                int pr10 = int.parse(isipendudukkabkot[index = 9].pr5);
                int pr11 = int.parse(isipendudukkabkot[index = 10].pr5);
                int pr12 = int.parse(isipendudukkabkot[index = 11].pr5);
                int pr13 = int.parse(isipendudukkabkot[index = 12].pr5);
                int pr14 = int.parse(isipendudukkabkot[index = 13].pr5);
                int pr15 = int.parse(isipendudukkabkot[index = 14].pr5);
                int pr16 = int.parse(isipendudukkabkot[index = 15].pr5);
                int pr17 = int.parse(isipendudukkabkot[index = 16].pr5);
                int pr18 = int.parse(isipendudukkabkot[index = 17].pr5);
                int pr19 = int.parse(isipendudukkabkot[index = 18].pr5);
                int pr20 = int.parse(isipendudukkabkot[index = 19].pr5);
                int pr21 = int.parse(isipendudukkabkot[index = 20].pr5);
                int pr22 = int.parse(isipendudukkabkot[index = 21].pr5);
                int pr23 = int.parse(isipendudukkabkot[index = 22].pr5);
                int pr24 = int.parse(isipendudukkabkot[index = 23].pr5);
                int pr25 = int.parse(isipendudukkabkot[index = 24].pr5);
                int pr26 = int.parse(isipendudukkabkot[index = 25].pr5);
                int pr27 = int.parse(isipendudukkabkot[index = 26].pr5);
                int pr28 = int.parse(isipendudukkabkot[index = 27].pr5);
                int pr29 = int.parse(isipendudukkabkot[index = 28].pr5);
                int pr30 = int.parse(isipendudukkabkot[index = 29].pr5);
                int pr31 = int.parse(isipendudukkabkot[index = 30].pr5);
                int pr32 = int.parse(isipendudukkabkot[index = 31].pr5);
                int pr33 = int.parse(isipendudukkabkot[index = 32].pr5);
                int pr34 = int.parse(isipendudukkabkot[index = 33].pr5);
                int pr35 = int.parse(isipendudukkabkot[index = 34].pr5);
                int prTotal = int.parse(isipendudukkabkot[index = 35].pr5);

                return Scaffold(
                    body: Column(
                  children: <Widget>[
                    //Flexible(
                    //fit: FlexFit.tight,
                    //flex: 5,
                    Container(
                      width: screenWidth * 1.0,
                      height: screenHeight * 0.06,
                      color: Colors.green,
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 3,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  right: 10, top: 10, bottom: 10),
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
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
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
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
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
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 2,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              child: const Text(
                                "Lk+Pr",
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab1,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk1, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr1, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk1 + pr1), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab2,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk2, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr2, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo((lk2 + pr2), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab3,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk3, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr3, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk3 + pr3), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab4,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk4, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr4, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo((lk4 + pr4), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab5,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk5, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr5, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk5 + pr5), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab6,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk6, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr6, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk6 + pr6), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab7,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk7, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr7, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk7 + pr7), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab8,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk8, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr8, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk8 + pr8), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab9,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk9, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr9, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk9 + pr9), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab10,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk10, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr10, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk10 + pr10), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab11,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk11, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr11, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk11 + pr11), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab12,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk12, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr12, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk12 + pr12), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab13,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk13, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr13, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk13 + pr13), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab14,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk14, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr14, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk14 + pr14), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab15,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk15, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr15, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk15 + pr15), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab16,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk16, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr16, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk16 + pr16), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab17,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk17, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr17, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk17 + pr17), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab18,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk18, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr18, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk18 + pr18), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab19,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk19, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr19, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk19 + pr19), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab20,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk20, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr20, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk20 + pr20), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab21,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk21, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr21, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk21 + pr21), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab22,
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
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk22, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr22, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.grey.shade200,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk22 + pr22), 0),
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
                                    flex: 3,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab23,
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
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk23, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pr23, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 5, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo((lk23 + pr23), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab24,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk24, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr24, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk24 + pr24), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab25,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk25, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr25, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk25 + pr25), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab26,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk26, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr26, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk26 + pr26), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab27,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk27, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr27, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk27 + pr27), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab28,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk28, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr28, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk28 + pr28), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab29,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk29, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr29, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk29 + pr29), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab30,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk30, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr30, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk30 + pr30), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab31,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk31, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr31, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk31 + pr31), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab32,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk32, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr32, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk32 + pr32), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab33,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk33, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr33, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk33 + pr33), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab34,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk34, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr34, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk34 + pr34), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        kab35,
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
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(lk35, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
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
                                        Format.convertTo(pr35, 0),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
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
                                        Format.convertTo((lk35 + pr35), 0),
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
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 3, bottom: 3),
                                      child: Text(
                                        prov,
                                        textAlign: TextAlign.center,
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
                                        Format.convertTo(lkTotal, 0),
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
                                        Format.convertTo(prTotal, 0),
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
                                          right: 5, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(
                                            (lkTotal + prTotal), 0),
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
                                bottom: 10,
                              ),
                              child: const Text(
                                " Sumber Data : Proyeksi Penduduk Berdasarkan Hasil SUPAS 2015",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 60,
                                left: 4,
                              ),
                              child: const Text(
                                "  ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
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
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 3));
          }
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              CustomPageRoute(
                  child: const BodyGrafikPddkKabkot(),
                  direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.bar_chart_sharp),
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
