// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/grafik_inflasi/grafik_inflasi_kota.dart';
import 'package:flutter/material.dart';

class BodyGrafikInflasiKota extends StatefulWidget {
  const BodyGrafikInflasiKota({super.key});

  @override
  State<BodyGrafikInflasiKota> createState() => _BodyGrafikInflasiKota();
}

class _BodyGrafikInflasiKota extends State<BodyGrafikInflasiKota> {
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
            'Inflasi 9 Kota di Jawa Tengah',
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
        body: Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Flexible(
                child: SizedBox(
                  height: screenHeight * 0.85,
                  width: screenWidth * 0.95,
                  child: const GrafikInflasiKota(),
                ),
              ),
              Container(
                height: screenHeight * 0.10,
                color: Colors.white,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                    child: Text(
                      "Tekan/sentuh Pada Legenda Untuk Mengaktifkan/Menonaktifkan series data",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
