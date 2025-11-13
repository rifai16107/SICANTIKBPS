import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/ipm/ipg_sejateng/body_series_ipgkabkot.dart';
import 'package:flutter/material.dart';

class SeriesIpgkabkot extends StatefulWidget {
  const SeriesIpgkabkot({super.key});

  @override
  State<SeriesIpgkabkot> createState() => _SeriesIpgkabkot();
}

class _SeriesIpgkabkot extends State<SeriesIpgkabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "[IPG] IPM Menurut Jenis Kelamin",
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
              height: screenHeight * 0.088,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "[IPG] Indek Pembangunan Manusia (IPM) Kabupaten/Kota di Jawa Tengah Menurut Jenis Kelamin",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesIpgKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
