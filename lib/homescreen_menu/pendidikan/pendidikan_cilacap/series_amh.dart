import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_cilacap/body_amh.dart';
import 'package:flutter/material.dart';

class SeriesAmh extends StatefulWidget {
  const SeriesAmh({super.key});

  @override
  State<SeriesAmh> createState() => _SeriesAmh();
}

class _SeriesAmh extends State<SeriesAmh> {
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
              height: screenHeight * 0.075,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Angka Melek Huruf (AMH) Penduduk Usia 15+ Menurut Kelompok Umur di Kabupaten Cilacap",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySeriesAmh(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
