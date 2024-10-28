import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/pdrb_pengel/body_series_dist_pdrb.dart';
import 'package:flutter/material.dart';

class SeriesDistPdrb extends StatefulWidget {
  const SeriesDistPdrb({super.key});

  @override
  State<SeriesDistPdrb> createState() => _SeriesDistPdrb();
}

class _SeriesDistPdrb extends State<SeriesDistPdrb> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DISTRIBUSI PDRB PENGELUARAN",
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
                    "Distribusi PDRB Kabupaten Cilacap Atas Dasar Harga Berlaku Menurut Komponen Pengeluaran (persen)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPdrbPengelDislain(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
