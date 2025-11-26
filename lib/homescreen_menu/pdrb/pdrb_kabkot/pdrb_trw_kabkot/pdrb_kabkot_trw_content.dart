// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/pdrb_adhb/series_trwadhb_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/pdrb_adhk/series_trwadhk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/dist_pdrb_kabkot/series_trwdist_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/lajutrwcc_kabkot/series_trwlajucc_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/lajutrwqq_kabkot/series_trwlajuqq_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_trw_kabkot/lajutrwyy_kabkot/series_trwlajuyy_kabkot.dart';
import 'package:flutter/material.dart';

class pdrbkabkottrwContent extends StatefulWidget {
  const pdrbkabkottrwContent({Key? key}) : super(key: key);

  @override
  State<pdrbkabkottrwContent> createState() => _pdrbkabkottrwContentState();
}

class _pdrbkabkottrwContentState extends State<pdrbkabkottrwContent> {
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
          'PDRB TRIWULANAN KAB/KOTA',
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
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 0.1 * screenHeight,
                color: Colors.black,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      "PDRB Triwulanan Kabupaten/Kota Di Jawa Tengah",
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
              child: Container(height: 20, color: Colors.transparent),
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
                      child: const SeriesTrwadhbKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'PDRB Triwulanan Atas Dasar Harga Berlaku\n'
                            'Menurut Kabupaten/Kota',
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
                      child: const SeriesTrwadhkKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'PDRB Triwulanan Atas Dasar Harga Konstan\n'
                            'Menurut Kabupaten/Kota',
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
                      child: const SeriesTrwdistKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'Distribusi PDRB Triwulanan Menurut Kabupaten/Kota',
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
                      child: const SeriesTrwlajuqqKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'Laju Pertumbuhan (q-to-q) PDRB Triwulanan Menurut Kabupaten/Kota',
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
                      child: const SeriesTrwlajuccKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'Laju Pertumbuhan (c-to-c) PDRB Triwulanan Menurut Kabupaten/Kota',
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
                      child: const SeriesTrwlajuyyKabkot(),
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
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.82,
                          height: screenHeight * 0.08,
                          child: Text(
                            'Laju Pertumbuhan (y-to-y) PDRB Triwulanan Menurut Kabupaten/Kota',
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
