// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_grafik/grafik_utp_jk.dart';
import 'package:flutter/material.dart';

class BodyGrafikUtpJk extends StatefulWidget {
  const BodyGrafikUtpJk({super.key});

  @override
  State<BodyGrafikUtpJk> createState() => _BodyGrafikUtpJk();
}

class _BodyGrafikUtpJk extends State<BodyGrafikUtpJk> {
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
            'UTP Menurut Jenis Kelamin Pengelola UTP',
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
        body: ListView(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  child: SizedBox(
                    height: screenHeight * 1.2,
                    width: screenWidth * 0.98,
                    child: const GrafikUtpJk(),
                  ),
                ),
              ],
            ),
            SizedBox(
              child: const Text(
                " Sentuh legenda untuk mengaktifkan/non aktifkan series",
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(indent: 3, color: Colors.transparent),
          ],
        ),
      ),
    );
  }
}
