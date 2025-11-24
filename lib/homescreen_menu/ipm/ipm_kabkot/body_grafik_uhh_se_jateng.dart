// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/grafik_uhh_sejateng.dart';
import 'package:flutter/material.dart';

class BodyGrafikUhhSejateng extends StatefulWidget {
  const BodyGrafikUhhSejateng({super.key});

  @override
  State<BodyGrafikUhhSejateng> createState() => _BodyGrafikUhhSejateng();
}

class _BodyGrafikUhhSejateng extends State<BodyGrafikUhhSejateng> {
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
          'Umur Harapan Hidup (UHH) Kabupaten/Kota se Jawa Tengah',
        style: TextStyle(fontSize: 16, color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
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
                height: screenHeight * 1.45,
                width: screenWidth * 0.92,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikUhhKabkot(),
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
