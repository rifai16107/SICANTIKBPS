// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/grafik_idg.dart';
import 'package:flutter/material.dart';

class BodyGrafikIdg extends StatefulWidget {
  const BodyGrafikIdg({super.key});

  @override
  State<BodyGrafikIdg> createState() => _BodyGrafikIdg();
}

class _BodyGrafikIdg extends State<BodyGrafikIdg> {
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
            'IDG Kabupaten Cilacap',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(5),
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 1,
                  width: screenWidth * 0.95,
                  child: const GrafikIdg(),
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
          ],
        ),
      ),
    );
  }
}
