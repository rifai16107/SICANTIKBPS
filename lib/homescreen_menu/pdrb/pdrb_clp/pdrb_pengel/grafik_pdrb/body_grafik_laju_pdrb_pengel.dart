// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/grafik_pdrb/grafik_laju_pdrb_pengel.dart';
import 'package:flutter/material.dart';

class BodyGrafikLajuPdrbpengel extends StatefulWidget {
  const BodyGrafikLajuPdrbpengel({super.key});

  @override
  State<BodyGrafikLajuPdrbpengel> createState() => _BodyGrafikLajuPdrbpengel();
}

class _BodyGrafikLajuPdrbpengel extends State<BodyGrafikLajuPdrbpengel> {
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
            'Laju Pertumbuhan Komponen PDRB Pengeluaran',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
              color: Colors.white,
            ),
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
                  height: screenHeight * 1.35,
                  width: screenWidth * 0.95,
                  child: const GrafikLajuPdrbpengel(),
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
