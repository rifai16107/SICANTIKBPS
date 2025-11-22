import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/kemiskinan/kemiskinan_kabkot/body_series_kemiskinankabkot.dart';
import 'package:flutter/material.dart';

class SeriesKemiskinanKabkot extends StatefulWidget {
  const SeriesKemiskinanKabkot({super.key});

  @override
  State<SeriesKemiskinanKabkot> createState() => _SeriesKemiskinanKabkot();
}

class _SeriesKemiskinanKabkot extends State<SeriesKemiskinanKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "KEMISKINAN KABUPATEN/KOTA",
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
                    "Indikator Kemiskinan (Penduduk Miskin, GK, P0, P1 dan P2) Menurut Kabupaten/Kota di Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesKemiskinanKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
