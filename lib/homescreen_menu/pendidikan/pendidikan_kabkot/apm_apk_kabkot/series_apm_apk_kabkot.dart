import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/apm_apk_kabkot/body_apm_apk_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesApmApkKabkot extends StatefulWidget {
  const SeriesApmApkKabkot({super.key});

  @override
  State<SeriesApmApkKabkot> createState() => _SeriesApmApkKabkot();
}

class _SeriesApmApkKabkot extends State<SeriesApmApkKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INDIKATOR PENDIDIKAN",
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
            Container(
              height: screenHeight * 0.095,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Angka Partisipasi Murni (APM) dan Angka Partisipasi Kasar (APK) SD, SMP dan SMA di Kabupaten/Kota di Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySeriesApmApKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
