// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tab/grafik_jateng_kelum.dart';
import 'package:flutter/material.dart';

class BodyGrafikPddkJatengKelum extends StatefulWidget {
  const BodyGrafikPddkJatengKelum({super.key});

  @override
  State<BodyGrafikPddkJatengKelum> createState() =>
      _BodyGrafikPddkJatengKelum();
}

class _BodyGrafikPddkJatengKelum extends State<BodyGrafikPddkJatengKelum> {
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
            'Penduduk Menurut Kelompok Umur',
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
                  height: screenHeight * 0.82,
                  width: screenWidth * 1,
                  child: Column(
                    children: [Flexible(child: GrafikPddkJatengKelum())],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: screenWidth * 0.97,
                  child: const Text(
                    "  ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.97,
                  child: const Text(
                    "Catatan :",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.97,
                  child: const Text(
                    "Abaikan tanda - (minus) pada tooltip.",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.left,
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
