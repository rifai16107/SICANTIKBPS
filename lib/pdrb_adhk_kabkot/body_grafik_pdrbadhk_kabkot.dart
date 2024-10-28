// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/pdrb_adhk_kabkot/grafik_pdrbadhk_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikPdrbadhkKabkot extends StatefulWidget {
  const BodyGrafikPdrbadhkKabkot({super.key});

  @override
  State<BodyGrafikPdrbadhkKabkot> createState() => _BodyGrafikPdrbadhkKabkot();
}

class _BodyGrafikPdrbadhkKabkot extends State<BodyGrafikPdrbadhkKabkot> {
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
          'PDRB ADHK Kabupaten/Kota',
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
                height: screenHeight * 1.15,
                width: screenWidth * 0.92,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikPdrbadhkKabkot(),
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
