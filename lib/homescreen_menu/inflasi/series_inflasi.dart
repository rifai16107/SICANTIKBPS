// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/body_seriesinflasi.dart';
import 'package:flutter/material.dart';

class SeriesInflasi extends StatefulWidget {
  const SeriesInflasi({super.key});

  @override
  State<SeriesInflasi> createState() => _SeriesInflasi();
}

class _SeriesInflasi extends State<SeriesInflasi> {
  @override
  Widget build(BuildContext context) {
    final screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SERIES INFLASI KOTA CILACAP",
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
                              "Inflasi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Text(
                                  "   Inflasi merupakan indikator perkembangan harga barang dan jasa yang dikonsumsi masyarakat. Barang dan jasa tersebut jumlahnya sangat banyak, namun 'keranjang' barang dan jasa yang digunakan untuk menghitung konsumsi rumah tangga seluruhnya berjumlah 306 komoditas (untuk Kota Cilacap). Angka tersebut merupakan hasil Survei Biaya Hidup (SBH) tahur 2018 yang merupakan patokan untuk menyususn inflasi.",
                                  textAlign: TextAlign.justify,
                                ),
                                Text(
                                  "   Inflasi dihitung berdasarkan Indeks Harga Konsumen (IHK) dengan menggunakan rumus Laspeyres yang dimodifikasi (Modified Laspeyres). Rumus tersebut mengacu pada manual Organisasi Buruh Dunia (International Labor Organization/ILO)",
                                ),
                                Text(
                                  "   Pengelompokkan IHK berdasarkan pada klasifikasi internasiona baku yang tertuang dalam Classification of Individual Consumption According to Purpose (COICOP). Mulai Januari 2020, COICOP yang digunakanan adalah COICOP 2018 yang dimodifikasi dari 13 divisi COICOP menjadi 11 kelompok IHK.",
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Inflasi IHK atau Inflasi Umum (Headline Inflation)",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Adalah inflasi seluruh barang/jasa yang dimonitor harganya secara periodik. Inflasi umum adalah komposit dari inflasi inti inflasi administered prices, dan inflasi volatile goods.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Text(
                                  "   Secara umum penghitungan inflasi dari IHK mengikuti rumus berikut :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_1.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Sebagai contoh, untuk menghitung inflasi Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_2.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Inflasi Tahunan dihitung secara titik per titik (point-to-point) dalam skala bulanan maupun tahunan",
                                ),
                                const Text(
                                  "   Sebagai contoh, untuk menghitung inflasi tahun kalender pada Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_3.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                                const Text(
                                  "   Sedangkan untuk menghitung inflasi tahun ke tahun pada Bulan Juli 2020 digunakan rumus :",
                                ),
                                Image.asset(
                                  './assets/images/modal/inflasi_modal_4.jpeg',
                                  alignment: Alignment.center,
                                  scale: 3,
                                ),
                              ],
                            ),
                          ),
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
              height: screenHeight * 0.08,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    'Series IHK dan Inflasi Kota Cilacap\n'
                    'Dalam 3 (tiga) Tahun terakhir',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.85,
                child: const BodySeriesInflasi(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
