import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/hasil_skd/hasil_skd_kabkottrw/body_skdkabkottrw.dart';
import 'package:flutter/material.dart';

class SeriesSKDKabkotTrw extends StatefulWidget {
  const SeriesSKDKabkotTrw({super.key});

  @override
  State<SeriesSKDKabkotTrw> createState() => _SeriesSKDKabkotTrw();
}

class _SeriesSKDKabkotTrw extends State<SeriesSKDKabkotTrw> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hasil SKD Triwulanan Kab/Kota Jateng",
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
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Container(
            height: 80,
            color: Colors.black,
            child: const Column(
              children: [
                Text(
                  'Hasil Survei Kebutuhan Data (SKD) Triwulanan\n'
                  'Pada Pelayanan Statistik Terpadu (PST)\n'
                  'BPS Kabupaten/Kota di Jawa Tengah',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'geser kolom berisi data ke kiri untuk melihat isian kolom lainnya',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            height: screenHeight * 0.87,
            width: screenWidth * 1,
            child: const Column(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 24,
                  child: BodySkdKabkotTrw(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
