// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/amh_kabkot/grafik_amh45keatas_kabkot.dart';
import 'package:flutter/material.dart';

class BodyGrafikPendidikanKabkotAmh45keatas extends StatefulWidget {
  const BodyGrafikPendidikanKabkotAmh45keatas({super.key});

  @override
  State<BodyGrafikPendidikanKabkotAmh45keatas> createState() =>
      _BodyGrafikPendidikanKabkotAmh45keatas();
}

class _BodyGrafikPendidikanKabkotAmh45keatas
    extends State<BodyGrafikPendidikanKabkotAmh45keatas> {
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
          'AMH Usia 45+ Tahun',
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
                      child: GrafikPendidikanKabkotAmh45keatas(),
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
