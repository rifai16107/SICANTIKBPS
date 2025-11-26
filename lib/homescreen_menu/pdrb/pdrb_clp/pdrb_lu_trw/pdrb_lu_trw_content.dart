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
        title: const Text(
          'PDRB LU TRIWULANAN',
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                height: 0.1 * screenHeight,
                color: Colors.black,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      "PDRB Triwulanan Menurut Lapangan Usaha Kabupaten Cilacap",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(child: Container(height: 15, color: Colors.transparent)),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesPdrbadhbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'PDRB Triwulanan Atas Dasar Harga Berlaku\n'
                            'Menurut Lapangan Usaha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesPdrbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'PDRB Triwulanan Atas Dasar Harga Konstan\n'
                            'Menurut Lapangan Usaha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesDistadhbLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'Distribusi PDRB Triwulanan Menurut Lapangan Usaha',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesLajuadhkLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'Laju Pertumbuhan (q-to-q) PDRB Triwulanan Menurut Lapangan Usaha (Persen)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesLajuadhkccLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'Laju Pertumbuhan (c-to-c) PDRB Triwulanan Menurut Lapangan Usaha (Persen)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesLajuadhkyyLuTrw(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.09,
                          child: Text(
                            'Laju Pertumbuhan (y-to-y) PDRB Triwulanan Menurut Lapangan Usaha (Persen)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * 0.95,
                      margin: const EdgeInsets.only(top: 1),
                      child: const Text(
                        "Catatan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(color: Colors.transparent, height: 1),
                    SizedBox(
                      width: screenWidth * 0.95,
                      child: const Text(
                        '- ADHB : Atas Dasar Harga Berlaku.\n'
                        '- ADHK : Atas dasar Harga Konstan',
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
