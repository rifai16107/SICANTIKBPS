// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/restAPI/repository_penduduk.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi/body_grafik_pddk_kelum.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class JumlahPendudukUmurE extends StatefulWidget {
  const JumlahPendudukUmurE({Key? key}) : super(key: key);

  @override
  State<JumlahPendudukUmurE> createState() => _JumlahPendudukUmurEState();
}

RepositoryJumlahPenduduk repositoryJumlahPenduduk = RepositoryJumlahPenduduk();

class _JumlahPendudukUmurEState extends State<JumlahPendudukUmurE> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryJumlahPenduduk.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipendudukumur = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                int lk1 = int.parse(isipendudukumur[index = 0].a);
                int lk2 = int.parse(isipendudukumur[index = 0].b);
                int lk3 = int.parse(isipendudukumur[index = 0].c);
                int lk4 = int.parse(isipendudukumur[index = 0].d);
                int lk5 = int.parse(isipendudukumur[index = 0].e);
                int lk6 = int.parse(isipendudukumur[index = 0].f);
                int lk7 = int.parse(isipendudukumur[index = 0].g);
                int lk8 = int.parse(isipendudukumur[index = 0].h);
                int lk9 = int.parse(isipendudukumur[index = 0].i);
                int lk10 = int.parse(isipendudukumur[index = 0].j);
                int lk11 = int.parse(isipendudukumur[index = 0].k);
                int lk12 = int.parse(isipendudukumur[index = 0].l);
                int lk13 = int.parse(isipendudukumur[index = 0].m);
                int lk14 = int.parse(isipendudukumur[index = 0].n);
                int lk15 = int.parse(isipendudukumur[index = 0].o);
                int lk16 = int.parse(isipendudukumur[index = 0].p);
                int lkTotal = int.parse(isipendudukumur[index = 0].total);

                int pr1 = int.parse(isipendudukumur[index = 1].a);
                int pr2 = int.parse(isipendudukumur[index = 1].b);
                int pr3 = int.parse(isipendudukumur[index = 1].c);
                int pr4 = int.parse(isipendudukumur[index = 1].d);
                int pr5 = int.parse(isipendudukumur[index = 1].e);
                int pr6 = int.parse(isipendudukumur[index = 1].f);
                int pr7 = int.parse(isipendudukumur[index = 1].g);
                int pr8 = int.parse(isipendudukumur[index = 1].h);
                int pr9 = int.parse(isipendudukumur[index = 1].i);
                int pr10 = int.parse(isipendudukumur[index = 1].j);
                int pr11 = int.parse(isipendudukumur[index = 1].k);
                int pr12 = int.parse(isipendudukumur[index = 1].l);
                int pr13 = int.parse(isipendudukumur[index = 1].m);
                int pr14 = int.parse(isipendudukumur[index = 1].n);
                int pr15 = int.parse(isipendudukumur[index = 1].o);
                int pr16 = int.parse(isipendudukumur[index = 1].p);
                int prTotal = int.parse(isipendudukumur[index = 1].total);

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
                                  flex: 3,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.only(
                                        left: 2, right: 25),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Kelompok Umur",
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
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Laki-Laki",
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
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "Perempuan",
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
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 10),
                                    color: Colors.green,
                                    child: const Center(
                                      child: Text(
                                        "      Lk + Pr",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // 0 - 4
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Container(
                                    margin:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: const Center(
                                      child: Text(
                                        "0 - 4",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Text(
                                    Format.convertTo(lk1, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Text(
                                    Format.convertTo(pr1, 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Text(
                                    Format.convertTo((lk1 + pr1), 0),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // 5 - 9
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "5 - 9",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr2, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk2 + pr2), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 10 - 14
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "10 - 14",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr3, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk3 + pr3), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 15 - 19
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "15 - 19",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr4, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk4 + pr4), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 20 - 24
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "20 - 24",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr5, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk5 + pr5), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 25 - 29
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "25 - 29",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr6, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk6 + pr6), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 30 - 34
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "30 - 34",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr7, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk7 + pr7), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 35 - 39
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "35 - 39",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr8, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk8 + pr8), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 40 - 44
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "40 - 44",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr9, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk9 + pr9), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 45 - 49
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "45 - 49",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr10, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk10 + pr10), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 50 - 54
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "50 - 54",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr11, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk11 + pr11), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 55 - 59
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "55 - 59",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr12, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk12 + pr12), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 60 - 64
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "60 - 64",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr13, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk13 + pr13), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 65 - 69
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "65 - 69",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr14, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk14 + pr14), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 70 - 74
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "70 - 74",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr15, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk15 + pr15), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // 75 +
                            Container(
                              color: Colors.grey.shade200,
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: const Center(
                                        child: Text(
                                          "75 +",
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(lk16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo(pr16, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 1,
                                    child: Text(
                                      Format.convertTo((lk16 + pr16), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Total
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: const Center(
                                      child: Text(
                                        "Cilacap",
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
                                  flex: 1,
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      Format.convertTo(lkTotal, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      Format.convertTo(prTotal, 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 1,
                                  child: Container(
                                    color: Colors.green,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Text(
                                      Format.convertTo((lkTotal + prTotal), 0),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 4,
                              ),
                              child: const Text(
                                " Sumber Data : Hasil Proyeksi Penduduk dan Sensus Penduduk",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 50,
                                left: 4,
                              ),
                              child: const Text(
                                "  ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
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
                  child: const BodyGrafikPddkKelum(),
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
