import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_upahburuh/body_series_nakerupahburuh_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerkabkotUpah extends StatefulWidget {
  const SeriesNakerkabkotUpah({super.key});

  @override
  State<SeriesNakerkabkotUpah> createState() => _SeriesNakerkabkotUpah();
}

class _SeriesNakerkabkotUpah extends State<SeriesNakerkabkotUpah> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "UPAH BURUH DI JATENG",
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
              height: screenHeight * 0.099,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Rata-Rata Upah Buruh/Karyawan/Pegawai Sebulan Menurut Jenis Kelamin dan Kabupaten/Kota di Provinsi Jawa Tengah (Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesNakerkabkotUpah(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
