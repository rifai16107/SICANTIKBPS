// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhb_kabkot/grafik_pdrbadhb_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikPdrbadhbKabkot extends StatefulWidget {
  const BodyGrafikPdrbadhbKabkot({super.key});

  @override
  State<BodyGrafikPdrbadhbKabkot> createState() => _BodyGrafikPdrbadhbKabkot();
}

class _BodyGrafikPdrbadhbKabkot extends State<BodyGrafikPdrbadhbKabkot> {
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
            'PDRB ADHB Kabupaten/Kota',
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
                  height: screenHeight * 1.45,
                  width: screenWidth * 0.92,
                  child: Column(
                    children: [Flexible(child: GrafikPdrbadhbKabkot())],
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
