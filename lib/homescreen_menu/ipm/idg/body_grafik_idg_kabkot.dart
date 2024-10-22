// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/grafik_idg_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikIdgKabkot extends StatefulWidget {
  const BodyGrafikIdgKabkot({super.key});

  @override
  State<BodyGrafikIdgKabkot> createState() => _BodyGrafikIdgKabkot();
}

class _BodyGrafikIdgKabkot extends State<BodyGrafikIdgKabkot> {
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
          '[IDG] Kabupapaten/Kota Jawa Tengah',
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
                height: screenHeight * 1.05,
                width: screenWidth * 0.92,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikIdgKabkot(),
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
