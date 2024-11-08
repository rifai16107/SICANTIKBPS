import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/kabkot_formalin/body_series_nakerformalin_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesNakerkabkotFormalin extends StatefulWidget {
  const SeriesNakerkabkotFormalin({super.key});

  @override
  State<SeriesNakerkabkotFormalin> createState() =>
      _SeriesNakerkabkotFormalin();
}

class _SeriesNakerkabkotFormalin extends State<SeriesNakerkabkotFormalin> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FORMAL DAN INFORMAL",
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
              height: screenHeight * 0.090,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Rata-Rata Upah/Gaji Bersih Sebulan Pekerja Formal dan Informal Menurut Kabupaten/Kota di Provinsi Jawa Tengah (Ribuan Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesNakerkabkotFormalin(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
