import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_kegiatan/body_nakerkegiatan_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerKegiatanKabkot extends StatefulWidget {
  const SeriesNakerKegiatanKabkot({super.key});

  @override
  State<SeriesNakerKegiatanKabkot> createState() =>
      _SeriesNakerKegiatanKabkot();
}

class _SeriesNakerKegiatanKabkot extends State<SeriesNakerKegiatanKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("PENDUDUK BEKERJA", style: TextStyle(fontSize: 16)),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: [
          Container(
            height: 65,
            color: Colors.black,
            child: const Column(
              children: [
                Text(
                  ' Penduduk Usia 15+ yang Bekerja, Menganggur dan Bukan Angkatan Kerja Menurut Kabupaten/Kota dan Lapangan Pekerjaan Utama di Provinsi Jawa Tengah ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'geser kolom berisi data ke kiri untuk melihat isian kolom lainnya',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
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
                  child: BodyNakerKabkotKegiatan(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
