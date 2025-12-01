import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pertanian/pertanian_cilacap/body_seriesternak.dart';
import 'package:flutter/material.dart';

class SeriesTernak extends StatefulWidget {
  const SeriesTernak({super.key});

  @override
  State<SeriesTernak> createState() => _SeriesTernak();
}

class _SeriesTernak extends State<SeriesTernak> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TERNAK DAN UNGGAS",
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
              height: screenHeight * 0.09,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 2),
                  child: Text(
                    "Populasi Ternak Besar, Sedang, Kecil dan Populasi Unggas di Kabupaten Cilacap (Ekor)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 1,
                child: const BodySeriesTernak(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
