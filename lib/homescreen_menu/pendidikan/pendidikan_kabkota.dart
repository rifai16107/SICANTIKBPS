// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/apm_apk_kabkot/series_apm_apk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/aps_kabkot/series_apsek_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/parsek_kabkot/series_parsek_kabkot.dart';
import 'package:bps_cilacap/restAPI/repository_pendidikan_apm_apk.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/amh_kabkot/series_amh_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sttb_kabkot/series_sttb_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/saranapendidikan_kabkota.dart';
import 'package:flutter/material.dart';

class pendidikanKabkota extends StatefulWidget {
  const pendidikanKabkota({Key? key}) : super(key: key);

  @override
  State<pendidikanKabkota> createState() => _pendidikanKabkotaState();
}

RepositoryApmApk repositoryapmapk = RepositoryApmApk();

class _pendidikanKabkotaState extends State<pendidikanKabkota> {
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
          'INDIKATOR PENDIDIKAN',
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
                              "PENDIDIKAN",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Pendidikan merupakan salah satu komponen penting dalam merencanakan pembangunan ataupun melakukan evaluasi pembangunan yang telah dilaksanakan. Indikator Pendidikan (yaitu Harapan Lama Sekolah/HLS dan Rata-rata Lama Sekolah/RLS) juga merupakan salah satu komponen yang digunakan dalam menghitung Indeks Pembangunan Manusia (IPM). Indikator pendidikan lainnya yang sering digunakan dalam mengukur pencapaian kemajuan dibidang pendidikan diantaranya adalah Angka Partisipasi Sekolah (APS), Angka Partisipasi Murni (APM), Angka PArtisipasi Kasar (APK), Angka Melek Huruf (AMH), Pendidikan yang ditamatkan dll.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Divider(),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    "BEBERAPA KONSEP PADA STATISTIK PENDIDIKAN",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                const Text(
                                  "   APM, APK, APS dihitung pada setiap jenjang pendidikan dengan maksud untuk melihat sejauh mana partisipasi sekolah pada setiap jenjang pendidikan sehingga gambaran umum kontinuitas pendidikan pada setiap jenjang dapat diamati. Angka Partisipasi Sekolah ini disisi lain selain terkait dengan kesadaran masyarakat serta kemampuannya mengikuti pendidikan pada suatu jenjang (--kemampuan secara edukasional ataupun finasial-) juga sangat terkait dengan ketersedian fasilitas atau sarana pendidikan di suatu daerah.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Konsep Penghitungan Angka Melek Huruf (AMH)",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(0),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Angka Melek Huruf dihitung berdasarkan jumlah penduduk yang bisa membaca dan menulis dibagi dengan banyaknya jumlah penduduk. Dengan asumsi seseorang memulai pendidikan pada usia 7 tahun atau tamat SD pada usia 12 tahun, AMH biasanya dihitung pada kelompok penduduk usia 10 tahun ke atas atau 15 tahun ke atas.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Text(
                                  "   Secara umum penghitungan AMH adalah sebagai berikut :",
                                ),
                                Image.asset(
                                  './assets/images/modal/amh_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2.5,
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Konsep Penghitungan APM, APK dan APS",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   APM dan APK dihitung menurut jenjang pendidikan, dengan mengacu pada usia sekolah yang berlaku di Indonesia yaitu SD (7-12 tahun), SLTP (13-15 tahun), SLTA (16-18 tahun) serta Perguruan Tinggi/PT (19-24 tahun).",
                                  textAlign: TextAlign.justify,
                                ),
                                const Text(
                                  "   Angka Partisipasi Murni (APM) dihitung dengan rumusan sebagai berikut:",
                                ),
                                Image.asset(
                                  './assets/images/modal/apm_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2.5,
                                ),
                                const Text(
                                  "   Sedangkan Angka Partisipasi Kasar (APK) dihitung menggunakan:",
                                ),
                                Image.asset(
                                  './assets/images/modal/apk_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2.5,
                                ),
                                const Text(
                                  "   Dan Angka Partisipasi Sekolah (APS) dihitung berdasarkan rumus:",
                                ),
                                Image.asset(
                                  './assets/images/modal/aps_modal.jpeg',
                                  alignment: Alignment.center,
                                  scale: 2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Partisipasi Sekolah",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   Partisipasi sekolah menunjukkan persentase penduduk yang tercatat dan aktif bersekolah pada jenjang pendidikan formal atau yang setara (Paket A/B/C). Tidak/Belum pernah bersekolah adalah seseorang yang sama sekali belum pernah menduduki/terdaftar pada suatu jenjang pendidikan. Sementara yang dimaksud dengan Tidak Bersekolah Lagi adalah seseorang yang pernah tercatat aktif/terdaftar pada suatu jenjang pendidikan tertentu tetapi saat ini sudah tidak bersekolah lagi, bisa karena lulus/tamas sekolah atau bisa juga karena putus sekolah.",
                                  textAlign: TextAlign.justify,
                                ),
                                const Text(
                                  "   Banyaknya fasilitas pendidikan/jumlah sekolah, guru dan murid dihitung pada setiap jenis jenjang pendidikan baik pendidikan umum, berbasis keagamaan ataupun pendidikan kejuruan yang diselenggarakan oleh Negeri ataupun Swasta.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Pendidikan Tertinggi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "Pendidikan tertinggi yang ditamatkan: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(0),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "   adalah jenjang pendidikan tertinggi yang ditamatkan oleh seseorang, ditandai dengan sertifikat/ijazah.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "SD/MI: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "meliputi Sekolah Dasar, Madrasah Ibtidaiyah dan sederajat.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "SMP/MTs: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "meliputi jenjang pendidikan SMP Umum, Madrasah Tsanawiyah, SMP Kejuruan dan sederajat.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "SM/MA: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "meliputi jenjang pendidikan Sekolah Menengah Atas (SMA), Sekolah Menengah Kejuruan (SMK), Madrasah Aliyah (MA) dan sederajat.",
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 5,
                              bottom: 2,
                            ),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "Perguruan Tinggi (PT): ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                const Text(
                                  "meliputi jenjang pendidikan pada Perguruan Tinggi baik Diploma I/II/III, DIV/S1, S2, S3 dan sederajat.",
                                  textAlign: TextAlign.justify,
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
              flex: 1,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 100,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Indikator Pendidikan Kabupaten/Kota di Jawa Tengah",
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
                    child: Container(height: 100, color: Colors.transparent),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesApmApkKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Angka Partisipasi Murni (APM) dan Angka Partisipasi Kasar (APK)",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesApmApseKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Angka Partisipasi Sekolah (APS) Menurut Kelompok Usia Sekolah",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesSttbKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Penduduk Usia 15+ Menurut Pendidikan Tertinggi Yang Ditamatkan",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesAmhKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Angka Melek Huruf (AMH) Penduduk Usia 15+ Menurut Kelompok Umur",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const SeriesParsekKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Persentase Penduduk Usia 5+ Menurut Partisipasi Sekolah",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll<Color>(
                    Color.fromRGBO(10, 100, 31, 0.886),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CustomPageRoute(
                      child: const saranapendidikanKabkota(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                child: SizedBox(
                  width: screenWidth,
                  height: screenHeight * 0.08,
                  child: Row(
                    children: [
                      const Flexible(
                        flex: 16,
                        fit: FlexFit.tight,
                        child: Text(
                          "Banyaknya Sarana Pendidikan Menurut Jenjang Pendidikan",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Icon(Icons.arrow_right),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(height: 5, color: Colors.transparent),
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
