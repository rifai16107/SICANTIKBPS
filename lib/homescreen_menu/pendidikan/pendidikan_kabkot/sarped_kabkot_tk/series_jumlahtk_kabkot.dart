import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_tk/body_jumlahtk_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesJumlahtkKabkot extends StatefulWidget {
  const SeriesJumlahtkKabkot({super.key});

  @override
  State<SeriesJumlahtkKabkot> createState() => _SeriesJumlahtkKabkot();
}

class _SeriesJumlahtkKabkot extends State<SeriesJumlahtkKabkot> {
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
              height: screenHeight * 0.11,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Jumlah Sekolah, Guru, dan Murid Taman Kanak-Kanak (TK) di Bawah Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Menurut Kabupaten/Kota di Provinsi Jawa Tengah",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight,
                child: const BodySeriesJumlahtkKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
