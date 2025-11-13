import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhb_kabkot/body_series_pdrbadhbkabkot.dart';
import 'package:flutter/material.dart';

class SeriesPdrbadhbKabkot extends StatefulWidget {
  const SeriesPdrbadhbKabkot({super.key});

  @override
  State<SeriesPdrbadhbKabkot> createState() => _SeriesPdrbadhbKabkot();
}

class _SeriesPdrbadhbKabkot extends State<SeriesPdrbadhbKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDRB ADHB KABUPATEN/KOTA",
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
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.085,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "PDRB Atas Dasar Harga Berlaku Menurut Kabupaten/Kota Di Jawa Tengah (Milyar Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPdrbadhbKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
