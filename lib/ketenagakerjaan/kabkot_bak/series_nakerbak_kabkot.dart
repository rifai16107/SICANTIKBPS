import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_bak/body_nakerbak_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerBakkabkot extends StatefulWidget {
  const SeriesNakerBakkabkot({super.key});

  @override
  State<SeriesNakerBakkabkot> createState() => _SeriesNakerBakkabkot();
}

class _SeriesNakerBakkabkot extends State<SeriesNakerBakkabkot> {
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
          "BUKAN ANGKATAN KERJA (BAK)",
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
        padding: const EdgeInsets.all(2),
        children: [
          Container(
            height: 74,
            color: Colors.black,
            child: const Column(
              children: [
                Text(
                  ' Penduduk Usia 15+ yang Bukan Angkatan Kerja Menurut Kabupaten/Kota dan Kegiatan Utama di Provinsi Jawa Tengah ',
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
                  child: BodyNakerKabkotBak(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
