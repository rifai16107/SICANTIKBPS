import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/body_series_laju_pdrb.dart';
import 'package:flutter/material.dart';

class SeriesLajuPdrb extends StatefulWidget {
  const SeriesLajuPdrb({super.key});

  @override
  State<SeriesLajuPdrb> createState() => _SeriesLajuPdrb();
}

class _SeriesLajuPdrb extends State<SeriesLajuPdrb> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "LAJU PDRB ADHK",
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
              height: screenHeight * 0.09,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Laju Pertumbuhan PDRB Kabupaten Cilacap Atas Dasar Harga Konstan (2010) Menurut Komponen Pengeluaran (persen)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesLajuPdrb(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
