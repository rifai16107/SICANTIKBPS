// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_pdrb_pengeldislain.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/grafik_pdrb/body_grafik_dist_pdrb_pengel.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';

class DistPdrbAdhbC extends StatefulWidget {
  const DistPdrbAdhbC({Key? key}) : super(key: key);

  @override
  State<DistPdrbAdhbC> createState() => _DistPdrbAdhbState();
}

RepositoryPdrbPengelDislain repositorypdrb = RepositoryPdrbPengelDislain();

class _DistPdrbAdhbState extends State<DistPdrbAdhbC> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorypdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                //distribusi pdrb komp pengeluaran adhb 2023 (n-1)
                double kons_ruta_n1 =
                    double.parse(isipdrb[index = 1].kons_ruta);
                double kons_lnprt_n1 =
                    double.parse(isipdrb[index = 1].kons_lnprt);
                double kons_pem_n1 = double.parse(isipdrb[index = 1].kons_pem);
                double pmtb_n1 = double.parse(isipdrb[index = 1].pmtb);
                double inventori_n1 =
                    double.parse(isipdrb[index = 1].inventori);
                double ekspor_n1 = double.parse(isipdrb[index = 1].ekspor);
                double total_n1 = double.parse(isipdrb[index = 1].total);
                String tahun_n1 = isipdrb[index = 1].tahun;

                //distribusi pdrb komp pengeluaran adhb 2024 (n)
                double kons_ruta_n0 =
                    double.parse(isipdrb[index = 0].kons_ruta);
                double kons_lnprt_n0 =
                    double.parse(isipdrb[index = 0].kons_lnprt);
                double kons_pem_n0 = double.parse(isipdrb[index = 0].kons_pem);
                double pmtb_n0 = double.parse(isipdrb[index = 0].pmtb);
                double inventori_n0 =
                    double.parse(isipdrb[index = 0].inventori);
                double ekspor_n0 = double.parse(isipdrb[index = 0].ekspor);
                double total_n0 = double.parse(isipdrb[index = 0].total);
                String tahun_n0 = isipdrb[index = 0].tahun;

                return Scaffold(
                    body: Column(
                  children: <Widget>[
                    //Flexible(
                    //fit: FlexFit.tight,
                    //flex: 5,
                    Container(
                      width: screenWidth * 1.0,
                      height: screenHeight * 0.065,
                      color: Colors.green,
                      child: Row(
                        children: [
                          Flexible(
                            fit: FlexFit.tight,
                            flex: 4,
                            child: Container(
                              padding: const EdgeInsets.only(
                                  left: 0, top: 3, bottom: 3),
                              child: const Text(
                                "Komponen Pengeluaran",
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
                              height: screenHeight * 0.065,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 2),
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  tahun_n1,
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
                                  horizontal: 2, vertical: 2),
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  tahun_n0,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
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
                            // Pengeluaran Konsumsi Ruta
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi Rumahtangga",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_ruta_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_ruta_n0, 2),
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

                            //Pengeluaran Konsumsi LNPRT
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi LNPRT",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_lnprt_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_lnprt_n0, 2),
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

                            //Konsumsi Pemerintah
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pengeluaran Konsumsi Pemerintah",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_pem_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(kons_pem_n0, 2),
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

                            //Pemebntukan PMTB
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Pembentukan Modal Tetap Bruto",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pmtb_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(pmtb_n0, 2),
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

                            //Perubahan Inventori
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.transparent,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 1),
                                      child: const Text(
                                        "Perubahan Inventori",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(inventori_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(inventori_n0, 2),
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

                            //Net Ekspor
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.07,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 2),
                                      child: const Text(
                                        "Net Eskpor",
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(ekspor_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 1, bottom: 1),
                                      child: Text(
                                        Format.convertTo(ekspor_n0, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //PDRB Pengeluaran
                            Container(
                              width: screenWidth * 1.0,
                              height: screenHeight * 0.050,
                              color: Colors.green,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 0.44 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 0, top: 3, bottom: 3),
                                      child: const Text(
                                        "PDRB Pengeluaran",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(total_n1, 2),
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.26 * screenWidth,
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          right: 15, top: 3, bottom: 3),
                                      child: Text(
                                        Format.convertTo(total_n0, 2),
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
                                " Catatan:",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        " Tahun $tahun_n1 merupakan angka sementara",
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.transparent,
                              width: screenWidth,
                              //height: screenHeight * 0.055,
                              child: Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 4,
                                    child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          vertical: 2),
                                      child: Text(
                                        " Tahun $tahun_n0 merupakan angka sangat sementara",
                                        style: const TextStyle(
                                          fontSize: 11,
                                          fontStyle: FontStyle.normal,
                                        ),
                                        textAlign: TextAlign.left,
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
                                left: 14,
                                bottom: 0,
                              ),
                              child: const Text(
                                "Distribusi komponen pengeluaran dihitung berdasarkan PDRB ADHB.",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(
                                top: 4,
                                left: 4,
                                bottom: 60,
                              ),
                              child: const Text(
                                " Sumber Data : BPS Kabupaten Cilacap, BPS Provinsi Jawa Tengah",
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
                  child: const BodyGrafikDistpdrbpengel(),
                  direction: AxisDirection.left));
        },
        mini: true,
        child: const Icon(Icons.pie_chart_sharp),
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
