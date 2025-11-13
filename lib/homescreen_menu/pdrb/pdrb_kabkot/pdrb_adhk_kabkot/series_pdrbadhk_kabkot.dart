import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_kabkot/pdrb_adhk_kabkot/body_series_pdrbadhkkabkot.dart';
import 'package:flutter/material.dart';

class SeriesPdrbadhkKabkot extends StatefulWidget {
  const SeriesPdrbadhkKabkot({super.key});

  @override
  State<SeriesPdrbadhkKabkot> createState() => _SeriesPdrbadhkKabkot();
}

class _SeriesPdrbadhkKabkot extends State<SeriesPdrbadhkKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDRB ADHK KABUPATEN/KOTA",
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
              height: screenHeight * 0.092,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "PDRB Atas Dasar Harga Konstan (Tahun 2010=100) Menurut Kabupaten/Kota Di Jawa Tengah (Milyar Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPdrbadhkKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
