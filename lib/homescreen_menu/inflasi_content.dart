// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_bulanan_yony.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_inflasi.dart';
import 'package:bps_cilacap/homescreen_menu/inflasi/series_inflasi_kota.dart';
import 'package:bps_cilacap/restAPI/repository_inflasi.dart';
import 'package:flutter/material.dart';

class inflasiContent extends StatefulWidget {
  const inflasiContent({Key? key}) : super(key: key);

  @override
  State<inflasiContent> createState() => _inflasiContentState();
}

RepositoryInflasi repositoryinflasi = RepositoryInflasi();

class _inflasiContentState extends State<inflasiContent> {
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
          'INFLASI',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
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
                              "Inflasi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Column(
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
            Flexible(
              child: Container(
                height: 0.1 * screenHeight,
                color: Colors.black,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    child: Text(
                      "Inflasi Kota Cilacap dan 8 (Delapan) Kota Pantauan Inflasi Lainnya Di Jawa Tengah",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(height: 20, color: Colors.transparent),
            ),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesBulanan(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'IHK dan Inflasi Kota Cilacap Menurut Kelompok Pengeluaran',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 3, color: Colors.transparent),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesBulananYony(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Inflasi Y on Year dan Andil Inflasi Year on Year Kota Cilacap Menurut Kelompok Pengeluaran',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 3, color: Colors.transparent),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesInflasi(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_cilacap.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Series IHK dan Inflasi Kota Cilacap',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 3, color: Colors.transparent),
            Card(
              elevation: 20,
              color: const Color.fromRGBO(236, 138, 20, 0.882),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesInflasiKota(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/daerah/logo_jateng.png',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.12,
                          height: screenHeight * 0.08,
                        ),
                        const SizedBox(width: 2),
                        Container(
                          alignment: Alignment.center,
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.10,
                          child: Text(
                            'Inflasi 9 (Sembilan) Kota Di Jawa Tengah',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.5,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 3, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection direction;

  CustomPageRoute({required this.child, this.direction = AxisDirection.left})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        reverseTransitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, animation, secondaryAnimation) => child,
      );

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => SlideTransition(
    position: Tween<Offset>(
      begin: getBeginOffset(),
      end: Offset.zero,
    ).animate(animation),
    child: child,
  );
  Offset getBeginOffset() {
    switch (direction) {
      case AxisDirection.up:
        return const Offset(0, 1);
      case AxisDirection.down:
        return const Offset(0, -1);
      case AxisDirection.right:
        return const Offset(-1, 0);
      case AxisDirection.left:
        return const Offset(1, 0);
    }
  }
}
