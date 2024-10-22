// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/grafik_ipm_sejateng.dart';
import 'package:flutter/material.dart';

class BodyGrafikIpmSejateng extends StatefulWidget {
  const BodyGrafikIpmSejateng({super.key});

  @override
  State<BodyGrafikIpmSejateng> createState() => _BodyGrafikIpmSejateng();
}

class _BodyGrafikIpmSejateng extends State<BodyGrafikIpmSejateng> {
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
          'IPM Kabupaten/Kota se Jawa Tengah',
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
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight,
                width: screenWidth * 0.92,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikIpmKabkot(),
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
