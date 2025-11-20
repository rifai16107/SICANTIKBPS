// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipm_kabkot/ipg_cilacap/grafik_ipm_gender.dart';
import 'package:flutter/material.dart';

class BodyGrafikIpmGender extends StatefulWidget {
  const BodyGrafikIpmGender({super.key});

  @override
  State<BodyGrafikIpmGender> createState() => _BodyGrafikIpmGender();
}

class _BodyGrafikIpmGender extends State<BodyGrafikIpmGender> {
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
          'IPG Kabupaten Cilacap',
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
        padding: const EdgeInsets.all(5),
        children: [
            Flexible(
              child: SizedBox(
                height: screenHeight * 1.10,
                width: screenWidth * 0.85,
                child: const GrafikIpmGender(),
              ),
            ),
            Container(
              height: screenHeight * 0.08,
              color: Colors.white,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
    );
  }
}
