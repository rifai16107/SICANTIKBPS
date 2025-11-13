import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/idg/body_series_idgkabkot.dart';
import 'package:flutter/material.dart';

class SeriesIdgkabkot extends StatefulWidget {
  const SeriesIdgkabkot({super.key});

  @override
  State<SeriesIdgkabkot> createState() => _SeriesIdgkabkot();
}

class _SeriesIdgkabkot extends State<SeriesIdgkabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "[IDG] Kabupaten/Kota",
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
              height: screenHeight * 0.075,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Indeks Pemberdayaan Gender (IDG) dan Komponen Pembentuknya di Kabupaten/Kota Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesIdgKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
