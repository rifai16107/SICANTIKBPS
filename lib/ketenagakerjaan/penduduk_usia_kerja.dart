import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/body_puk.dart';
import 'package:flutter/material.dart';

class PendudukUsiaKerja extends StatefulWidget {
  const PendudukUsiaKerja({super.key});

  @override
  State<PendudukUsiaKerja> createState() => _PendudukUsiaKerjaState();
}

class _PendudukUsiaKerjaState extends State<PendudukUsiaKerja> {
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
          "PERKEMBANGAN PUK",
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
              height: screenHeight * 0.11,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    "Persentase Penduduk Usia Kerja/PUK (15+ tahun) Kabupaten Cilacap menurut Kegiatan dan Jenis Kelamin",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.87,
                width: screenWidth,
                child: const BodyPuk(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
