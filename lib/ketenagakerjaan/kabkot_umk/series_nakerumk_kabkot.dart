import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_umk/body_series_nakerumk_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerkabkotUmk extends StatefulWidget {
  const SeriesNakerkabkotUmk({super.key});

  @override
  State<SeriesNakerkabkotUmk> createState() => _SeriesNakerkabkotUmk();
}

class _SeriesNakerkabkotUmk extends State<SeriesNakerkabkotUmk> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UMK DI JATENG",
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
              height: screenHeight * 0.090,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Upah Minimum Kabupaten/Kota (UMK) di Provinsi Jawa Tengah (Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesNakerkabkotUmk(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
