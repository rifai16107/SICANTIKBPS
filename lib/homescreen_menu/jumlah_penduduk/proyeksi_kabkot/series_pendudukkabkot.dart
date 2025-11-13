import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/proyeksi_kabkot/body_series_pendudukkabkot.dart';
import 'package:flutter/material.dart';

class SeriesPddkKabkot extends StatefulWidget {
  const SeriesPddkKabkot({super.key});

  @override
  State<SeriesPddkKabkot> createState() => _SeriesPddkKabkot();
}

class _SeriesPddkKabkot extends State<SeriesPddkKabkot> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PENDUDUK KABUPATEN/KOTA",
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(child: Icon(BackIcons.circle_arrow, size: 40)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Proyeksi Penduduk",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Column(
                              children: [
                                Text(
                                  "   Proyeksi Penduduk merupakan suatu metode untuk memperkirakan/memproyeksikan jumlah penduduk berdasarkan hasil Sensus Penduduk dan/atau Hasil Survei Penduduk Antar Sensus (SUPAS). Data proyeksi digunakan untuk memenuhi ketersedian data penduduk ketika tidak ada sensus yang dilakukan pada tahun tersebut.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Column(
                              children: [
                                Text(
                                  "   Proyeksi penduduk biasanya dihitung untuk 10 tahun ke depan, sampai data penduduk hasil Sensus Penduduk berikutnya telah tersedia.",
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: const Icon(Icons.info_outlined),
          ),
        ],
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
                    "Penduduk Jawa Tengah Menurut Kabupaten/Kota (Hasil Sensus Penduduk dan Proyeksi Penduduk)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesPddkKabkot(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
