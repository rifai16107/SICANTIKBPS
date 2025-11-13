// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik_rumah/grafik_rumah_atap.dart';
import 'package:flutter/material.dart';

class BodyGrafikRumahAtap extends StatefulWidget {
  const BodyGrafikRumahAtap({super.key});

  @override
  State<BodyGrafikRumahAtap> createState() => _BodyGrafikRumahAtap();
}

class _BodyGrafikRumahAtap extends State<BodyGrafikRumahAtap> {
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
            'Jenis Atap Terluas',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.black,
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
                  height: screenHeight * 0.75,
                  width: screenWidth,
                  child: Column(children: [Flexible(child: GrafikRumahAtap())]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
