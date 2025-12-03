// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/sensus_tani_grafik/grafik_urban_milenial.dart';
import 'package:flutter/material.dart';

class BodyGrafikUrbanMilenial extends StatefulWidget {
  const BodyGrafikUrbanMilenial({super.key});

  @override
  State<BodyGrafikUrbanMilenial> createState() => _BodyGrafikUrbanMilenial();
}

class _BodyGrafikUrbanMilenial extends State<BodyGrafikUrbanMilenial> {
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
          'Petani Milenial Usia 19-39 Tahun',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
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
                height: screenHeight * 0.95,
                width: screenWidth*0.95,
                child: Column(
                  children:[
                    Flexible(
                     child: const GrafikUrbanMilenial(),
                    ),
                  ],
                ),
              ),
             ], 
            ),
             SizedBox(
              height: screenHeight * 0.035,
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
    );
  }
}
