// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/pdrb_lu_adhk/series_pdrb_lu_trw.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/pdrb_lu_adhb/series_pdrbadhb_lu_trw.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/dist_lu_adhb/series_distadhb_lu_trw.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajuqq_lu_adhk/series_lajuadhkqq_lu_trw.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajucc_lu_adhk/series_lajuadhkcc_lu_trw.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/lajuyy_lu_adhk/series_lajuadhkyy_lu_trw.dart';
import 'package:flutter/material.dart';

class pdrblutrwContent extends StatefulWidget {
  const pdrblutrwContent({Key? key}) : super(key: key);

  @override
  State<pdrblutrwContent> createState() => _pdrblutrwContentState();
}

class _pdrblutrwContentState extends State<pdrblutrwContent> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDRB LU TRIWULANAN', style: TextStyle(fontSize: 16)),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
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
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 110,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "PDRB Triwulanan Menurut Lapangan Usaha Kabupaten Cilacap",
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
                      child: const SeriesPdrbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "PDRB Triwulanan Atas Dasar Harga Konstan Menurut Lapangan Usaha",
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
                      child: const SeriesPdrbadhbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "PDRB Triwulanan Atas Dasar Harga Berlaku Menurut Lapangan Usaha",
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
                      child: const SeriesDistadhbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Distribusi PDRB Triwulanan Menurut Lapangan Usaha",
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
                      child: const SeriesLajuadhkLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Laju Pertumbuhan (q-to-q) PDRB Triwulanan Menurut Lapangan Usaha (Persen)",
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
                      child: const SeriesLajuadhkccLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Laju Pertumbuhan (c-to-c) PDRB Triwulanan Menurut Lapangan Usaha (Persen)",
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
                      child: const SeriesLajuadhkyyLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.07,
                  child: Row(
                    children: const [
                      Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Laju Pertumbuhan (y-on-y) PDRB Triwulanan Menurut Lapangan Usaha (Persen)",
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
            const Divider(height: 50, color: Colors.transparent),
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
