import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk/registrasi/body_series_regkelum.dart';
import 'package:flutter/material.dart';

class SeriesRegistrasiKelum extends StatefulWidget {
  const SeriesRegistrasiKelum({super.key});

  @override
  State<SeriesRegistrasiKelum> createState() => _SeriesRegistrasiKelum();
}

class _SeriesRegistrasiKelum extends State<SeriesRegistrasiKelum> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "REGISTRASI PENDUDUK",
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
                              "Penduduk Hasil Registrasi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Column(
                              children: [
                                Text(
                                  "   Registrasi Penduduk merupakan salah satu sumber data kependudukan yang didasarkan pada catatan registrasi penduduk pada Ditjen Kependudukan dan Catatan Sipil.",
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
                                  "   Registrasi Penduduk merupakan rekapitulasi dari penduduk yang terdaftar pada sistem administrasi kependudukan di Kemendagri c.q. Ditjen Dukcapil, dalam Satuan Kerja Pemerintah Daerah Kabupaten Cilacap, OPD yang menangani masalah kependudukan adalah Dinas Kependudukan dan Pencatatan Sipil (Disdukcapil) .",
                                  textAlign: TextAlign.justify,
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
                    "Penduduk Kabupaten Cilacap Menurut Kelompok Umur (Hasil Registrasi Penduduk)",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.95,
                child: const BodySeriesRegistrasiKelum(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
