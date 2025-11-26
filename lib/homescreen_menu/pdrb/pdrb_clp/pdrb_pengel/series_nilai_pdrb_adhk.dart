import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/body_series_nilai_pdrb_adhk.dart';
import 'package:flutter/material.dart';

class SeriesPdrbAdhk extends StatefulWidget {
  const SeriesPdrbAdhk({super.key});

  @override
  State<SeriesPdrbAdhk> createState() => _SeriesPdrbAdhk();
}

class _SeriesPdrbAdhk extends State<SeriesPdrbAdhk> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDRB PENGELUARAN (ADHK)",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.white,
          ),
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
              height: screenHeight * 0.1,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "PDRB Kabupaten Cilacap Atas Dasar Harga Konstan (2010) Menurut Komponen Pengeluaran (Milyar Rupiah)",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPdrbPengelAdhk(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
