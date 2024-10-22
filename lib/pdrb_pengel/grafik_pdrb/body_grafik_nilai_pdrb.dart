// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/pdrb_pengel/grafik_pdrb/grafik_nilai_pdrb.dart';
import 'package:flutter/material.dart';

class BodyGrafikNilaipdrbpengel extends StatefulWidget {
  const BodyGrafikNilaipdrbpengel({super.key});

  @override
  State<BodyGrafikNilaipdrbpengel> createState() =>
      _BodyGrafikNilaipdrbpengel();
}

class _BodyGrafikNilaipdrbpengel extends State<BodyGrafikNilaipdrbpengel> {
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
          'Nilai Komponen Pengeluaran PDRB',
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
      body: Container(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.90,
                width: screenWidth * 0.95,
                child: const GrafikNilaiPdrb(),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.08,
              //color: Colors.white,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Text(
                    "Klik Pada Legenda Untuk Menghilangkan/Memunculkan series",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
