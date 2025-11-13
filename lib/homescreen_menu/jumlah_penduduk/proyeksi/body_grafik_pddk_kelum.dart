// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi/grafik_pddk_kelum.dart';
import 'package:flutter/material.dart';

class BodyGrafikPddkKelum extends StatefulWidget {
  const BodyGrafikPddkKelum({super.key});

  @override
  State<BodyGrafikPddkKelum> createState() => _BodyGrafikPddkKelum();
}

class _BodyGrafikPddkKelum extends State<BodyGrafikPddkKelum> {
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
          'Penduduk Kabupaten Cilacap',
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
                height: screenHeight * 0.82,
                width: screenWidth * 1,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikPddkKelum(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: screenWidth * 0.97,
                child: const Text(
                  "  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.97,
                child: const Text(
                  "Catatan :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.97,
                child: const Text(
                  "Proyeksi Penduduk Berdasarkan Hasil SP2020.",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
