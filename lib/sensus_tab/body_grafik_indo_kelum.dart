// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tab/grafik_indo_kelum.dart';
import 'package:flutter/material.dart';

class BodyGrafikPddkIndoKelum extends StatefulWidget {
  const BodyGrafikPddkIndoKelum({super.key});

  @override
  State<BodyGrafikPddkIndoKelum> createState() => _BodyGrafikPddkIndoKelum();
}

class _BodyGrafikPddkIndoKelum extends State<BodyGrafikPddkIndoKelum> {
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
          'Penduduk Menurut Kelompok Umur',
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
                height: screenHeight * 0.85,
                width: screenWidth * 0.98,
                child: Column(
                  children: [
                    Flexible(
                      child: GrafikPddkIndoKelum(),
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
                  "Catatan :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.97,
                child: const Text(
                  "Abaikan tanda - (minus) pada tooltip.",
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
