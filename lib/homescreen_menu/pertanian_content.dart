// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_perumahan_lantai.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_pangan.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_horti_semusim.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_horti_tahunan.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_kebun.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_ternak.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/series_ikan.dart';
import 'package:flutter/material.dart';

class pertanianContent extends StatefulWidget {
  const pertanianContent({Key? key}) : super(key: key);

  @override
  State<pertanianContent> createState() => _pertanianContentState();
}

RepositoryLantai repositorylantai = RepositoryLantai();

class _pertanianContentState extends State<pertanianContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DATA PERTANIAN',
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
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Pertanian",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Pertanian merupakan salah satu sektor yang cukup memberikan kontribusi signifikan bagi PDRB Kabupaten Cilacap maupun dalam penyerapan tenaga kerja. Luas lahan yang terbatas di Pulau Jawa termasuk di Kabupaten Cilacap menuntut adanya intensifikasi pertanian untuk meningkatkan produktivitas pertanian. Sumber data pertanian tanaman pangan, hortikultura, perkebunan, ternak dan perikanan merupakan data statistik sektoral yang diperoleh BPS Kabupaten Cilacap dari Dinas terkait. Untuk data pertanian hasil Sensus Pertanian 2023 disajikan tersendiri yang dapat diakses pada menu hasil ST2023.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Flexible(
                      flex: 5,
                      fit: FlexFit.tight,
                      child: Container(
                        //height: screenHeight*0.15,
                        color: Colors.black,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 5,
                            ),
                            child: Text(
                              "Pertanian Tanaman Pangan, Hortikultura, Perkebunan, Peternakan dan Perikanan di Kabupaten Cilacap",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        height: 100,
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesPangan(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.09,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Luas Panen, Produktivitas dan Produksi Tanaman Pangan (Padi dan Palawija) di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesHortiSemusim(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Luas Panen dan Produksi Tanaman Sayuran dan Buah-Buahan Semusim di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesHortiTahunan(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Produksi Tanaman Sayuran dan Buah-Buahan Tahunan di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesKebun(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Luas Areal Tanaman Perkebunan dan Produksi Tanaman Perkebunan di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesTernak(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Populasi Ternak Besar, Sedang, Kecil dan Unggas di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(10, 100, 31, 0.886))),
                onPressed: () {
                  Navigator.push(
                      context,
                      CustomPageRoute(
                          child: const SeriesIkan(),
                          direction: AxisDirection.left));
                },
                child: SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.08,
                    child: Row(
                      children: [
                        const Flexible(
                          flex: 16,
                          fit: FlexFit.tight,
                          child: Text(
                            "Produksi Perikanan Tangkap dan Perikanan Budidaya di Kabupaten Cilacap",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Icon(Icons.arrow_right),
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
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ),
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
