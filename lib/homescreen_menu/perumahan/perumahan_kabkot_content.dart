// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_perumahan_lantai.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahlantai/series_lantai_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahatap/series_atap_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahdinding/series_dinding_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahpenerangan/series_penerangan_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahairminum/series_airminum_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahbahanbakar/series_bahanbakar_kabkot.dart';
import 'package:flutter/material.dart';

class perumahankabkotContent extends StatefulWidget {
  const perumahankabkotContent({Key? key}) : super(key: key);

  @override
  State<perumahankabkotContent> createState() => _perumahankabkotContentState();
}

RepositoryLantai repositorylantai = RepositoryLantai();

class _perumahankabkotContentState extends State<perumahankabkotContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'INDIKATOR PERUMAHAN',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Perumahan",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Column(
                              children: [
                                Text(
                                  "   Perumahan merupakan salah ukuran kesejahteraan suatu rumah tangga, secara umum semakin baik perekonomian suatu rumah tangga maka akan semakin bagus kondisi rumahnya. Kelayakan suatu bangunan tempat tinggal diantaranya dapat diukur dari kondisi fisik bangunan ataupun fasilitas-fasilitas pokok yang ada pada bangunan tersebut, seperti kondisi dinding, lantai dan atap bangunan serta fasilitas penerangan dan sumber air minum yang digunakan oleh suatu rumah tangga. Semakin tinggi persentase pada kelompok bangunan atau rumah tangga dengan fasilitas perumahan yang baik atau kondisi bangunan yang baik semakin tinggi persentasenya, maka dapat dikatakan kondisi daerah suatu daerah semakin baik/sejahtera",
                                  textAlign: TextAlign.justify,
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Indikator Perumahan Kabupaten/Kota di Jateng",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Container(height: 100, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahlantaiKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Jenis Lantai yang Terluas",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahatapKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Jenis Atap yang Terluas",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahdindingKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Jenis Dinding yang Terluas",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahpeneranganKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Sumber Penerangan Utama",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahairminumKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Sumber Air Minum Utama",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesRumahbahanbakarKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: const Row(
                    children: [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Rumah Tangga Menurut Bahan Bakar Utama Untuk Memasak",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(color: Colors.transparent),
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
