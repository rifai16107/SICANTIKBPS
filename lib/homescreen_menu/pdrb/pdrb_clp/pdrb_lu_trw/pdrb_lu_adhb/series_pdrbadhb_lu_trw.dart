import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_lu_trw/pdrb_lu_adhb/body_pdrbadhb_lu_trw.dart';
import 'package:flutter/material.dart';

class SeriesPdrbadhbLuTrw extends StatefulWidget {
  const SeriesPdrbadhbLuTrw({super.key});

  @override
  State<SeriesPdrbadhbLuTrw> createState() => _SeriesPdrbadhbLuTrw();
}

class _SeriesPdrbadhbLuTrw extends State<SeriesPdrbadhbLuTrw> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDRB ADHB LU TRIWULANAN",
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
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: [
          Container(
            height: 0.08 * screenHeight,
            color: Colors.white,
            child: Column(
              children: const [
                Text(
                  ' PDRB ADHB Triwulanan Dengan Migas  Menurut Lapangan Usaha di Kabupaten Cilacap (Milyar Rupiah) ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text('',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                    )),
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
                  child: BodyPdrbadhbLuTrw(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
