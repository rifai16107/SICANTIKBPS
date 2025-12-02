// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/bangunan_kabkot/grafik_rumahdinding.dart';

import 'package:flutter/material.dart';

class BodyGrafikRumahdindingLF extends StatefulWidget {
  const BodyGrafikRumahdindingLF({super.key});

  @override
  State<BodyGrafikRumahdindingLF> createState() => _BodyGrafikRumahdindingLF();
}

class _BodyGrafikRumahdindingLF extends State<BodyGrafikRumahdindingLF> {
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
          'Jenis Dinding Terluas',
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
                height: screenHeight * 0.90,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikRumahdindingLF(),
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
