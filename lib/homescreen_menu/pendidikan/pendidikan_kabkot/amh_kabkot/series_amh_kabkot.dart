import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/amh_kabkot/body_amh_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesAmhKabkot extends StatefulWidget {
  const SeriesAmhKabkot({super.key});

  @override
  State<SeriesAmhKabkot> createState() => _SeriesAmhKabkot();
}

class _SeriesAmhKabkot extends State<SeriesAmhKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INDIKATOR PENDIDIKAN",
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
              height: screenHeight * 0.1,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Angka Melek Huruf (AMH) Penduduk Usia 15+ Menurut Kelompok Umur Tertentu dan Kabupaten/Kota di Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 14.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySeriesAmhKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
