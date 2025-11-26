import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/dist_lu_adhb/body_distadhb_lu_trw.dart';
import 'package:flutter/material.dart';

class SeriesDistadhbLuTrw extends StatefulWidget {
  const SeriesDistadhbLuTrw({super.key});

  @override
  State<SeriesDistadhbLuTrw> createState() => _SeriesDistadhbLuTrw();
}

class _SeriesDistadhbLuTrw extends State<SeriesDistadhbLuTrw> {
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
          "DISTRIBUSI PDRB LU TRIWULANAN",
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
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: [
          Container(
            height: 0.10 * screenHeight,
            color: Colors.white,
            child: Column(
              children: const [
                Text(
                  ' Distribusi PDRB Triwulanan Dengan Migas Menurut Lapangan Usaha di Kabupaten Cilacap (Persen) ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            height: screenHeight * 0.83,
            width: screenWidth * 1,
            child: Column(
              children: const [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 12,
                  child: BodyDistadhbLuTrw(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
