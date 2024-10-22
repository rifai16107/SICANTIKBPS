// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_grafik/grafik_gurem.dart';
import 'package:flutter/material.dart';

class BodyGrafikGurem extends StatefulWidget {
  const BodyGrafikGurem({super.key});

  @override
  State<BodyGrafikGurem> createState() => _BodyGrafikGurem();
}

class _BodyGrafikGurem extends State<BodyGrafikGurem> {
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
          'Petani Pengguna Lahan',
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
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
           
            Flexible(
              child: SizedBox(
                height: screenHeight * 1.2,
                width: screenWidth*0.95,
                child: const GrafikGurem(),
              ),
            ),
             Container(
              height: screenHeight * 0.035,
              color: Colors.white,
              child:  Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                  child: Text(
                    "Tekan/sentuh Pada Legenda Untuk Mengaktifkan/Menonaktifkan series data",
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
