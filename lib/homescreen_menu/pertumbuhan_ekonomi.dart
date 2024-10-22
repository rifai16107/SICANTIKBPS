// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi/pertumbuhan_ekonomi_kabkot/series_pertumbuhan_ekonomikabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi/pertumbuhan_ekonomi_cilacap/pertumbuhan_ekonomi_clp.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb_kabkot.dart';
import 'package:flutter/material.dart';

class pertumbuhanEkonomi extends StatefulWidget {
  const pertumbuhanEkonomi({Key? key}) : super(key: key);

  @override
  State<pertumbuhanEkonomi> createState() => _pertumbuhanEkonomiState();
}

RepositoryPdrbKabkot repositorypdrb = RepositoryPdrbKabkot();

class _pertumbuhanEkonomiState extends State<pertumbuhanEkonomi> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'PERTUMBUHAN EKONOMI',
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
          actions: [
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Pertumbuhan Ekonomi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "   PDRB (Produk Domestik Regional Bruto) adalah nilai tambah produksi yang diciptakan oleh sektor-sektor ekonomi. Untuk menghitung pertumbuhan ekonomi digunakan PDRB Atas Dasar Harga Konstan, dengan tujuan pertumbuhan yang dihitung benar-benar pertumbuhan riil yang tidak dipengaruhi oleh gejolak harga/inflasi",
                            textAlign: TextAlign.justify),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Distribusi PDRB Menurut Lapangan Usaha",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "   Sementara itu untuk menghitung distribusi PDRB baik menurut lapangan usaha ataupun menurut komponen pengeluaran digunakan Produk Domestik Regional Bruto Atas Dasar Harga Berlaku (PDRB ADHB).",
                            textAlign: TextAlign.justify),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PDRB ADHB = Produk Domestik Regional Bruto Atas Dasar Harga Berlaku",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PDRB ADHK = Produk Domestik Regional Bruto Atas Dasar Harga Konstan",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined),
            ),
          ],
        ),
        body: FutureBuilder(
          future: repositorypdrb.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isipdrbpe = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th5 = isipdrbpe[index = 0].tahun.substring(20, 24);
                  double peCilacap = double.parse(isipdrbpe[index = 0].pe5);
                  double peJateng = double.parse(isipdrbpe[index = 35].pe5);

                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 3,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    color: Colors.black,
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 2,
                                          horizontal: 5,
                                        ),
                                        child: Text(
                                          "Pada Tahun " +
                                              th5 +
                                              " pertumbuhan ekonomi Kabupaten Cilacap sebesar  " +
                                              peCilacap.toStringAsFixed(2) +
                                              " persen"
                                                  " sementara Provinsi Jawa Tengah pertumbuhan ekonominya tercatat sebesar   " +
                                              peJateng.toStringAsFixed(2) +
                                              " persen".toString(),
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  fit: FlexFit.tight,
                                  flex: 2,
                                  child: Container(
                                    color: Colors.transparent,
                                  ),
                                )
                              ],
                            )),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(10, 100, 31, 0.886))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: const pertumbuhanEkonomiclp(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "Pertumbuhan Ekonomi Kabupaten Cilacap",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Icon(
                                        (Icons.arrow_right),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        const Divider(
                          height: 5,
                          color: Colors.transparent,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Color.fromRGBO(10, 100, 31, 0.886))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child:
                                          const SeriesPertumbuhanEkonomiKabkot(),
                                      direction: AxisDirection.left));
                            },
                            child: SizedBox(
                                width: screenWidth,
                                height: screenHeight * 0.1,
                                child: Row(
                                  children: [
                                    const Flexible(
                                      flex: 10,
                                      fit: FlexFit.tight,
                                      child: Text(
                                        "Pertumbuhan Ekonomi Kabupaten/Kota di Jawa Tengah",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Icon(
                                        (Icons.arrow_right),
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.transparent,
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
        ));
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
