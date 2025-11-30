// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/grafik_rumah/grafik_rumah_penerangan.dart';
import 'package:flutter/material.dart';

class BodyGrafikRumahPenerangan extends StatefulWidget {
  const BodyGrafikRumahPenerangan({super.key});

  @override
  State<BodyGrafikRumahPenerangan> createState() =>
      _BodyGrafikRumahPenerangan();
}

class _BodyGrafikRumahPenerangan extends State<BodyGrafikRumahPenerangan> {
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
          'Sumber Penerangan Utama',
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
                height: screenHeight * 0.75,
                width: screenWidth,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikRumahPenerangan(),
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
