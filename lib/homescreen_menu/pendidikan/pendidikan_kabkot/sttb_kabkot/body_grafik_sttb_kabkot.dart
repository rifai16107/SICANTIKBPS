// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sttb_kabkot/grafik_stttb_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikSttbKabkot extends StatefulWidget {
  const BodyGrafikSttbKabkot({super.key});

  @override
  State<BodyGrafikSttbKabkot> createState() => _BodyGrafikSttbKabkot();
}

class _BodyGrafikSttbKabkot extends State<BodyGrafikSttbKabkot> {
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
          'Pendidikan Usia 15+',
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
                height: screenHeight * 0.90,
                width: screenWidth * 0.95,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikSttbKabkot(),
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
