import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/perumahan/perumahan_kabkot/kabkot_rumahpenerangan/body_penerangan_kabkot.dart';
import 'package:flutter/material.dart';

class SeriesRumahpeneranganKabkot extends StatefulWidget {
  const SeriesRumahpeneranganKabkot({super.key});

  @override
  State<SeriesRumahpeneranganKabkot> createState() =>
      _SeriesRumahpeneranganKabkot();
}

class _SeriesRumahpeneranganKabkot extends State<SeriesRumahpeneranganKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INDIKATOR PERUMAHAN",
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
      body: ListView(
        padding: const EdgeInsets.all(2),
        children: [
          Container(
            height: 65,
            color: Colors.black,
            child: Column(
              children: const [
                Text(
                  ' Persentase Rumah Tangga menurut Kabupaten/Kota dan Sumber Penerangan Utama ',
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
                    )),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            height: screenHeight * 0.87,
            width: screenWidth * 1,
            child: Column(
              children: const [
                Flexible(
                  fit: FlexFit.tight,
                  flex: 24,
                  child: BodyRumahkabkotPenerangan(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
