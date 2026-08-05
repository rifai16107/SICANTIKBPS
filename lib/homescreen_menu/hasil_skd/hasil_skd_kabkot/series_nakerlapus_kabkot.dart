import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_lapus/body_nakerlapus_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerLapusKabkot extends StatefulWidget {
  const SeriesNakerLapusKabkot({super.key});

  @override
  State<SeriesNakerLapusKabkot> createState() => _SeriesNakerLapusKabkot();
}

class _SeriesNakerLapusKabkot extends State<SeriesNakerLapusKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("PENDUDUK BEKERJA", style: TextStyle(fontSize: 16, color: Colors.white)),
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
            height: 70,
            color: Colors.black,
            child: const Column(
              children: [
                Text(
                  ' Penduduk Usia 15+ yang Bekerja Menurut Kabupaten/Kota dan Lapangan Pekerjaan Utama di Provinsi Jawa Tengah ',
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
                  child: BodyNakerKabkotLapus(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
