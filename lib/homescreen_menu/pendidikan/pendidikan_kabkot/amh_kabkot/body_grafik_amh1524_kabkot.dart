// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/amh_kabkot/grafik_amh1524_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikPendidikanKabkotAmh1524 extends StatefulWidget {
  const BodyGrafikPendidikanKabkotAmh1524({super.key});

  @override
  State<BodyGrafikPendidikanKabkotAmh1524> createState() =>
      _BodyGrafikPendidikanKabkotAmh1524();
}

class _BodyGrafikPendidikanKabkotAmh1524
    extends State<BodyGrafikPendidikanKabkotAmh1524> {
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
          'AMH Usia 15-24 Tahun',
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
                height: screenHeight * 1.20,
                width: screenWidth * 0.96,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikPendidikanKabkotAmh1524(),
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
