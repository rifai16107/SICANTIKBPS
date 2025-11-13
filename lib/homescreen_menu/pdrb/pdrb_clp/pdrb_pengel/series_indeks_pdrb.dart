import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pdrb/pdrb_clp/pdrb_pengel/body_series_indeks_pdrb.dart';
import 'package:flutter/material.dart';

class SeriesIndeksImplisit extends StatefulWidget {
  const SeriesIndeksImplisit({super.key});

  @override
  State<SeriesIndeksImplisit> createState() => _SeriesIndeksImplisit();
}

class _SeriesIndeksImplisit extends State<SeriesIndeksImplisit> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INDEKS IMPLISIT PDRB",
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
              height: screenHeight * 0.075,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Indeks Implisit PDRB Kabupaten Cilacap Menurut Komponen Pengeluaran (Tahun 2010=100)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesIndeksPdrb(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
