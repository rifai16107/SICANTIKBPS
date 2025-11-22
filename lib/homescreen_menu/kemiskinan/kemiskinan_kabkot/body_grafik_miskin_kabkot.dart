// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan/kemiskinan_kabkot/grafik_miskin_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikMiskinKabKot extends StatefulWidget {
  const BodyGrafikMiskinKabKot({super.key});

  @override
  State<BodyGrafikMiskinKabKot> createState() => _BodyGrafikMiskinKabKot();
}

class _BodyGrafikMiskinKabKot extends State<BodyGrafikMiskinKabKot> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tingkat Kemiskinan Kabupaten/Kota',
         style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 1.45,
                width: screenWidth,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikMiskinKabKot(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
