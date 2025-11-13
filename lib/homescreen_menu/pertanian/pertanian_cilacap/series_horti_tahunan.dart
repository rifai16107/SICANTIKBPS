import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/body_serieshortitahunan.dart';
import 'package:flutter/material.dart';

class SeriesHortiTahunan extends StatefulWidget {
  const SeriesHortiTahunan({super.key});

  @override
  State<SeriesHortiTahunan> createState() => _SeriesHortiTahunan();
}

class _SeriesHortiTahunan extends State<SeriesHortiTahunan> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PERTANIAN HORTIKULTURA",
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
              height: screenHeight * 0.09,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Produksi Tanaman Sayuran dan Buah-Buahan Tahunan di Kabupaten Cilacap",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 1,
                child: const BodySeriesHortiTahunan(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
