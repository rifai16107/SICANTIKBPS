// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/grafik_rls_sejateng.dart';
import 'package:flutter/material.dart';

class BodyGrafikRlsSejateng extends StatefulWidget {
  const BodyGrafikRlsSejateng({super.key});

  @override
  State<BodyGrafikRlsSejateng> createState() => _BodyGrafikRlsSejateng();
}

class _BodyGrafikRlsSejateng extends State<BodyGrafikRlsSejateng> {
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
          'Rata-rata Lama Sekolah (RLS) Kabupaten/Kota se Jawa Tengah',
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
                      child: GrafikRlsKabkot(),
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
