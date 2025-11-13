// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_perumahan_masak.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_clp/body_grafik_rumah_masak.dart';

class PerumahanMasak extends StatefulWidget {
  const PerumahanMasak({Key? key}) : super(key: key);

  @override
  State<PerumahanMasak> createState() => _PerumahanMasakState();
}

RepositoryMasak repositorymasak = RepositoryMasak();

class _PerumahanMasakState extends State<PerumahanMasak> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INDIKATOR PERUMAHAN (BHN BAKAR MASAK)',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: FutureBuilder(
        future: repositorymasak.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isimasak = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th1 = isimasak[index = 0].tahun;
                String th2 = isimasak[index = 6].tahun;
                String th3 = isimasak[index = 12].tahun;

                String rincian_1 = isimasak[index = 0].rincian;
                String rincian_2 = isimasak[index = 1].rincian;
                String rincian_3 = isimasak[index = 2].rincian;
                String rincian_4 = isimasak[index = 3].rincian;
                String rincian_5 = isimasak[index = 4].rincian;
                String rincian_6 = isimasak[index = 5].rincian;

                //tahun n-2
                double persentase_1 = double.parse(
                  isimasak[index = 0].persentase,
                );
                double persentase_2 = double.parse(
                  isimasak[index = 1].persentase,
                );
                double persentase_3 = double.parse(
                  isimasak[index = 2].persentase,
                );
                double persentase_4 = double.parse(
                  isimasak[index = 3].persentase,
                );
                double persentase_5 = double.parse(
                  isimasak[index = 4].persentase,
                );
                double persentase_6 = double.parse(
                  isimasak[index = 5].persentase,
                );

                //tahun n-1
                double persentase_7 = double.parse(
                  isimasak[index = 6].persentase,
                );
                double persentase_8 = double.parse(
                  isimasak[index = 7].persentase,
                );
                double persentase_9 = double.parse(
                  isimasak[index = 8].persentase,
                );
                double persentase_10 = double.parse(
                  isimasak[index = 9].persentase,
                );
                double persentase_11 = double.parse(
                  isimasak[index = 10].persentase,
                );
                double persentase_12 = double.parse(
                  isimasak[index = 11].persentase,
                );

                //tahun n
                double persentase_13 = double.parse(
                  isimasak[index = 12].persentase,
                );
                double persentase_14 = double.parse(
                  isimasak[index = 13].persentase,
                );
                double persentase_15 = double.parse(
                  isimasak[index = 14].persentase,
                );
                double persentase_16 = double.parse(
                  isimasak[index = 15].persentase,
                );
                double persentase_17 = double.parse(
                  isimasak[index = 16].persentase,
                );
                double persentase_18 = double.parse(
                  isimasak[index = 17].persentase,
                );

                // grafik
                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 2,
                        ),
                        child: const Text(
                          "Persentase Rumah Tangga Menurut Bahan Bakar Utama Untuk Memasak",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 4,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.green,
                                    child: const Text(
                                      "Bahan Bakar Memasak",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.green,
                                    child: Text(
                                      th1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.green,
                                    child: Text(
                                      th2,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
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
                                      horizontal: 2,
                                      vertical: 10,
                                    ),
                                    color: Colors.green,
                                    child: Text(
                                      th3,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Listrik
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      rincian_1,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_1, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_7, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_13, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),

                            // Gas Elpiji/Gas Kota/Biogas
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      rincian_2,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_2, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_8, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_14, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),

                            // Minyak tanah/Arang/Briket/Kayu Bakar
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      rincian_3,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_3, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_9, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_15, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),

                            // Lainnya
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      rincian_4,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_4, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_10, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_16, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(),

                            // Tidak memasak
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      rincian_5,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_5, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_11, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_17, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(thickness: 2),

                            //  Total
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      rincian_6,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_6, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_12, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    child: Text(
                                      Format.convertTo(persentase_18, 2),
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(thickness: 2),

                            Row(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        padding: const EdgeInsets.only(
                                          top: 4,
                                          left: 4,
                                        ),
                                        child: const Text(
                                          " Sumber Data : Survei Sosial Ekonomi Nasional",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            CustomPageRoute(
              child: const BodyGrafikRumahMasak(),
              direction: AxisDirection.left,
            ),
          );
        },
        mini: true,
        child: const Icon(Icons.pie_chart),
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
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
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
