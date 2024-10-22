// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_perumahan_atap.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/body_grafik_rumah_atap.dart';

class PerumahanAtap extends StatefulWidget {
  const PerumahanAtap({Key? key}) : super(key: key);

  @override
  State<PerumahanAtap> createState() => _PerumahanAtapState();
}

RepositoryAtap repositoryatap = RepositoryAtap();

class _PerumahanAtapState extends State<PerumahanAtap> {
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
          'INDIKATOR PERUMAHAN (ATAP)',
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
        future: repositoryatap.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiatap = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                String th1 = isiatap[index = 0].tahun;
                String th2 = isiatap[index = 8].tahun;
                String th3 = isiatap[index = 16].tahun;

                String rincian_1 = isiatap[index = 0].rincian;
                String rincian_2 = isiatap[index = 1].rincian;
                String rincian_3 = isiatap[index = 2].rincian;
                String rincian_4 = isiatap[index = 3].rincian;
                String rincian_5 = isiatap[index = 4].rincian;
                String rincian_6 = isiatap[index = 5].rincian;
                String rincian_7 = isiatap[index = 6].rincian;
                String rincian_8 = isiatap[index = 7].rincian;

                //tahun n-2
                double persentase_1 =
                    double.parse(isiatap[index = 0].persentase);
                double persentase_2 =
                    double.parse(isiatap[index = 1].persentase);
                double persentase_3 =
                    double.parse(isiatap[index = 2].persentase);
                double persentase_4 =
                    double.parse(isiatap[index = 3].persentase);
                double persentase_5 =
                    double.parse(isiatap[index = 4].persentase);
                double persentase_6 =
                    double.parse(isiatap[index = 5].persentase);
                double persentase_7 =
                    double.parse(isiatap[index = 6].persentase);
                double persentase_8 =
                    double.parse(isiatap[index = 7].persentase);

                //tahun n-1
                double persentase_9 =
                    double.parse(isiatap[index = 8].persentase);
                double persentase_10 =
                    double.parse(isiatap[index = 9].persentase);
                double persentase_11 =
                    double.parse(isiatap[index = 10].persentase);
                double persentase_12 =
                    double.parse(isiatap[index = 11].persentase);
                double persentase_13 =
                    double.parse(isiatap[index = 12].persentase);
                double persentase_14 =
                    double.parse(isiatap[index = 13].persentase);
                double persentase_15 =
                    double.parse(isiatap[index = 14].persentase);
                double persentase_16 =
                    double.parse(isiatap[index = 15].persentase);

                //tahun n
                double persentase_17 =
                    double.parse(isiatap[index = 16].persentase);
                double persentase_18 =
                    double.parse(isiatap[index = 17].persentase);
                double persentase_19 =
                    double.parse(isiatap[index = 18].persentase);
                double persentase_20 =
                    double.parse(isiatap[index = 19].persentase);
                double persentase_21 =
                    double.parse(isiatap[index = 20].persentase);
                double persentase_22 =
                    double.parse(isiatap[index = 21].persentase);
                double persentase_23 =
                    double.parse(isiatap[index = 22].persentase);
                double persentase_24 =
                    double.parse(isiatap[index = 23].persentase);

                // grafik
                return Container(
                  padding: const EdgeInsets.all(2),
                  child: Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 2),
                          child: const Text(
                            "Persentase Rumah Tangga Menurut Jenis Atap Bangunan Tempat Tinggal Yang Terluas",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: screenHeight * 0.60,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 15),
                                    color: Colors.green,
                                    child: const Text(
                                      "Jenis Atap",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 15),
                                    color: Colors.green,
                                    child: Text(
                                      th1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 15),
                                    color: Colors.green,
                                    child: Text(
                                      th2,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2, vertical: 15),
                                    color: Colors.green,
                                    child: Text(
                                      th3,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Beton

                            Row(children: [
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
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 4),
                                  child: Text(
                                    Format.convertTo(persentase_1, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 4),
                                  child: Text(
                                    Format.convertTo(persentase_9, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 4),
                                  child: Text(
                                    Format.convertTo(persentase_17, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            // Genteng
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_2,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_2, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_10, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_18, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            // Seng
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_3,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_3, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_11, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_19, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            // Asbes
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_4,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_4, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_12, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_20, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            // Sirap/Kayu/Bambu
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_5,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_5, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_13, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_21, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            //  Jerami/Ijuk/daun/rumbia
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_6,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_6, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_14, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_22, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(),

                            //  Lainnya
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_7,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_7, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_15, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_23, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(
                              thickness: 2,
                            ),

                            // Total
                            Row(children: [
                              Flexible(
                                fit: FlexFit.tight,
                                flex: 3,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    rincian_8,
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_8, 2),
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_16, 2),
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
                                      horizontal: 2, vertical: 2),
                                  child: Text(
                                    Format.convertTo(persentase_24, 2),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                            const Divider(
                              thickness: 2,
                            ),

                            Row(children: [
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
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ),
                                    ],
                                  ))
                            ]),
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
                  child: const BodyGrafikRumahAtap(),
                  direction: AxisDirection.left));
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
