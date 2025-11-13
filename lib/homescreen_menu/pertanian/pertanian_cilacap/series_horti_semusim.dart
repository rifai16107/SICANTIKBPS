import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/body_serieshortisemusim.dart';
import 'package:flutter/material.dart';

class SeriesHortiSemusim extends StatefulWidget {
  const SeriesHortiSemusim({super.key});

  @override
  State<SeriesHortiSemusim> createState() => _SeriesHortiSemusim();
}

class _SeriesHortiSemusim extends State<SeriesHortiSemusim> {
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
              height: screenHeight * 0.065,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Luas Panen dan Produksi Tanaman Sayuran dan Buah-Buahan Semusim di Kabupaten Cilacap",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesHortiSemusim(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
