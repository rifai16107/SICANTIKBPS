// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi/grafik_pddk_kecamatan.dart';
import 'package:flutter/material.dart';

class BodyGrafikPddkKecamatan extends StatefulWidget {
  const BodyGrafikPddkKecamatan({super.key});

  @override
  State<BodyGrafikPddkKecamatan> createState() => _BodyGrafikPddkKecamatan();
}

class _BodyGrafikPddkKecamatan extends State<BodyGrafikPddkKecamatan> {
  @override
  Widget build(BuildContext context) {
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Penduduk Kabupaten Cilacap',
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
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight,
                  width: screenWidth * 0.96,
                  child: Column(
                    children: [Flexible(child: GrafikPddkKecamatan())],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
