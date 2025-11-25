import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pertumbuhan_ekonomi/pertumbuhan_ekonomi_kabkot/body_series_pertumbuhanekonomikabkot.dart';
import 'package:flutter/material.dart';

class SeriesPertumbuhanEkonomiKabkot extends StatefulWidget {
  const SeriesPertumbuhanEkonomiKabkot({super.key});

  @override
  State<SeriesPertumbuhanEkonomiKabkot> createState() =>
      _SeriesPertumbuhanEkonomiKabkot();
}

class _SeriesPertumbuhanEkonomiKabkot
    extends State<SeriesPertumbuhanEkonomiKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDRB DAN PERTUMBUHAN EKONOMI",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
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
              height: screenHeight * 0.0995,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "PDRB Atas Dasar Harga Konstan (Juta Rupiah) dan Pertumbuhan Ekonomi (persen) Kabupaten/Kota di Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPertumbuhanEkonomiKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
