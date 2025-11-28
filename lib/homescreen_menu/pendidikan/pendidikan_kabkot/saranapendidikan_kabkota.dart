// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_tk/series_jumlahtk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ra/series_jumlahra_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_sd/series_jumlahsd_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_mi/series_jumlahmi_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_smp/series_jumlahsmp_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_mts/series_jumlahmts_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_sma/series_jumlahsma_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_smk/series_jumlahsmk_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ma/series_jumlahma_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_pt/series_jumlahpt_kabkot.dart';
import 'package:bps_cilacap/homescreen_menu/pendidikan/pendidikan_kabkot/sarped_kabkot_ptag/series_jumlahptag_kabkot.dart';
import 'package:flutter/material.dart';

class saranapendidikanKabkota extends StatefulWidget {
  const saranapendidikanKabkota({Key? key}) : super(key: key);

  @override
  State<saranapendidikanKabkota> createState() =>
      _saranapendidikanKabkotaState();
}

class _saranapendidikanKabkotaState extends State<saranapendidikanKabkota> {
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
          'SARANA PENDIDIKAN',
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
                              "Pendidikan",
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
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
                              style: TextStyle(fontWeight: FontWeight.bold),
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
              flex: 3,
              fit: FlexFit.tight,
              child: Column(
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Container(
                      //height: 0.25 * screenHeight,
                      color: Colors.black,
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 5,
                          ),
                          child: Text(
                            "Jumlah Sekolah, Guru dan Murid Menurut Jenjang Pendidikan dan Kabupaten/Kota di Jawa Tengah",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahtkKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid TK Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahrakKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid RA Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahsdKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid SD Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahmiKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid MI Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahsmpKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid SMP Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahmtsKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid MTs Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahsmaKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid SMA Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahsmkKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid SMK Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahmaKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Sekolah, Guru dan Murid MA Menurut Kabupaten/Kota Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahptKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Perguruan Tinggi, Dosen dan Mahasiswa di Bawah Kemendikbudristek Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
            Card(
              elevation: 10,
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
                      child: const SeriesJumlahptagKabkot(),
                      direction: AxisDirection.left,
                    ),
                  );
                },
                splashColor: Colors.blueGrey,

                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/daerah/logo_jateng.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.09,
                        height: screenHeight * 0.05,
                      ),
                      const SizedBox(width: 2),
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.06,
                        child: Text(
                          'Jumlah Perguruan Tinggi, Dosen dan Mahasiswa di bawah Kemenag Di Jawa Tengah',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.5,
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
