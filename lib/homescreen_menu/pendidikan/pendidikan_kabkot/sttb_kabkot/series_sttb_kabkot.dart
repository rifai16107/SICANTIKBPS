import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sttb_kabkot/body_sttb_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesSttbKabkot extends StatefulWidget {
  const SeriesSttbKabkot({super.key});

  @override
  State<SeriesSttbKabkot> createState() => _SeriesSttbKabkot();
}

class _SeriesSttbKabkot extends State<SeriesSttbKabkot> {
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
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
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
                    "Persentase Penduduk Usia 15+ Menurut Pendidikan Tertinggi yang Ditamatkan dan Kabupaten/Kota di Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 14.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySeriesSttbKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
