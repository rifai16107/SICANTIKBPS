// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/fertilitas_content.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/mortalitas_content.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/mobilitas_content.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/pendidikan_content.dart';
import 'package:bps_cilacap/homescreen_menu/sp2020_lf/longform_indikator/perumahan_content.dart';
import 'package:bps_cilacap/restAPI/repository_longform.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/format_angka.dart';
import 'package:flutter/material.dart';

class LongformContent extends StatefulWidget {
  const LongformContent({Key? key}) : super(key: key);

  @override
  _LongformContentState createState() => _LongformContentState();
}

RepositoryLongform repositorylongform = RepositoryLongform();

class _LongformContentState extends State<LongformContent> {
  @override
  Widget build(BuildContext context) {
    var screenWidth =
        MediaQuery.of(context).size.width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    var screenHeight =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HASIL PENDATAAN LONG FORM SP2020',
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
                constraints: BoxConstraints.tight(
                  Size(screenWidth, screenHeight),
                ),
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
                              "GLOSARIUM",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "KLASIFIKASI GENERASI PENDUDUK",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Klasifikasi Generasi Menurut Usia Penduduk untuk Long Form SP2020:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Post Gen Z: Lahir tahun 2013 dst, Perkiraan usia saat Long Form SP2020 adalah 0-9 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Generasi Z: Lahir tahun 1997-2012, Perkiraan usia saat Long Form SP2020 adalah 10-25 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Milenial: Lahir tahun 1981-1996, Perkiraan usia saat Long Form SP2020 adalah 26-41 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Generasi X: Lahir tahun 1965-1980, Perkiraan usia saat Long Form SP2020 adalah 42-57 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Baby Boomer: Lahir tahun 1946-1964, Perkiraan usia saat Long Form SP2020 adalah 58-76 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              top: 5,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Pre-Boomer: Lahir tahun 1945 dan sebelumnya, Perkiraan usia saat Long Form SP2020 adalah 77 tahun ke atas",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR FERTILITAS",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Total / Total Fertility Rate (TFR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Rata-rata jumlah anak yang dilahirkan hidup oleh seorang perempuan selama masa usia suburnya (15-49 tahun)",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Kasar / Crude Birth Rate (CBR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Banyaknya kelahiran hidup per 1000 penduduk pada pertengahan tahun.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kelahiran Menurut Kelompok Umur Tertentu / Age Specific Fertility Rate (ASFR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Banyaknya kelahiran selama setahun per 1000 perempuan pada kelompok umur 15-49 tahun",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR MORTALITAS",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Bayi (AKB) / Infant Mortality Rate (IMR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Banyaknya kematian bayi usia di bawah satu tahun, per 1000 kelahiran hidup pada satu tahun tertentu.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Balita (AKBa) / Under-Five Mortality Rate (U5MR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah penduduk umur 0-4 tahun (balita) yang meninggal sebelum mencapai umur tepat 5 tahun pada tahun tertentu per 1000 kelahiran hidup.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Kematian Anak / Child Mortality Rate (CMR) :",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Jumlah kematian penduduk umur 1-4 tahun pada tahun tertentu per 1.000 kelahiran hidup.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "INDIKATOR MOBILITAS",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Angka Penduduk Berstatus Migran Seumur Hidup Antar kabupaten/ kota:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Banyaknya penduduk di suatu kabupaten/kota yang lahir di kabupaten/kota lain per 100 penduduk.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Proporsi Penduduk Berstatus Migran Risen Antar kabupaten/kota:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Banyaknya penduduk umur lima tahun ke atas di suatu kabupaten/kota yang lima tahun sebelumnya bertempat tinggal di kabupaten/kota lain per 100 penduduk.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "KETAHANAN BANGUNAN",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bahan bangunan utama atap, dinding, dan lantai rumah terluas yang memenuhi syarat ketahanan bangunan, yaitu:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bahan bangunan atap berupa adalah beton, genteng, kayu/sirap, atau seng.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bahan bangunan dinding berupa tembok, plesteran anyaman bambu/kawat, kayu/papan, atau batang kayu.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                              bottom: 10,
                            ),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Bahan bangunan lantai berupa marmer/granit, keramik, parket/vinil/karpet, ubin/tegel/teraso, kayu/papan, atau semen/bata merah.",
                              textAlign: TextAlign.justify,
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
      body: FutureBuilder(
        future: repositorylongform.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isilongform = snapshot.data as List;
            return PageView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                //Fertilitas dan Mortalitas
                double tfrlfClp = double.parse(isilongform[index = 0].clp);
                double tfrlfJateng = double.parse(
                  isilongform[index = 0].jateng,
                );
                double imrlfClp = double.parse(isilongform[index = 9].clp);
                double imrlfJateng = double.parse(
                  isilongform[index = 9].jateng,
                );

                //Mobilitas
                double lifetimeClp = double.parse(isilongform[index = 12].clp);
                double risenClp = double.parse(isilongform[index = 18].clp);
                double lifetimeJateng = double.parse(
                  isilongform[index = 12].jateng,
                );
                double risenJateng = double.parse(
                  isilongform[index = 18].jateng,
                );

                //Pendidikan
                double minsltaClp =
                    double.parse(isilongform[index = 28].clp) +
                    double.parse(isilongform[index = 29].clp) +
                    double.parse(isilongform[index = 30].clp) +
                    double.parse(isilongform[index = 31].clp) +
                    double.parse(isilongform[index = 32].clp);
                double minsltaJateng =
                    double.parse(isilongform[index = 28].jateng) +
                    double.parse(isilongform[index = 29].jateng) +
                    double.parse(isilongform[index = 30].jateng) +
                    double.parse(isilongform[index = 31].jateng) +
                    double.parse(isilongform[index = 32].jateng);

                //Perumahan
                double ketahananBangunanclp = double.parse(
                  isilongform[index = 60].clp,
                );
                double ketahananBangunanjateng = double.parse(
                  isilongform[index = 60].jateng,
                );

                return Scaffold(
                  body: Column(
                    children: <Widget>[
                      SizedBox(
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.11,
                        child: const Center(
                          child: Text(
                            'HASIL PENDATAAN LONG FORM SENSUS PENDUDUK 2020 KABUPATEN CILACAP DAN JAWA TENGAH.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(42, 119, 188, 1),
                              fontFamily: 'Robo',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth,
                        child: const Center(
                          child: Text(
                            '(Scroll up/down, sentuh icon gambar atau tombol "Selengkapnya...")',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromRGBO(15, 121, 153, 1),
                              fontFamily: 'Robo',
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Divider(height: screenHeight * 0.04, thickness: 2),
                      Expanded(
                        flex: 80,
                        child: Scrollbar(
                          thickness: 4,
                          thumbVisibility: true,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                //Card 1 Fertilitas
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Card(
                                  color: Colors.blue,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Wrap(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.92,
                                        //height: screenHeight * 0.18,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 4,
                                          bottom: 4,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              " INDIKATOR FERTILITAS",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.90,
                                              height: 120,
                                              //height: screenHeight * 0.19,
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 5,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.24,
                                                    height: 100,
                                                    //height: screenHeight * 0.16,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white,
                                                        foregroundColor:
                                                            Colors.blueAccent,
                                                        side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromARGB(
                                                            255,
                                                            245,
                                                            212,
                                                            211,
                                                          ),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10.0,
                                                              ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const fertilitasContent();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/sensus/longform_sp2020_fertilitas.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 0,
                                                          top: 10,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.65,
                                                    height: screenHeight * 0.19,
                                                    child: RichText(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      text: TextSpan(
                                                        text:
                                                            'Dari hasil Pendataan Long Form SP2020 yang dilaksanakan pada tahun 2022 tercatat TFR Kabupaten Cilacap sebesar ',
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  tfrlfClp,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                '. Sementara itu TFR Jawa Tengah tercatat lebih rendah dibanding TFR Kabupaten Cilacap yaitu sebesar ',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  tfrlfJateng,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: '.',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Tombol Selengkapnya
                                            SizedBox(
                                              width: screenWidth * 0.92,
                                              height: screenHeight * 0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(
                                                      padding:
                                                          WidgetStateProperty.all<
                                                            EdgeInsets
                                                          >(
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                          ),
                                                      foregroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255,
                                                            ),
                                                          ),
                                                      backgroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              47,
                                                              118,
                                                              199,
                                                            ),
                                                          ),
                                                      shape:
                                                          WidgetStateProperty.all<
                                                            RoundedRectangleBorder
                                                          >(
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    10.0,
                                                                  ),
                                                              side: const BorderSide(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      47,
                                                                      118,
                                                                      199,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return const fertilitasContent();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      "Selengkapnya...",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //card 2 mortalitas
                                Card(
                                  color: Colors.blue,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Wrap(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.92,
                                        //height: screenHeight * 0.18,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 4,
                                          bottom: 4,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              " INDIKATOR MORTALITAS",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.90,
                                              height: 120,
                                              //height: screenHeight * 0.17,
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 10,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.65,
                                                    height: 100,
                                                    //height: screenHeight * 0.16,
                                                    child: RichText(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      text: TextSpan(
                                                        text:
                                                            'IMR Kabupaten Cilacap berdasarkan hasil Pendataan Long Form SP2020 tercatat sebesar  ',
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  imrlfClp,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                '. Angka ini lebih tinggi dibandingkan dengan angka IMR Jawa Tengah yang tercatat sebesar ',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  imrlfJateng,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: '.',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 5,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.24,
                                                    height: 100,
                                                    //height: screenHeight * 0.16,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white,
                                                        foregroundColor:
                                                            Colors.blueAccent,
                                                        side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromARGB(
                                                            255,
                                                            245,
                                                            212,
                                                            211,
                                                          ),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10.0,
                                                              ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const mortalitasContent();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/sensus/longform_sp2020_mortalitas.png',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Tombol Selengkapnya
                                            SizedBox(
                                              width: screenWidth * 0.95,
                                              height: screenHeight * 0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(
                                                      padding:
                                                          WidgetStateProperty.all<
                                                            EdgeInsets
                                                          >(
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                          ),
                                                      foregroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255,
                                                            ),
                                                          ),
                                                      backgroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              47,
                                                              118,
                                                              199,
                                                            ),
                                                          ),
                                                      shape:
                                                          WidgetStateProperty.all<
                                                            RoundedRectangleBorder
                                                          >(
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    10.0,
                                                                  ),
                                                              side: const BorderSide(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      47,
                                                                      118,
                                                                      199,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return const mortalitasContent();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      "Selengkapnya...",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //Card 3 Mobilitas
                                Card(
                                  color: Colors.blue,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Wrap(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.92,
                                        //height: screenHeight * 0.18,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 4,
                                          bottom: 4,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              " INDIKATOR MOBILITAS",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.90,
                                              height: 120,
                                              //height: screenHeight * 0.18,
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 5,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.24,
                                                    height: 100,
                                                    //height:screenHeight * 0.16,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white,
                                                        foregroundColor:
                                                            Colors.blueAccent,
                                                        side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromARGB(
                                                            255,
                                                            245,
                                                            212,
                                                            211,
                                                          ),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10.0,
                                                              ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const mobilitasContent();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/sensus/longform_sp2020_mobilitas.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 0,
                                                          top: 10,
                                                          bottom: 10,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.65,
                                                    height: 120,
                                                    //height: screenHeight * 0.20,
                                                    child: RichText(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      text: TextSpan(
                                                        text:
                                                            'Migrasi risen dan migrasi lifetime (seumur hidup) di Kabupaten Cilacap tercatat masing-masing sebesar ',
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  risenClp,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: ' dan ',
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  lifetimeClp,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                '. Sementara itu migrasi risen dan migrasi seumur hidup Provinsi Jawa Tengah masing-masing sebesar ',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  risenJateng,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: ' dan ',
                                                            style: TextStyle(
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  lifetimeJateng,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: '.',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Tombol Selengkapnya
                                            SizedBox(
                                              width: screenWidth * 0.92,
                                              height: screenHeight * 0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(
                                                      padding:
                                                          WidgetStateProperty.all<
                                                            EdgeInsets
                                                          >(
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                          ),
                                                      foregroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255,
                                                            ),
                                                          ),
                                                      backgroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              47,
                                                              118,
                                                              199,
                                                            ),
                                                          ),
                                                      shape:
                                                          WidgetStateProperty.all<
                                                            RoundedRectangleBorder
                                                          >(
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    10.0,
                                                                  ),
                                                              side: const BorderSide(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      47,
                                                                      118,
                                                                      199,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return const mobilitasContent();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      "Selengkapnya...",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //card 4 pendidikan
                                Card(
                                  color: Colors.blue,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Wrap(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.92,
                                        //height: screenHeight * 0.18,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 4,
                                          bottom: 4,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              " INDIKATOR PENDIDIKAN",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.90,
                                              height: 120,
                                              //height: screenHeight * 0.22,
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 10,
                                                          bottom: 5,
                                                          right: 0,
                                                        ),
                                                    width: screenWidth * 0.65,
                                                    height: 120,
                                                    //height: screenHeight * 0.22,
                                                    child: RichText(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      text: TextSpan(
                                                        text:
                                                            'Dari hasil Pendataan Long Form SP2020, persentase penduduk usia 15+ di Kabupaten Cilacap yang berpendidikan minimal SLTA/sederajat sebesar  ',
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  minsltaClp,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                ' persen, lebih rendah dibandingkan angka Prov. Jawa Tengah yang tercatat sebesar ',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                Format.convertTo(
                                                                  minsltaJateng,
                                                                  2,
                                                                ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: ' persen.',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 0,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.24,
                                                    height: 100,
                                                    //height: screenHeight * 0.16,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white,
                                                        foregroundColor:
                                                            Colors.blueAccent,
                                                        side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromARGB(
                                                            255,
                                                            245,
                                                            212,
                                                            211,
                                                          ),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10.0,
                                                              ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const pendidikanContent();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/sensus/longform_sp2020_pendidikan.png',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Tombol Selengkapnya
                                            const Divider(
                                              height: 5,
                                              color: Colors.transparent,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.92,
                                              height: screenHeight * 0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(
                                                      padding:
                                                          WidgetStateProperty.all<
                                                            EdgeInsets
                                                          >(
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                          ),
                                                      foregroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255,
                                                            ),
                                                          ),
                                                      backgroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              47,
                                                              118,
                                                              199,
                                                            ),
                                                          ),
                                                      shape:
                                                          WidgetStateProperty.all<
                                                            RoundedRectangleBorder
                                                          >(
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    10.0,
                                                                  ),
                                                              side: const BorderSide(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      47,
                                                                      118,
                                                                      199,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return const pendidikanContent();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      "Selengkapnya...",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //Card 5 Perumahan
                                Card(
                                  color: Colors.blue,
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Wrap(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                            0.92,
                                        //height: screenHeight * 0.18,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(10),
                                            bottomLeft: Radius.circular(10),
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          ),
                                        ),
                                        margin: const EdgeInsets.only(
                                          left: 4,
                                          bottom: 4,
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                          vertical: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              " KETAHAHAN BANGUNAN",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(
                                              width: screenWidth * 0.90,
                                              height: 120,
                                              //height: screenHeight * 0.21,
                                              color: Colors.transparent,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 5,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.24,
                                                    height: 100,
                                                    //height: screenHeight * 0.16,
                                                    child: ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Colors.white,
                                                        foregroundColor:
                                                            Colors.blueAccent,
                                                        side: const BorderSide(
                                                          width: 1.5,
                                                          color: Color.fromARGB(
                                                            255,
                                                            245,
                                                            212,
                                                            211,
                                                          ),
                                                        ),
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                10.0,
                                                              ),
                                                        ),
                                                        padding:
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) {
                                                              return const perumahanContent();
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/sensus/longform_sp2020_perumahan.png',
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    padding:
                                                        const EdgeInsets.only(
                                                          left: 5,
                                                          top: 10,
                                                          bottom: 5,
                                                          right: 5,
                                                        ),
                                                    width: screenWidth * 0.65,
                                                    height: 120,
                                                    //height: screenHeight * 0.21,
                                                    child: RichText(
                                                      textAlign:
                                                          TextAlign.justify,
                                                      text: TextSpan(
                                                        text: 'Sebanyak ',
                                                        style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 12,
                                                        ),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: Format.convertTo(
                                                              ketahananBangunanclp,
                                                              2,
                                                            ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text:
                                                                ' persen rumah tangga di Kabupaten Cilacap bangunan tempat tinggalnya telah memenuhi syarat ketahanan bangunan. Sementara di Jawa Tengah persentase yang memenuhi syarat ketahanan bangunan mencapai ',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: Format.convertTo(
                                                              ketahananBangunanjateng,
                                                              2,
                                                            ),
                                                            style: const TextStyle(
                                                              fontFamily:
                                                                  'Nexa',
                                                              color:
                                                                  Color.fromARGB(
                                                                    255,
                                                                    26,
                                                                    11,
                                                                    230,
                                                                  ),
                                                              fontSize: 15,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .italic,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          const TextSpan(
                                                            text: ' persen.',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            // Tombol Selengkapnya
                                            const Divider(
                                              height: 5,
                                              color: Colors.transparent,
                                            ),
                                            SizedBox(
                                              width: screenWidth * 0.92,
                                              height: screenHeight * 0.04,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  TextButton(
                                                    style: ButtonStyle(
                                                      padding:
                                                          WidgetStateProperty.all<
                                                            EdgeInsets
                                                          >(
                                                            const EdgeInsets.all(
                                                              5,
                                                            ),
                                                          ),
                                                      foregroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255,
                                                            ),
                                                          ),
                                                      backgroundColor:
                                                          WidgetStateProperty.all<
                                                            Color
                                                          >(
                                                            const Color.fromARGB(
                                                              255,
                                                              47,
                                                              118,
                                                              199,
                                                            ),
                                                          ),
                                                      shape:
                                                          WidgetStateProperty.all<
                                                            RoundedRectangleBorder
                                                          >(
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                    10.0,
                                                                  ),
                                                              side: const BorderSide(
                                                                color:
                                                                    Color.fromARGB(
                                                                      255,
                                                                      47,
                                                                      118,
                                                                      199,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) {
                                                            return const perumahanContent();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: const Text(
                                                      "Selengkapnya...",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(height: screenHeight * 0.04),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text("Database Error");
          }
          return const Center(child: CircularProgressIndicator(strokeWidth: 1));
        },
      ),
    );
  }
}

WidgetStateProperty<Color> getColor(Color white, Color red) {
  getColor(Set<WidgetState> states) {
    if (states.contains(WidgetState.hovered)) {
      return red;
    } else {
      return white;
    }
  }

  return WidgetStateProperty.resolveWith(getColor);
}
